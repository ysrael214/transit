class TLinesTStopsRelationship < ActiveRecord::Migration[5.2]
  def change
    create_table "transit_lines_transit_stops" do |t|
      t.integer "transit_line_id"
      t.integer "transit_stop_id"
      t.integer "stop_number"
    end
    create_table "departure_times" do |t|
      t.integer "lines_stops_id"
      t.string "departure_time"
    end
  end
end
