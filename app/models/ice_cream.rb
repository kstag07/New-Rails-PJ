class IceCream < ActiveRecord::Base
    has_many :StoreIceCreams
    has_many :Stores, through: :StoreIceCreams
    
end
