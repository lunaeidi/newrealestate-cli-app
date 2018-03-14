class County
  attr_accessor :name, :price, :state
  def initialize(name= nil,price= nil, state= nil)
    @name=name
    @price=price
    @state=state
    @@all << self
  end
    def self.all
      @@all
    end
    def self.new_from_index(c)
      self.new(
      c.css
      c.css
      c.css
      )
    end
  #DO I want it to give all counties, or for user to enter a county and give one?
      #for case of individual county: sub in county argument, loop through elements with i .
end
