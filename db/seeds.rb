
restaurants = Restaurant.create([
{
    name:"ole sereni",
    image_url:"https://emara.ole-sereni.com/rooms-and-suites/?gclid=EAIaIQobChMItvSHg4mM-gIVrYxoCR2SkAWeEAAYASAAEgIS6PD_BwE"
},
{
    name:"CJs",
    image_url:"https://cjs.co.ke/"
},
{
    name:"Art Cafe",
    image_url:"https://www.artcaffe.co.ke/"
}
])


reviews = Review.create([
    {
        title:"Great restaurant",
        description:"I had a wonderful time",
        score:6,
        restaurant: restaurants.first
    },
    {
        title:"Bad restaurant",
        description:"I had a difficult time",
        score:1,
        restaurant: restaurants.first
    },
    {
        title:"Great restaurant",
        description:"I loved the services",
        score:4,
        restaurant: restaurants.first
    }
])