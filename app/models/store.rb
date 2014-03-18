class Store < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    validates :name, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :StoreIceCreams
    has_many :IceCreams, through: :StoreIceCreams
end




def self.ice_cream
    pluck(:IceCream)
    end
def self.flavor
    pluck(:flavor)
    end