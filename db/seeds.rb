# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Artist.destroy_all

metallica = Artist.create(name: 'Metallica',
  image_url: 'https://pbs.twimg.com/profile_images/700023778961707009/2LTqH2Sd.jpg')

burzum = Artist.create(name: 'Burzum',
  image_url: 'http://static.wixstatic.com/media/ea2d3d_197e1b7f71504e3bbc49122ec021c503~mv2.jpg_256')

daft = Artist.create(name: 'Daft Punk',
  image_url: 'https://pbs.twimg.com/profile_images/3425336880/a86fc654738e4971e8792eadf0e28260.jpeg')

10.times do |i|
  metallica.albums.create(name: "Kill em' All", released_at: 1987, image_url:
    "https://junerecords.com/images/product/v/vinyl-rock-and-pop-metal-metallica-kill-em-all-(180g-lp)-256px-256px.jpg")
  burzum.albums.create(name: "Aske", released_at: 1990, image_url:
    "https://img.discogs.com/EaUhCfTapebLC4f-qttBB2gfv7A=/fit-in/256x256/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-1816371-1266212772.jpeg.jpg")
  daft.albums.create(name: "Random", released_at: 2014, image_url:
    "https://pbs.twimg.com/profile_images/3425336880/a86fc654738e4971e8792eadf0e28260.jpeg")
end
