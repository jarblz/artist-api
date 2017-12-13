class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :handle
      t.string :url
      t.string :name
      t.text :bio
      t.string :members
      t.string :website
      t.string :wiki_page
      t.string :donation_url
      t.string :tags
      t.string :location
      t.string :image_url

      t.timestamps null: false
    end
  end
end
