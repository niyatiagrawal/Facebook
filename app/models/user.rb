class User < ApplicationRecord
  # <Niyati - telling appliocation the relation between object. User can have many groups through memberships
  has_one :profile
  has_many :status_updates
  has_many :memberships
  has_many :groups, through: :memberships
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
