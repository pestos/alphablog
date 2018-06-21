class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.text :question
      t.string :option1
      t.string :option2
      t.string :option3

      t.timestamps
    end
  end
end
