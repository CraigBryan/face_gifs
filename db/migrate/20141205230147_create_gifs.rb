class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|

      t.timestamps
    end
  end
end
