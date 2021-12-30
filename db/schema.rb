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

ActiveRecord::Schema.define(version: 2021_12_30_151700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", id: { comment: "ID" }, comment: "Employees", force: :cascade do |t|
    t.string "first_name", null: false, comment: "First Name"
    t.string "last_name", null: false, comment: "Last Name"
    t.string "gender", null: false, comment: "Gender"
    t.string "dob", comment: "Data of Birth"
    t.string "email", comment: "Email"
    t.string "phone", comment: "Phone"
    t.bigint "master_country_id", comment: "Country"
    t.bigint "master_province_id", comment: "Province"
    t.bigint "master_district_id", comment: "District"
    t.bigint "master_ward_id", comment: "Ward"
    t.bigint "owner_id", comment: "Owner ID"
    t.bigint "department_id", comment: "Department ID"
    t.bigint "role_id", comment: "Role ID"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end

end
