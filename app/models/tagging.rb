class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :review
end
