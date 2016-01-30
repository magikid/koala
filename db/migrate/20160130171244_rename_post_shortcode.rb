class RenamePostShortcode < ActiveRecord::Migration
  def change
    rename_column :posts, :shortcode, :short_code
  end
end
