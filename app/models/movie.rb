class Movie < ActiveRecord::Base
  
  def self.all_ratings
    ['G','PG','PG-13','R']
  end
  
  def self.with_ratings(ratings)
    if ratings && ratings != []
      return self.where({rating:ratings})
    end
    return self.all
  end 
end
