const knex = require("knex");
const RestaurantService = require("../src/restaurant/restaurant-service");
const helpers = require("./test-helpers");
const app = require("../src/app");
const supertest = require("supertest");
const { expect } = require("chai");

describe("Restaurant service object", () => {
  let db;

  // We'll use this array as an example of mock data that represents

  const { testProducts, testItemInBasket } = helpers.makeAmazonFixtures();
  const testItem = [{ fav_id: 1, restaurant_id: 1 }];
  const expectItem = [
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
  ];

  // Prepare the database connection using the `db` variable available

  before("make knex instance", () => {
    db = knex({
      client: "pg",
      connection: process.env.TEST_DATABASE_URL,
    });
    app.set("db", db);
  });

  after("disconnect from db", () => db.destroy());

  before("cleanup", () => helpers.cleanTables(db));

  afterEach("cleanup", () => helpers.cleanTables(db));

  describe("GET /api/restaurants", () => {
    context("Given no restaurants", () => {
      it("responds with 200 and an empty list", () => {
        return supertest(app).get("/api/restaurants").expect(200, []);
      });
    });

    context("Given there are restaurants in the database", () => {
      beforeEach("insert restaurants", () => {
        return db.into("whattoeat_restaurants").insert(testProducts);
      });
      it("responds with 200 and all of the restaurants", () => {
        return supertest(app).get("/api/restaurants").expect(200, testProducts);
      });
    });
  });

  describe("GET /api/favorites/items", () => {
    context("Given no items in favorites", () => {
      it("responds with 200 and an empty list", () => {
        return supertest(app).get("/api/favorites/items").expect(200, []);
      });
    });

    context("Given there are items in the favorites", () => {
      beforeEach("insert item in favorites", () => {
        return db
          .into("whattoeat_restaurants")
          .insert(testProducts)
          .then(() => {
            return db.into("favorites").insert(testItem);
          });
      });
      it("responds with 200 and all of the products", () => {
        return supertest(app)
          .get("/api/favorites/items")
          .expect(200, expectItem);
      });
    });
  });

  describe("POST /api/favorites", () => {
    //should seed product_id=1 in amazon_products
    context("add items to favorites", () => {
      beforeEach("insert item in favorites", () => {
        return db.into("whattoeat_restaurants").insert(testProducts);
      });
      it("add one item in basket and returns item_id and product info", () => {
        const newItem = {
          restaurant_id: 1,
        };
        return supertest(app).post("/api/favorites").send(newItem).expect(201);
      });
    });
  });

  describe("DELETE /api/favorites/items/:fav_id", () => {
    context("Given there are items in the database", () => {
      beforeEach("insert item in favorites", () => {
        return db
          .into("whattoeat_restaurants")
          .insert(testProducts)
          .then(() => {
            return db.into("favorites").insert(testItem);
          });
      });

      it("responds with 204 and removes the item", () => {
        const idToRemove = 1;
        const expectedBasket = testItemInBasket.filter(
          (item) => item.fav_id !== idToRemove
        );
        return supertest(app)
          .delete(`/api/favorites/items/${idToRemove}`)
          .expect(200);
      });
    });
  });
});
