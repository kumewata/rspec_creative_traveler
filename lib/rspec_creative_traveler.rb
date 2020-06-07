require "rspec_creative_traveler/version"

module CreativeTraveler
  class Error < StandardError; end
  
  def create_record_with_travel_and_back(date, &creator)
    travel_to(date)
    obj = creator.call
    travel_back
    obj
  end
end
