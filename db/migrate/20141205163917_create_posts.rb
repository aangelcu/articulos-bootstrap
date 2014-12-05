class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.date :date
      t.boolean :published
      t.text :text
      t.references :author, index: true

      t.timestamps
    end
  end
end
