class User < ActiveRecord::Base
  
  attr_reader :bio, :email, :full_name, :location, :password
  
  #Validates
  validates :email, :presence => true,
                    :format => { :with => /\A[^@]+@[^@\.]+\z/ },
                    :uniqueness => true
  validates :email, :full_name, :location, :presence => true
  validates_confirmation_of :password
  validates_length_of :bio, :minimum => 30, :allow_blank => false
  
end
