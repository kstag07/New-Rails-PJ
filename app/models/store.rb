class Store < ActiveRecord::Base
    has_many :StoreIceCreams
    has_many :IceCreams, through: :StoreIceCreams
end


def self.ice_cream
    pluck(:IceCream)
    end
