class CreateRolesUsers < ActiveRecord::Migration
  def change
    create_table :roles_users do |t|
	
	  t.references :role, :user

      t.timestamps
    end
  end
end
