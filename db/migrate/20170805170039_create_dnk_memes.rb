class CreateDnkMemes < ActiveRecord::Migration[5.1]
  def change
    create_table :dnk_memes do |t|
      t.string :description

      t.timestamps
    end
  end
end
