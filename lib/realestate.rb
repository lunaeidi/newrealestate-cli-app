#!/usr/bin/env ruby
require_relative "./realestate/version"
require_relative "./realestate/cli"
require 'open-uri'
require 'nokogiri'
require 'pry'
module Realestate

  # Your code goes here...

class RealEstate
#DO I want it to give all counties, or for user to enter a county and give one?
    #for case of individual county: sub in county argument, loop through elements with i .
def self.by_county(state, county)
  html = open('https://www.trulia.com/home_prices/' + state + '/')#no conversion of nil into string
  doc = Nokogiri::HTML(html)
  doc.css("td").each_with_index do |link,i|
    if link.include?(county)
    #if doc.css("td")[15].text.include?(input)
      puts doc.css("td")[i+1].text  #outputs the price for the county
    end
  end
end
def self.all_counties(state)
  html = open('https://www.trulia.com/home_prices/' + state + '/')#is there a way to plug in a variable in an open-uri link?
  doc = Nokogiri::HTML(html)
  #doc.css("td").each_with_index do |link,i|
  i = 11
  until i < (doc.css("td").length-5) #is this valid ? gives argument error ?
    binding.pry
    county= doc.css("td")[i].text.gsub("\n","")
    listprice= doc.css("td")[i+1].text
    puts "#{county}: #{listprice}"
    i+=4
  end
end


  end
end

  #doc.css("td")[15].text.include?("Montgomery")
  #doc.css("td")[11].text.gsub("\n","") #first county
  #doc.css("td")[12].text #gives list price,
