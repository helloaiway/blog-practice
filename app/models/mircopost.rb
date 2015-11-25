class Mircopost < ActiveRecord::Base
  belongs_to :user
  has_many :comment
  has_many :follow
end
