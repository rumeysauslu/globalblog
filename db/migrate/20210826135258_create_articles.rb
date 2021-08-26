class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.integer :order, default: 0

      t.timestamps
    end
  end
end
