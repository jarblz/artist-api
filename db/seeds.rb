# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first

url = File.join(Rails.root, "lib/tasks", "artists.json")

artists = JSON.parse(File.read(url))['artists']

artists.each do |artist|
  tags = artist['tags'].join(", ")
  Artist.create!(
    handle: artist['artist_handle'],
    url: artist['artist_url'],
    name: artist['artist_name'],
    bio: artist['artist_bio'],
    members: artist['artist_members'] || "Solo Act",
    website: artist['artist_website'],
    wiki_page: artist['artist_wikipedia_page'],
    donation_url: artist['artist_donation_url'],
    tags: tags,
    location: artist['artist_location']
  )
end
