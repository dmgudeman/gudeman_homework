require_relative 'application_record'

class Person <ApplicationRecord
    validates :name, presence: true


end
