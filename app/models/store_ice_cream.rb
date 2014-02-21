class StoreIceCream < ActiveRecord::Base
    belongs_to :Store
    belongs_to :IceCream
end
