class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :InvoiceNumber
      t.string :Abacusno
      t.date :InvoiceDate

      t.timestamps
    end
  end
end
