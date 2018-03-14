#!/usr/bin/env ruby
require_relative "./realestate/version"
require_relative "./realestate/cli"
require 'open-uri'
require 'nokogiri'
require 'pry'
module Realestate

  # Your code goes here...

class RealEstate


def self.by_county(state, county)
  html = open('https://www.trulia.com/home_prices/' + state + '/',"User-Agent" => "Mozilla/5.0 (Android 4.4; Mobile; rv:41.0) Gecko/41.0 Firefox/41.0")#no conversion of nil into string
  doc = Nokogiri::HTML(html)
  doc.css("td").each_with_index do |link,i|
    if link.text != nil
        if link.text.include?(county) || link.text.include?(county.upcase)
      puts doc.css("td")[i+1].text
      end
    end
  end
end
def self.all_counties(state)
  html = open('https://www.trulia.com/home_prices/' + state + '/',"User-Agent" => "Mozilla/5.0 (Android 4.4; Mobile; rv:41.0) Gecko/41.0 Firefox/41.0")#is there a way to plug in a variable in an open-uri link?
  doc = Nokogiri::HTML(html)
  #doc.css("td").each_with_index do |link,i|
  i = 4
  while i < (doc.css("td").length) #is this valid ? gives argument error ?
    county= doc.css("td")[i].text.gsub("\n","")
    listprice= doc.css("td")[i+1].text
    #hash[:county] = listprice
    puts "#{county}: #{listprice}"
    i+=2
  end
end


  end
end

  #doc.css("td")[15].text.include?("Montgomery")
  #doc.css("td")[11].text.gsub("\n","") #first county
  #doc.css("td")[12].text #gives list price,
