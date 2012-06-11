class CreateClientcategories < ActiveRecord::Migration
  def change
    create_table :clientcategories do |t|
      t.string :description

      t.timestamps
    end
  end
end
