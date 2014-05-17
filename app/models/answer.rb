class Answer < ActiveRecord::Base
	belongs_to :options
  belongs_to :statements
end
