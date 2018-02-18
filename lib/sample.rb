#!/usr/bin/env ruby
require 'open-uri'
require 'nokogiri'
require 'pry'
state= "Maryland"
html = open('https://www.trulia.com/home_prices/' + state + '/')
doc = Nokogiri::HTML(html)
county= "Montgomery"
#puts doc.css("td").length-5

  html = open('https://www.trulia.com/home_prices/' + state + '/')#is there a way to plug in a variable in an open-uri link?
  doc = Nokogiri::HTML(html)
  #doc.css("td").each_with_index do |link,i|
  i = 11
  binding.pry
  #hash= {}
  while i < (doc.css("td").length-5) #is this valid ? gives argument error ?

    county= doc.css("td")[i].text.gsub("\n","")
    listprice= doc.css("td")[i+1].text
    #hash[:county] = listprice

    puts "#{county}: #{listprice}"
    i+=4
  end
