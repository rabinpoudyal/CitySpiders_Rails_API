class User < ApplicationRecord
  acts_as_token_authenticatable
  has_many :books, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    "#{f_name}" + "#{l_name}"
  end
end
