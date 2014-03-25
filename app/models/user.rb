class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    #mount_uploader :picture, PictureUploader
    
   # after_create :notify_admin
    #private
    
    #def notify_admin
        #UserMailer.notify_admin_about_new_user(self).deliver
 #       end
end
