class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string   :body
      t.integer  :author_id
      t.string   :time_written

      t.timestamps
    end
  end
end
