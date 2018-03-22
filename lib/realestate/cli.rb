
require 'pry'
class CLI
    def greeting
      puts "Hello! Welcome to the RealEstate App!"
    end
    def call
    puts "Enter the name of the state for the Average Listing Price per county."
    state= gets.strip.capitalize
    if state.include?(" ")
      state= state.gsub(" ","_")
    end

    puts "Would you like to see the listing prices for all counties, or for one county? Type 'all' or 'one'"
    input2= gets.strip


      s= Scraper.new(state) #shuld i have the Realestate?
      stateinstance= s.scrape
      if input2== "all"
      stateinstance.counties.each do |county|#match the state the person searched.
      puts "#{county.name}: #{county.price}"
    end

      puts "Enter 'restart' to go back to main menu, or enter 'exit'"
      input5= gets.strip
      if input5== 'restart'
        call
      end
    elsif input2== "one"
      puts "Enter the county name:"
      county= gets.strip.capitalize

      countyinstnace=stateinstance.counties.find{|c| c.name= county}
      puts countyinstnace.price
      puts "Please enter 'restart' to make another search, or enter 'exit'"
      input4= gets.strip
      if input4== 'restart'
        call
      elsif input4== 'exit'
      end
    end

  end
end
