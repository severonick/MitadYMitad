class Status < ActiveRecord::Base
  
  attr_accessible :contenido, :user_id
  belongs_to :user


validates :contenido, presence: true
                      
validates :user_id, presence: true                      

end
