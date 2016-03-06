# == Schema Information
#
# Table name: klasses
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Klass < ActiveRecord::Base
  has_many :sections

  validates :name, presence: true
end
