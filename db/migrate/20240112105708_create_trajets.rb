class CreateTrajets < ActiveRecord::Migration[6.1]
  def change
    create_table :trajets do |t|
      t.references :conducteur, foreign_key: { to_table: :users }
      t.string :depart
      t.string :destination
      t.datetime :heure_depart
      t.integer :places_disponibles
      t.string :type_voiture

      t.timestamps
    end
  end
end
