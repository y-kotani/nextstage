class Restaurant < ActiveRecord::Base
  has_many :reviews

    def review_average
      self.reviews.average(:rate).round(2)
    end
end
