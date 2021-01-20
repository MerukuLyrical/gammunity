class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tpics
  belongs_to :like
  # has_many :comments #commentsテーブルとのアソシエーション
  validates :name, presence: true, length: { maximum: 8 }
  validates :profile, presence: true
  validates :like_id, presence: true
end
