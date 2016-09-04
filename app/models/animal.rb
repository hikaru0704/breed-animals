class Animal < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }

    belongs_to :animal_type_id
    belongs_to :user
end
