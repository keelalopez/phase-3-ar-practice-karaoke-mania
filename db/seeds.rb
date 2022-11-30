KaraokeSinger.destroy_all
Song.destroy_all

s1 = Song.create(title: "Crazy in Love", runtime_in_minutes: 2, artist_name: "Beyonce")
s2 = Song.create(title: "Funky Town", runtime_in_minutes: 3, artist_name: "Paige T")
s3 = Song.create(title: "Bitch Better Have my Money", runtime_in_minutes: 0, artist_name: "Rihanna")

k1 = KaraokeSinger.create(name: "Paige", number_of_drinks: 5)
k2 = KaraokeSinger.create(name: "Keila", number_of_drinks: 7)

Join.create(song_id: s1.id, karaoke_singer_id: k1.id)
Join.create(song_id: s2.id, karaoke_singer_id: k2.id)
Join.create(song_id: s3.id, karaoke_singer_id: k1.id)
Join.create(song_id: s1.id, karaoke_singer_id: k2.id)