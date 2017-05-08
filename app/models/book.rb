class Book < ApplicationRecord
  belongs_to :user
  validates :user, :presence => true
  validates :title, :presence => true, :length => {:minimum => 3, :maximum => 35}
  validates :condition, :presence => true, :inclusion => {:in => ['OLD','NEW','USED']}
  validates :price, :presence => true
  validates :category, :presence => true
end
