class AddStatusToArticleAndComment < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :status, :string, default: 'public'
    add_column :comments, :status, :string, default: 'public'
  end
end
