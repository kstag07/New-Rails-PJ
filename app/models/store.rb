class Store < ActiveRecord::Base
    has_many :StoreIceCreams
    has_many :IceCreams, through: :StoreIceCreams
end
