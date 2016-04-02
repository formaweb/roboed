require 'open-uri'
require 'robo_ed/version'

module RoboEd
  ENDPOINT = 'http://www.ed.conpet.gov.br/mod_perl/bot_gateway.cgi?server=0.0.0.0%3A8085&charset_post=utf-8&charset=utf-8&pure=1&js=0&tst=1&msg='

  class << self

    def ask question
      raise 'Question cannot be blank!' if question.blank?

      request = open(::ENDPOINT + URI.encode(question))
      if request.status[0] >= 200 && request.status[0] < 400
        answer = request.read.gsub(/\s+/, '').strip

        return answer
      else
        raise "Error to proccess this request! (HTTP #{request.status[0]})"
      end
    end

  end
end
