const express = require("express");
const RestaurantService = require("./restaurant-service");
const jsonParser = express.json();

const restaurantRouter = express.Router();

restaurantRouter.route("/restaurants").get((req, res, next) => {
  RestaurantService.getAllRestaurants(req.app.get("db"))
    .then((restaurants) => {
      res.json(restaurants);
    })
    .catch(next);
});

restaurantRouter.route("/favorites").post(jsonParser, (req, res, next) => {
  const { restaurant_id } = req.body;
  const newItemAdded = { restaurant_id };
  RestaurantService.insertItemToFavorites(req.app.get("db"), newItemAdded)
    .then((itemAdded) => res.status(201).json(itemAdded))
    .catch(next);
});

restaurantRouter.route("/favorites/items").get((req, res, next) => {
  RestaurantService.getAllRestaurantsInFavorites(req.app.get("db"))
    .then((favorites) => res.json(favorites))
    .catch(next);
});

restaurantRouter.route("/favorites/items/:fav_id").delete((req, res, next) => {
  RestaurantService.deleteItem(req.app.get("db"), req.params.fav_id)
    .then((items) => res.json(items))
    .catch(next);
});

module.exports = restaurantRouter;
