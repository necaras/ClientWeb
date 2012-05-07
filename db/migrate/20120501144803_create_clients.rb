class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :email
      t.string :abacusno
      t.string :businessname
      t.string :unit
      t.string :address
      t.string :city
      t.references :province
      t.references :country
      t.string :postalcode
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :fax
      t.references :clientcategory

      t.timestamps
    end
    add_index :clients, :province_id
    add_index :clients, :country_id
    add_index :clients, :clientcategory_id
  end
end
