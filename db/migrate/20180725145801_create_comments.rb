class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :comment, optional: true
      t.belongs_to :link, optional: true
      t.text :body
      t.timestamps
    end
  end
end
