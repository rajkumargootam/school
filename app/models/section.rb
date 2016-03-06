class Section < ActiveRecord::Base
  belongs_to :klass


  validates :name, presence: true
end
