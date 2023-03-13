# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_07_121348) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer_choices", force: :cascade do |t|
    t.text "answer_choice", null: false
    t.bigint "answer_choice_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_choice_id"], name: "index_answer_choices_on_answer_choice_id"
  end

  create_table "polls", force: :cascade do |t|
    t.string "title", null: false
    t.bigint "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_polls_on_author_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "question", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_questions_on_question_id"
  end

  create_table "responses", force: :cascade do |t|
    t.bigint "answer_choice_id", null: false
    t.bigint "respondent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_choice_id"], name: "index_responses_on_answer_choice_id"
    t.index ["respondent_id"], name: "index_responses_on_respondent_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answer_choices", "questions", column: "answer_choice_id"
  add_foreign_key "polls", "users", column: "author_id"
  add_foreign_key "questions", "polls", column: "question_id"
  add_foreign_key "responses", "answer_choices"
  add_foreign_key "responses", "users", column: "respondent_id"
end
