class AddCommentsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :comment_count, :integer
  end
end
