class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :chapter
      t.integer :question_one_lower
      t.integer :question_one_upper
      t.integer :question_two_lower
      t.integer :question_two_upper

      t.timestamps
    end
  end
end
