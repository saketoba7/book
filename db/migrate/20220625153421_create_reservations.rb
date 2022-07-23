class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :post, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
      t.datetime :start_date
      t.datetime :end_date
      t.integer :number
      t.timestamps
    end
  end
end
