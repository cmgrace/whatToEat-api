BEGIN;

TRUNCATE
    dishes,
  whattoeat_restaurants
  RESTART IDENTITY CASCADE;

INSERT INTO dishes (restaurant_id, name, dish_price, dish_img, dish_desc)
VALUES
(1, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/KfzQF5C1C8Ttha76fhmLkg/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(1, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/ZHhIwhi6YVI2jcWSP5r5MA/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(1, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/paUSQYFeSQF46svxRXbKVg/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(1, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/1qBgLajMkX17YodD6UXrMw/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(1, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/t4u_23eLUsW-HghPF_lpUw/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(2, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/zcbgJu1ae7OxKeqIeYCS6A/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(2, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/SZs_2v4pi0QJp2dFzDbHvw/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(2, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/P4NLra155XveoxSXRKSKUw/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(2, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/tNnD9hISUFA-LtWdz_4tRg/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(2, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/Y9F4TgFEJ8FrUeKI_vX6og/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(3, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(3, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(3, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(3, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(3, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(4, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(4, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(4, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(4, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(4, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(5, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(5, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(5, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(5, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(5, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(6, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(6, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(6, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(6, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(6, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(7, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(7, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(7, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(7, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(7, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(8, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(8, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(8, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(8, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(8, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(9, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(9, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(9, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(9, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(9, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(10, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(10, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(10, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(10, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(10, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(11, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(11, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(11, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(11, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(11, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(12, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(12, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(12, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(12, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(12, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce');

COMMIT;