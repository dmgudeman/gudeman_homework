

class User < ApplicationRecord

    has_many :authored_polls
    foreign_key: :author_id,
    class_name: :Poll,
    dependent: :destroy

    has_many :

end