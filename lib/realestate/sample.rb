#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'

state= "Maryland"
@doc= Nokogiri::HTML(open('https://www.trulia.com/home_prices/' + state + '/',"User-Agent" => "Mozilla/5.0 (Android 4.4; Mobile; rv:41.0) Gecko/41.0 Firefox/41.0"))
 @doc.css("td")[4]

puts @doc.css("td")[11].text

puts @doc.css("td")[12].text
