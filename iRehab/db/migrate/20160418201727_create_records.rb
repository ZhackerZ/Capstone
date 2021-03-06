class CreateRecords < ActiveRecord::Migration
  def up
  create_table :records, force: :cascade do |r|
	r.string "username", limit: 10, null: false
	r.string "appointment_date", null: false
	r.string "appointment_time", null: false
	r.string "advisor", limit: 20, null: false
	r.string "description", limit: 1000
	r.string "instruction", limit: 1000 
  end
  end
  def down
	drop_table :records
  end
end
