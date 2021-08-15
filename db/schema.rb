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

ActiveRecord::Schema.define(version: 2021_08_15_095118) do

  create_table "faculties", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "founded_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "members", charset: "utf8", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "phone_number"
    t.string "address"
    t.bigint "faculties_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["faculties_id"], name: "index_members_on_faculties_id"
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  create_table "speacialized_subjects", charset: "utf8", force: :cascade do |t|
    t.bigint "speacializeds_id"
    t.bigint "subjects_id"
    t.integer "maximum_number_of_students"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["speacializeds_id"], name: "index_speacialized_subjects_on_speacializeds_id"
    t.index ["subjects_id"], name: "index_speacialized_subjects_on_subjects_id"
  end

  create_table "specializeds", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "founded_date"
    t.bigint "faculties_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["faculties_id"], name: "index_specializeds_on_faculties_id"
  end

  create_table "subjects", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "number_of_lessons"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
