Artist.destroy_all
Genre.destroy_all
Song.destroy_all
SongGenre.destroy_all


post_malone = Artist.create(name:"Post Malone")
justin_bieber = Artist.create(name:"Justin Bieber ")
soulja_boy = Artist.create(name:"Soulja Boy ")

death_metal = Genre.create(name:"Death Metal")
r_b = Genre.create(name:"R&B ")
kpop = Genre.create(name:"Kpop")

baby = Song.create(name: "Baby" , artist_id: post_malone.id )
crank_that = Song.create(name: "Crank That" , artist_id: justin_bieber.id )
rockstar = Song.create(name: "Rockstar" , artist_id: soulja_boy.id )
call_me_maybe = Song.create(name: "Call me Maybe" , artist_id: soulja_boy.id )

SongGenre.create(genre_id: kpop.id , song_id: baby.id )
SongGenre.create(genre_id: r_b.id , song_id: crank_that.id )
SongGenre.create(genre_id: death_metal.id , song_id: rockstar.id)
SongGenre.create(genre_id: death_metal.id , song_id: call_me_maybe.id)












