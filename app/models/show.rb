class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    self.find_by(:rating => highest_rating)
  end
  
  def self.lowest_rating
    self.minimum(:rating)
  end

end