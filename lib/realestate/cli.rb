#CLI Controller
class RealEstate::CLI
  def call
    puts "Enter the name of the state for the Average Listing Price per county. "
    while input != "exit"
      input= gets.strip #.downcase ?
      # case input
      # when "Maryland"
      #   ...
      # when ""
      #   ...
      # end
  end
end
