class AgregarCamposArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :author, :string
    add_column :articles, :title, :string
    add_column :articles, :description, :string
    add_column :articles, :url_to_image, :string
  end
end
