# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

images_urls = [
  'https://scontent-lga3-1.cdninstagram.com/vp/bd9b15079ec27c52c076e9c7792bdc04/5B992309/t51.2885-15/s640x640/sh0.08/e35/c180.0.719.719/31449135_2115995735352355_6317812590797914112_n.jpg',
  'https://scontent-lga3-1.cdninstagram.com/vp/86a808860a33d2cd8a76be06455242f4/5B888C8F/t51.2885-15/e35/c128.0.509.509/31754729_2054527434815791_4339393071910223872_n.jpg',
  'https://scontent-lga3-1.cdninstagram.com/vp/5294f2225413a596f5b23665b2beb634/5B92BEDB/t51.2885-15/s640x640/sh0.08/e35/c177.0.725.725/30830425_2393470950670438_2522163735770955776_n.jpg',
  'https://scontent-lga3-1.cdninstagram.com/vp/7ccfb31cd52ababaf2ae5bd161acede6/5B835FAA/t51.2885-15/e35/c125.0.515.515/26868767_1972167619666924_4618402793227550720_n.jpg',
  'https://scontent-lga3-1.cdninstagram.com/vp/9ccc672f85e350e095bfa7b7f13aa82f/5B817C74/t51.2885-15/e35/c124.0.514.514/27574993_416197748800984_3878266729968697344_n.jpg',
  'https://scontent-lga3-1.cdninstagram.com/vp/687af55170a1726ddc0abb6264446d74/5B806C92/t51.2885-15/e35/c125.0.515.515/26866605_921938944647778_1466818064153575424_n.jpg',
  'https://scontent-lga3-1.cdninstagram.com/vp/76a9c6e7a81539128bc37fce7f18503a/5B86CC98/t51.2885-15/e35/c130.0.506.506/25023006_881466545362026_8494777633052033024_n.jpg',
  'https://scontent-lga3-1.cdninstagram.com/vp/f35c9e8dd0a5f49dfef51894cd832f1d/5BBE5BE4/t51.2885-15/e35/c124.0.517.517/30078101_293149301218212_2730123866104922112_n.jpg',
  'https://scontent-lga3-1.cdninstagram.com/vp/0347561f5ddfae078a69b8fd180a2af0/5BA04EC5/t51.2885-15/e35/c123.0.517.517/25038208_106143513522039_8509623032891834368_n.jpg'
]
images_urls.each {|image_url| Image.create(url:image_url)}

Image.all.each do |image|
    rand(1...42).times do
        Like.create(image_id: image.id)
    end
end