class Option < ActiveRecord::Base
	has_many :answers
  has_many :statements, through: :answers
end
