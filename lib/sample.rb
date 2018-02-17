#!/usr/bin/env ruby
require 'open-uri'
require 'nokogiri'
require 'pry'
state= "Maryland"
html = open('https://www.trulia.com/home_prices/' + state + '/')
doc = Nokogiri::HTML(html)

puts doc.css("td")
#binding.pry
