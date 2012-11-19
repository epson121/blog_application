class Comment < ActiveRecord::Base
  attr_accessible :commenteer, :text
  belongs_to :post
end
