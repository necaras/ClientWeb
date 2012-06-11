class CreateInvoicedetails < ActiveRecord::Migration
  def change
    create_table :invoicedetails do |t|
      t.string :Productcode
      t.string :Productdescription
      t.decimal :Qty
      t.references :Invoice

      t.timestamps
    end
    add_index :invoicedetails, :Invoice_id
  end
end
