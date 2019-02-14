class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name, null: false, default: '', index: true
      t.text :details, null: false, default: ''
      t.text :minimum_booking, null: false, default: ''
      t.text :hours, null: false, default: ''
      t.text :past_clients
      t.text :audio_samples

      t.text :amenities
      t.text :equipment

      t.text :rules

      t.string :location, null: false, default: '', index: true
      t.text :venue

      t.float :price, null: false, default: 0
      t.boolean :engineer_included, null: false, default: false

      t.string :images

      t.timestamps
    end
  end
end
