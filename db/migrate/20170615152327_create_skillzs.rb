class CreateSkillzs < ActiveRecord::Migration[5.1]
  def change
    create_table :skillzs do |t|
      t.string :title
      t.integer :percentage

      t.timestamps
    end
  end
end
