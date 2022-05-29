class AddFleetsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :fleets, id: :uuid do |t|
      t.string :name

      t.timestamps
    end

    all_fleet_ids = Vehicle.distinct.pluck(:fleet_id)
    Fleet.insert_all(all_fleet_ids.map { |id| { id: } })
  end
end
