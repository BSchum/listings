class User < ApplicationRecord
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :listings
  belongs_to :role

  def is_admin?
    role.name == 'Admin'
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
