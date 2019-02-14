class CreateStudiosTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :studios_types, id: false do |t|
      t.belongs_to :studio, index: true
      t.belongs_to :type, index: true
    end
  end
end
