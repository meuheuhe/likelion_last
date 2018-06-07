class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.string :title
      t.text :content
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
