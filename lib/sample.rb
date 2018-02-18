#!/usr/bin/env ruby
require 'open-uri'
require 'nokogiri'
require 'pry'
state= "Maryland"
html = open('https://www.trulia.com/home_prices/' + state + '/')
doc = Nokogiri::HTML(html)
county= "Montgomery"
#puts doc.css("td").length-5
doc.css("td").each_with_index do |link,i|
  if link.text != nil
      if link.text.include?(county) || link.text.include?(county.upcase)
    puts doc.css("td")[i+1].text
    end
  end
end
