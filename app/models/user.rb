class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable, :lockable,
         :recoverable, :rememberable, :validatable

  protected
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login).downcase
    where(conditions.to_h).
      where(["(lower(login) = :value OR lower(email) = :value)",{ value: login }]).first
  end
end
