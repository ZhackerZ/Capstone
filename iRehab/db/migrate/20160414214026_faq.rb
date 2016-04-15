class Faq < ActiveRecord::Migration
  def up
  create_table "faq", force: :cascade do |q|
	q.string "question", limit: 1000
	q.string "answer", limit: 1000
  end
  end
  def down
	drop_table :faq
  end
end
