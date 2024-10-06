class CreateBukus < ActiveRecord::Migration[7.2]
  def change
    create_table :bukus do |t|
      t.string :title
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
