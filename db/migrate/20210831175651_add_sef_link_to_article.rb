class AddSefLinkToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :sef_link, :string
  end
end
