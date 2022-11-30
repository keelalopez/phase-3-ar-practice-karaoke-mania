class CreateJoin < ActiveRecord::Migration[5.2]
  def change
    create_table :joins do |t|
      t.integer :song_id
      t.integer :karaoke_singer_id
    end
  end
end
