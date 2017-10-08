class User < ActiveRecord::Base
  has_secure_password

  validates :username, :email, presence: true
  validates :email, uniqueness: true

   def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
    BCrypt::Password.create(string, cost: cost)
  end
end
