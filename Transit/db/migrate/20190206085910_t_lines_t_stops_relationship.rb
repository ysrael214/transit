class TLinesTStopsRelationship < ActiveRecord::Migration[5.2]
  def change
    create_table "lines_stops" do |t|
      t.integer "transit_line_id"
      t.integer "transit_stop_id"
    end
  end
end
