
User.destroy_all
Cleanup.destroy_all


woodsy = User.create!(
    avatar: "https://www.greatoutdoorshop.com/wp-content/uploads/2019/08/WOODSY-OWL-STICKER-1000.jpg",
    username: "Woodsy Owl",
    password: "1234",
    age: 50,
    catchphrase: "Give a hoot, don't pollute!",
    park_badge: 1,
    playground_badge: 1,
    shoreline_badge: 1,
    trail_badge: 0,
    earth_steward_badge: 1
)

litterbuster = User.create!(
    avatar: "http://media.al.com/montgomery-commentary/photo/9385840-large.jpg",
    username: "litterbuster",
    password: "1234",
    age: 15,
    catchphrase: "Don't be a litterbug!",
    park_badge: 1,
    playground_badge: 0,
    shoreline_badge: 1,
    trail_badge: 1,
    earth_steward_badge: 0
)



woodsy.cleanups.create!([
    {
        name: 'The Peninsula',
        location: 'Prospect Park',
        category: 'Shoreline',
        image: "https://upload.wikimedia.org/wikipedia/commons/3/3a/Prospect_Park_New_York_October_2015_003.jpg",
        date: "2021-1-20",
        duration: 1.5,
        comment: "Pick up after your dogs!",
        cheer: 4
    },
    {
        name: 'Nethermead',
        location: 'Prospect Park',
        category: 'Park',
        image: "https://onthegrid.city/imager/s3_amazonaws_com/onthegrid.city/assets/grid/brooklyn/prospect-lefferts-gardens/nethermead/Nethermead_4_299006722e285f47655d17d1c9136337.jpg",
        date: "2020-08-22",
        duration: 1.5,
        comment: "There was so much trash here from a birthday party. Please clean up after yourselves, folks!",
        cheer: 1
    },
    {
        name: 'Vanderbilt Playground',
        location: 'Prospect Park',
        category: 'Playground',
        image: "https://media.timeout.com/images/102743002/630/472/image.jpg",
        date: "2021-1-05",
        duration: 1.5,
        comment: "Looks like the teens had a party here last night.",
        cheer: 0
    },
    {
        name: 'Sidewalk',
        location: `Brooklyn Children's Museum`,
        category: 'Other',
        image: "https://assets.simpleviewinc.com/simpleview/image/upload/crm/newyorkstate/brooklynchildrensmuseum_julienneschaer_001_0fdfcb52-f4c0-2cb9-2ac96c765fb0a685.jpg",
        date: "2020-11-23",
        duration: 1.5,
        comment: "Cans, glass and fast food garbage",
        cheer: 10
    }
])

litterbuster.cleanups.create!([
    {
        name: 'East Drive Entrance',
        location: 'Prospect Park',
        category: 'Park',
        image: "https://i1.wp.com/www.bkreader.com/wp-content/uploads/2017/07/carfreeprospectpark_18053668.jpg?fit=640%2C360&ssl=1",
        date: "2020-12-23",
        duration: 1.5,
        comment: "The amount of plastic party confetti here is astounding.",
        cheer: 10
    },
    {
        name: 'Paved trail',
        location: 'Prospect Park',
        category: 'Trail',
        image: "https://cdn-img-feed.streeteasy.com/nyc/image/24/408139724.jpg",
        date: "2020-11-06",
        duration: 1.5,
        comment: "Lots of broken glass!",
        cheer: 6
    },
    {
        name: 'Beach',
        location: "Coney Island",
        category: 'Shoreline',
        image: "https://media.timeout.com/images/103329148/image.jpg",
        date: "2020-08-25",
        duration: 1.5,
        comment: "Lots of plastice found here :(",
        cheer: 30
    }
])


