

require_relative 'application_record'

class House <ApplicationRecord

    has_many(
        :residents,
        class_name: 'Person',
        foreign_key: :house_id,
        primary_key: :id
      )
    validates :address, presence: true


end