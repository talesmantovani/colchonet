class Room < ActiveRecord::Base
  attr_reader :description, :location, :title
end

# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  location    :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
