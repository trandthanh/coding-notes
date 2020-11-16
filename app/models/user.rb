class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tags, dependent: :destroy
  has_many :notes, dependent: :destroy
  has_many :lists, dependent: :destroy

  validates :username, presence: true, uniqueness: true
end
