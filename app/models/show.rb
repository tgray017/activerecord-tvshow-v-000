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
  
  def self.least_popular_show
    self.find_by(:rating => lowest_rating)
  end
  
  def self.ratings_sum
    sum(:rating)
  end
  
  def self.popular_shows

end