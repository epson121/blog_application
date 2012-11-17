class Comment < ActiveRecord::Base
  attr_accessible :comment, :email, :name
  belongs_to :post
end
