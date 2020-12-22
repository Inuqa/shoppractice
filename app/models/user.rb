class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :roles

  def admin?
    @admin ||= roles.find_by(name: 'admin')
  end
end
