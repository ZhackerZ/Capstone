class Forum < ActiveRecord::Migration
  def up
  create_table "forum", force: :cascade do |f|
	f.string "username", limit: 10, null: false
	f.string "doctor", limit: 10
	
	f.string "user_question", limit: 1000, null: false
	f.string "doc_answer", limit: 1000
	f.datetime "question_time"
	f.datetime "answer_time"
  end
  end
  def down
	drop_table :forum
  end
end
