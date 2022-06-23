class House < ApplicationRecord
    validates :address, presence: true

    has_many(:residents, {
        primary_key: :id,
        foreign_key: :house_id, #from the person's table
        class_name: :Person

    })
end