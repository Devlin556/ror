class CreateNewforms < ActiveRecord::Migration[5.1]
  def change
    create_table :newforms do |t|
      t.string :input
      t.string :textarea
      t.string :radio
      t.string :checkbox
      t.string :string

      t.timestamps
    end
  end
end
