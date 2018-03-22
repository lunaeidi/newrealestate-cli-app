class County
  attr_accessor :name, :price, :state
  def initialize(name= nil,price= nil, state= nil)
    @name=name
    @price=price
    @state=state
  end


  #DO I want it to give all counties, or for user to enter a county and give one?
      #for case of individual county: sub in county argument, loop through elements with i .
end
