class AddUserReferenceToGif < ActiveRecord::Migration
  def change
    add_reference :gifs, :user, index: true
  end
end
