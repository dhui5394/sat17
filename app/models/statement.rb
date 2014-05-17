class Statement < ActiveRecord::Base
	has_many :answers
  has_many :options
end
