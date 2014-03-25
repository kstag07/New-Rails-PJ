class Store < ActiveRecord::Base
    has_many :StoreIceCreams
    has_many :IceCreams, through: :StoreIceCreams

    validates :name, presence: true
    
    #after_create :notify_admin
    private
    
    
end
