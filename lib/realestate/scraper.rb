class Scraper #add module before this and the other class?
  def get_page
  end
  def scrape_counties #what does this do?
  end

  def make_counties
    scrape_counties each do |c|
    RealEstate.new_from_index(c)
    end
  end
end
