

class Scraper #add module before this and the other class?
  attr_accessor :doc, :state
def initialize(state)
  @state= State.new
  @state.name= state
  @doc= Nokogiri::HTML(open('https://www.trulia.com/home_prices/' + state + '/',"User-Agent" => "Mozilla/5.0 (Android 4.4; Mobile; rv:41.0) Gecko/41.0 Firefox/41.0"))
end
def scrape #should return an instance of a state with its details .
  scrape_counties
  @state
  end


end

  def scrape_counties
    #@doc.css("td")[4..-1].each do |county|
      #       c= County.new
      # c.name= doc.css("td")[i].text.gsub("\n","")
      # c.price=doc.css("td")[i+1].text

      i = 4
      while i < (doc.css("td").length)
        c= County.new
        c.name= doc.css("td")[i].text.gsub("\n","")
        c.price= doc.css("td")[i+1].text
        c.state= @state.name
        @state.counties << c #add county to the state
        i+=2
      end
    end

end
