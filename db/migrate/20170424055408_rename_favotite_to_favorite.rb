class RenameFavotiteToFavorite < ActiveRecord::Migration[5.0]
  def change
    rename_table :favotites,:favorites
  end
end
