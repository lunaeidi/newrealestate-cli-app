require_relative "./realestate/version"
require_relative "./realestate/cli"
require 'open-uri'
require 'nokogiri'
module Realestate

  # Your code goes here...
end
class RealEstate
  html = open('https://www.trulia.com/home_prices/Maryland/')
  doc = Nokogiri::HTML(html)
  doc.css
end
