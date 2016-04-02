require 'open-uri'
require 'robo_ed/version'

module RoboEd
  ENDPOINT = 'http://www.ed.conpet.gov.br/mod_perl/bot_gateway.cgi?server=0.0.0.0%3A8085&charset_post=utf-8&charset=utf-8&pure=1&js=0&tst=1&msg='
  TRUE_VALUES = [true, 1, '1', 't', 'T', 'true', 'TRUE']

  @@strip_tags = true

  def self.strip_tags
    @@strip_tags
  end

  def self.strip_tags= option
    @@strip_tags = TRUE_VALUES.include?(option)
  end

  def self.setup(&block)
    yield self
  end

  def self.ask question
    question = question.to_s
    raise 'Question cannot be blank!' if question.empty?

    request = open(ENDPOINT + URI.encode(question))

    answer = request.read.strip
    answer = answer.gsub(/<[^>]*>/, '') if self.strip_tags

    return answer
  end
end
