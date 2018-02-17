#!/usr/bin/env ruby
require_relative "./realestate/version"
require_relative "./realestate/cli"
require 'open-uri'
require 'nokogiri'
#module Realestate

  # Your code goes here...
#end
class RealEstate
#DO I want it to give all counties, or for user to enter a county and give one?
  html = open('https://www.trulia.com/home_prices/Maryland/')#need the user input of state to be the argument here.
  doc = Nokogiri::HTML(html)

  #for case of individual county: sub in county argument, loop through elements with i .
def by_county(state, county)
  html = open('https://www.trulia.com/home_prices/' + state + '/')#is there a way to plug in a variable in an open-uri link?
  doc = Nokogiri::HTML(html)
  input= gets.strip #wont have this here. have this in call method.
  input.capitalize!
  doc.css("td").each_with_index do |link,i|
    if link.include?(input)
    #if doc.css("td")[15].text.include?(input)
      puts doc.css("td")[i+1].text  #outputs the price for the county
    end
  end
end
def all_counties(state)
  html = open('https://www.trulia.com/home_prices/' + state + '/')#is there a way to plug in a variable in an open-uri link?
  doc = Nokogiri::HTML(html)
  #doc.css("td").each_with_index do |link,i|
  i = 11
  until i < doc.css("td").length #is this valid ?
    county= doc.css("td")[i].text.gsub("\n","")
    listprice= doc.css("td")[i+1].text
    puts "#{county}: #{listprice}"
    i+=4
  end


  end
end

  doc.css("td")[15].text.include?("Montgomery")
  doc.css("td")[11].text.gsub("\n","") #first county
  doc.css("td")[12].text #gives list price, then skip 13 and 14

end
