const RestaurantService = {
  getAllRestaurants(knex) {
    return knex.select("*").from("whattoeat_restaurants");
  },
  insertItemToFavorites(knex, newItemAdded) {
    return knex.insert(newItemAdded).into("favorites").returning("*");
    //   .then((rows) => rows[0]);
  },
  getAllRestaurantsInFavorites(knex) {
    return knex
      .select(
        "fav_id",
        "image_url",
        "name",
        "url",
        "rating",
        "price",
        "review_count",
        "location",
        "categories",
        "transactions",
        "display_phone",
        "distance"
      )
      .from("favorites")
      .join(
        "whattoeat_restaurants",
        "favorites.restaurant_id",
        "=",
        "whattoeat_restaurants.id"
      );
  },
  deleteItem(knex, fav_id) {
    return knex("favorites")
      .select("fav_id", "restaurant_id")
      .from("favorites")
      .returning("*")
      .where({ fav_id })
      .delete();
  },
};
module.exports = RestaurantService;
