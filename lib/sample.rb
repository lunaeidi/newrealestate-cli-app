#!/usr/bin/env ruby
require 'open-uri'
require 'nokogiri'
require 'pry'
state= "California"
html = open('https://www.trulia.com/home_prices/' + state + '/',"User-Agent" => "Mozilla/5.0 (Android 4.4; Mobile; rv:41.0) Gecko/41.0 Firefox/41.0")#no conversion of nil into string
doc = Nokogiri::HTML(html)

puts doc.css("td")[4]
