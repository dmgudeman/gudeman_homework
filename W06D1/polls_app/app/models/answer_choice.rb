


class AnswerChoice < ApplicationRecord

    belongs_to :question,
    foreign_key: :question_id,
    class_name: :Question

    has_many :repsonses,
    foreign_key: :

end