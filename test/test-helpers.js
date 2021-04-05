const knex = require("knex");
const App = require("../src/app");
const helpers = require("./test-helpers");

function makeProductsArray() {
  return [
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
    },
    {
      id: 2,
      alias: "deli-board-san-francisco",
      name: "Deli Board",
      image_url:
        "https://s3-media3.fl.yelpcdn.com/bphoto/m5dL_mNk9rjSJ5jQu17hVw/o.jpg",
      is_closed: false,
      url:
        "https://www.yelp.com/biz/deli-board-san-francisco?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw",
      review_count: 1413,
      categories: "Delis",
      rating: 4.5,
      transactions: "delivery",
      price: "$$",
      location: "1058 Folsom St, San Francisco, CA 94103",
      display_phone: "(415) 552-7687",
      distance: "1201.0092939107112",
    },
    {
      id: 3,
      alias: "wise-sons-san-francisco-6",
      name: "Wise Sons",
      image_url:
        "https://s3-media2.fl.yelpcdn.com/bphoto/O6Apf39llWL3sfye-PseNQ/o.jpg",
      is_closed: false,
      url:
        "https://www.yelp.com/biz/wise-sons-san-francisco-6?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw",
      review_count: 302,
      categories: "Sandwiches",
      rating: 3.5,
      transactions: "",
      price: "$$",
      location: "736 Mission St, San Francisco, CA 94103",
      display_phone: "(415) 655-7887",
      distance: "314.79308965734816",
    },
    {
      id: 4,
      alias: "sammys-on-2nd-san-francisco",
      name: "Sammy's on 2nd",
      image_url:
        "https://s3-media2.fl.yelpcdn.com/bphoto/vi6h1mfMkRwIkyj5VE66FQ/o.jpg",
      is_closed: false,
      url:
        "https://www.yelp.com/biz/sammys-on-2nd-san-francisco?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw",
      review_count: 207,
      categories: "sandwiches",
      rating: 4.0,
      transactions: "delivery",
      price: "$",
      location: "84 2nd St, San Francisco, CA 94105",
      display_phone: "(415) 243-0311",
      distance: "146.3807329561209",
    },
  ];
}

function makeItemsInBasketArray(restaurant) {
  return [
    {
      fav_id: 1,
      restaurant_id: restaurant[0].id,
    },
    {
      fav_id: 2,
      restaurant_id: restaurant[1].id,
    },
    {
      fav_id: 3,
      restaurant_id: restaurant[2].id,
    },
  ];
}

function makeCommentsArray(users, articles) {
  return [
    {
      id: 1,
      text: "First test comment!",
      article_id: articles[0].id,
      user_id: users[0].id,
      date_created: new Date("2029-01-22T16:28:32.615Z"),
    },
    {
      id: 2,
      text: "Second test comment!",
      article_id: articles[0].id,
      user_id: users[1].id,
      date_created: new Date("2029-01-22T16:28:32.615Z"),
    },
    {
      id: 3,
      text: "Third test comment!",
      article_id: articles[0].id,
      user_id: users[2].id,
      date_created: new Date("2029-01-22T16:28:32.615Z"),
    },
    {
      id: 4,
      text: "Fourth test comment!",
      article_id: articles[0].id,
      user_id: users[3].id,
      date_created: new Date("2029-01-22T16:28:32.615Z"),
    },
    {
      id: 5,
      text: "Fifth test comment!",
      article_id: articles[articles.length - 1].id,
      user_id: users[0].id,
      date_created: new Date("2029-01-22T16:28:32.615Z"),
    },
    {
      id: 6,
      text: "Sixth test comment!",
      article_id: articles[articles.length - 1].id,
      user_id: users[2].id,
      date_created: new Date("2029-01-22T16:28:32.615Z"),
    },
    {
      id: 7,
      text: "Seventh test comment!",
      article_id: articles[3].id,
      user_id: users[0].id,
      date_created: new Date("2029-01-22T16:28:32.615Z"),
    },
  ];
}

function makeExpectedArticle(users, article, comments = []) {
  const author = users.find((user) => user.id === article.author_id);

  const number_of_comments = comments.filter(
    (comment) => comment.article_id === article.id
  ).length;

  return {
    id: article.id,
    style: article.style,
    title: article.title,
    content: article.content,
    date_created: article.date_created.toISOString(),
    number_of_comments,
    author: {
      id: author.id,
      user_name: author.user_name,
      full_name: author.full_name,
      nickname: author.nickname,
      date_created: author.date_created.toISOString(),
      date_modified: author.date_modified || null,
    },
  };
}

