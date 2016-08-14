class Animal < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }

    belongs_to :animal_type
    belongs_to :user
end
