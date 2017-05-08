class User < ApplicationRecord
  acts_as_token_authenticatable
  has_many :books, dependent: :destroy
  validates :f_name, :presence => true, :length => {:maximim => 20, :minimum => 3}
  validates :l_name, :presence => true, :length => {:maximim => 20, :minimum => 3}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    "#{f_name}" + "#{l_name}"
  end
end
