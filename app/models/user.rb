class User < ApplicationRecord
  has_many :posts
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   def to_s
    self.email
   end

   enum role: {admin: 0, normal: 1, guest: 2}
end
