would like to do Scraper.new(with a url/ or name of state).state_scrape and return an instance of a newsletter

class Scraper #add module before this and the other class?
  attr_accessor :doc, :state
def initialize(state)
  @state= State.new
  @state.name= state
  @doc= Nokogiri::HTML(open('https://www.trulia.com/home_prices/' + state + '/',"User-Agent" => "Mozilla/5.0 (Android 4.4; Mobile; rv:41.0) Gecko/41.0 Firefox/41.0"))
end
def scrape #should return an instance of a state with its details .
  i = 4
  while i < (doc.css("td").length)
    county= doc.css("td")[i].text.gsub("\n","")
    listprice= doc.css("td")[i+1].text
    puts "#{county}: #{listprice}"
    i+=2
  end
  @state.

end

  def scrape_counties
    @doc.css( ).each do |county|
      #instantiate the article
      c= County.new
      #scrape data
      c.name= doc.css("td")[i].text.gsub("\n","")
      c.price=doc.css("td")[i+1].text
      #add county to the state
    end
  end


  def make_counties(state)
    doc= get_page(state) #get_page must be a class method?
    scrape_counties each do |c|
    RealEstate.new_from_index(c)
    end
  end
end
