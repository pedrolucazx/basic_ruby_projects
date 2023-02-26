require 'nokogiri'
require 'net/http'

uri = URI.parse('http://example.com')
response = Net::HTTP.get_response(uri)

doc = Nokogiri::HTML(response.body)
paragraphs = doc.css('p')

paragraphs.each do |p|
  puts p.text
end