function makeExpectedArticleComments(users, articleId, comments) {
  const expectedComments = comments.filter(
    (comment) => comment.article_id === articleId
  );

  return expectedComments.map((comment) => {
    const commentUser = users.find((user) => user.id === comment.user_id);
    return {
      id: comment.id,
      text: comment.text,
      date_created: comment.date_created.toISOString(),
      user: {
        id: commentUser.id,
        user_name: commentUser.user_name,
        full_name: commentUser.full_name,
        nickname: commentUser.nickname,
        date_created: commentUser.date_created.toISOString(),
        date_modified: commentUser.date_modified || null,
      },
    };
  });
}

function makeMaliciousArticle(user) {
  const maliciousArticle = {
    id: 911,
    style: "How-to",
    date_created: new Date(),
    title: 'Naughty naughty very naughty <script>alert("xss");</script>',
    author_id: user.id,
    content: `Bad image <img src="https://url.to.file.which/does-not.exist" onerror="alert(document.cookie);">. But not <strong>all</strong> bad.`,
  };
  const expectedArticle = {
    ...makeExpectedArticle([user], maliciousArticle),
    title:
      'Naughty naughty very naughty &lt;script&gt;alert("xss");&lt;/script&gt;',
    content: `Bad image <img src="https://url.to.file.which/does-not.exist">. But not <strong>all</strong> bad.`,
  };
  return {
    maliciousArticle,
    expectedArticle,
  };
}

function makeAmazonFixtures() {
  const testProducts = makeProductsArray();
  const testItemInBasket = makeItemsInBasketArray(testProducts);

  return { testProducts, testItemInBasket };
}

function cleanTables(db) {
  return db.transaction(
    (trx) =>
      trx.raw(
        `TRUNCATE
        dishes,
        favorites,
        whattoeat_restaurants
        
      `
      )
    // .then(() =>
    //   Promise.all([
    //     trx.raw(`ALTER SEQUENCE blogful_articles_id_seq minvalue 0 START WITH 1`),
    //     trx.raw(`ALTER SEQUENCE blogful_users_id_seq minvalue 0 START WITH 1`),
    //     trx.raw(`ALTER SEQUENCE blogful_comments_id_seq minvalue 0 START WITH 1`),
    //     trx.raw(`SELECT setval('blogful_articles_id_seq', 0)`),
    //     trx.raw(`SELECT setval('blogful_users_id_seq', 0)`),
    //     trx.raw(`SELECT setval('blogful_comments_id_seq', 0)`),
    //   ])
    // )
  );
}

function seedUsers(db, users) {
  const preppedUsers = users.map((user) => ({
    ...user,
    password: bcrypt.hashSync(user.password, 1),
  }));
  return db
    .into("blogful_users")
    .insert(preppedUsers)
    .then(() =>
      // update the auto sequence to stay in sync
      db.raw(`SELECT setval('blogful_users_id_seq', ?)`, [
        users[users.length - 1].id,
      ])
    );
}

function seedArticlesTables(db, users, articles, comments = []) {
  // use a transaction to group the queries and auto rollback on any failure
  return db.transaction(async (trx) => {
    await seedUsers(trx, users);
    await trx.into("blogful_articles").insert(articles);
    // update the auto sequence to match the forced id values
    await trx.raw(`SELECT setval('blogful_articles_id_seq', ?)`, [
      articles[articles.length - 1].id,
    ]);
    // only insert comments if there are some, also update the sequence counter
    if (comments.length) {
      await trx.into("blogful_comments").insert(comments);
      await trx.raw(`SELECT setval('blogful_comments_id_seq', ?)`, [
        comments[comments.length - 1].id,
      ]);
    }
  });
}

function seedMaliciousArticle(db, user, article) {
  return seedUsers(db, [user]).then(() =>
    db.into("blogful_articles").insert([article])
  );
}

function makeAuthHeader(user, secret = process.env.JWT_SECRET) {
  const token = jwt.sign({ user_id: user.id }, secret, {
    subject: user.user_name,
    algorithm: "HS256",
  });
  return `Bearer ${token}`;
}

module.exports = {
  makeProductsArray,
  makeAmazonFixtures,
  makeItemsInBasketArray,
  makeExpectedArticle,
  makeExpectedArticleComments,
  makeMaliciousArticle,
  makeCommentsArray,

  cleanTables,
  seedArticlesTables,
  seedMaliciousArticle,
  makeAuthHeader,
  seedUsers,
};
