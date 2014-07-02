class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :discipline
      t.string :chapter
      t.integer :question_one
      t.integer :question_two

      t.timestamps
    end
  end
end
