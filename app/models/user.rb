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

# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  full_name  :string
#  email      :string
#  password   :string
#  location   :string
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
