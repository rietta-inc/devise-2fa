class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :two_factorable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  scope :with_valid_otp_challenge, ->{ where(User.arel_table[:otp_challenge_expires].gt(1.day.ago)) }
end
