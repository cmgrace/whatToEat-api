# What to eat-server

Live Deployment

[https://what-to-eat-beta.vercel.app/](https://what-to-eat-beta.vercel.app/)

Server Deployment

[https://secret-earth-69641.herokuapp.com/api](https://secret-earth-69641.herokuapp.com/api)

## API Documentation

### What to eat Endpoints

    GET /api/restaurants: Return an list of restaurants stored in database.

```
{
      id: 1,
      alias: "molinari-delicatessen-san-francisco",
      name: "Molinari Delicatessen",
      image_url:
        "https://s3-media3.fl.yelpcdn.com/bphoto/B5vUs6hU1W6UcBQL52v2GQ/o.jpg",
      is_closed: false,
      url:
        "https://www.yelp.com/biz/molinari-delicatessen-san-francisco?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw",
      review_count: 1154,
      categories: "Delis",
      rating: 4.5,
      transactions: "pickup,delivery",
      price: "$$",
      location: "373 Columbus Ave, San Francisco, CA 94133",
      display_phone: "(415) 421-2337",
      distance: "1453.998141679007",
    }
```

    GET /favorites/items: Return an list of item in the favorites.

```
{
      id: 1,
      fav_id: 1,
      name: "Molinari Delicatessen",
      image_url:
        "https://s3-media3.fl.yelpcdn.com/bphoto/B5vUs6hU1W6UcBQL52v2GQ/o.jpg",
      url:
        "https://www.yelp.com/biz/molinari-delicatessen-san-francisco?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw",
      review_count: 1154,
      categories: "Delis",
      rating: 4.5,
      transactions: "pickup,delivery",
      price: "$$",
      location: "373 Columbus Ave, San Francisco, CA 94133",
      display_phone: "(415) 421-2337",
      distance: "1453.998141679007",
    },
```

    POST /favorites: post an item to the cart table

```
{ fav_id: 1, restaurant_id: 1 }
```

    DELETE /favorites/items/:fav_id: allow user to remove the item in the favorites

## Technology used

### Frontend

- ReactJS
- React Router
- React Context
- React Hooks
- HTML
- CSS
- Webpack
- Jest
- Deployed at Vercel

### Backend

- RESTful API
- Node & Express
- PostgresSQL
- Knex
- Supertest
- Mocha & Chai
- Deployed Heroku
