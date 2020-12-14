class RenameCommentToCommenter < ActiveRecord::Migration[6.0]
  def change
    rename_column :comments, :comment, :commenter
  end
end
