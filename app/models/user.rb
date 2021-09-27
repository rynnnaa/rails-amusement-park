class User < ActiveRecord::Base
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides

  def mood 
    if self.valid?
      if !self.admin && self.nausea > self.happiness 
        "sad"
      else
        "happy"  
      end 
    end 
  end
end
