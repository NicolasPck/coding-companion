class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :interviews, dependent: :destroy
  validates :nickname, uniqueness: true
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
