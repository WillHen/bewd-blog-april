class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.string :post_id
      t.string :integer

      t.timestamps
    end
  end
end
