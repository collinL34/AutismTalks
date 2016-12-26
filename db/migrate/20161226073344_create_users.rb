class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :email
      t.string   :password_digest
      t.string   :address
      t.integer  :zip_code
      t.string   :city
      t.string   :state
      t.integer  :apt
      t.string   :images
      t.string   :bio

      t.timestamps
    end
  end
end
