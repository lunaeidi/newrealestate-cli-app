#!/usr/bin/env ruby
require_relative "./realestate/version"
require_relative "./realestate/cli"
require 'open-uri'
require 'nokogiri'
#module Realestate

  # Your code goes here...
#end
#class RealEstate
#DO I want it to give all counties, or for user to enter a county and give one?
  html = open('https://www.trulia.com/home_prices/Maryland/')
  doc = Nokogiri::HTML(html)

  #for case of individual county: sub in county argument, loop through elements with i .
  input= gets.strip #gets county input and uppercase it
  input.capitalize!
  doc.css("td").each_with_index do |td,i|
    if link.include?(input)
      puts doc.css("td")[i+1].text  #outputs the price for the county
    end
  end

  doc.css("td")[15].text.include?(input)
  doc.css("td")[15].text.include?("Montgomery")
  #for case of listing all
  doc.css("td")[11].text.gsub("\n","") #gives Talbot
  doc.css("td")[12].text #gives list price, then skip 13 and 14

  #doc.css
#end
