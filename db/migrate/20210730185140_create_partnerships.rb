class CreatePartnerships < ActiveRecord::Migration[6.1]
  def change
    create_table :partnerships do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :project, null: false, foreign_key: true
      t.string :date

      t.timestamps
    end
  end
end
