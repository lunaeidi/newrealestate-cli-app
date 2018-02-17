#!/usr/bin/env ruby
require 'open-uri'
require 'nokogiri'
require 'pry'
html = open('https://www.trulia.com/home_prices/Maryland/')
doc = Nokogiri::HTML(html)
doc.css("td")
binding.pry
