class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :recoverable and :omniauthable
  has_many :orders
  has_one_attached :photo  # 画像添付用の関連付け
  devise :database_authenticatable, :registerable,
         :trackable, :rememberable, :validatable
end

