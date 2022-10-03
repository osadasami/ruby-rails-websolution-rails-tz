letters = ('a'..'z').to_a
artists = Artist.all

1.upto(100) do |n|
  l = letters.sample.upcase
  Artist.create(
    name: "#{l} Artist #{n}",
    created_at: Time.at(rand * Time.now.to_i),
  )
end

1.upto(1000) do |n|
  artist = artists.sample
  l = letters.sample.upcase

  Song.create(
    title: "#{l} Song #{n} by #{artist.name}",
    length: 100,
    filesize: 100,
    artist: artist,
    created_at: Time.at(rand * Time.now.to_i),
  )
end

songs = Song.all

1.upto(1000) do |n|
  Download.create(
    song: songs.sample,
    created_at: Time.at(rand * Time.now.to_i),
  )
end