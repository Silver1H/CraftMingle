class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :subject
      t.integer :user_id

      t.timestamps
    end
  end
end
