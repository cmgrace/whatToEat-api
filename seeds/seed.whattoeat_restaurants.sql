BEGIN;

TRUNCATE
dishes,
  whattoeat_restaurants,
  favorites
  RESTART IDENTITY CASCADE;

INSERT INTO whattoeat_restaurants (alias, name, image_url, is_closed, url, review_count, categories, rating, transactions, price, location, display_phone, distance)
VALUES
('molinari-delicatessen-san-francisco',
            'Molinari Delicatessen',
            'https://s3-media0.fl.yelpcdn.com/bphoto/fwcKOndKjsvCOQJush9dXQ/o.jpg',
             false,
            'https://www.yelp.com/biz/molinari-delicatessen-san-francisco?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw',
            1154,
            'Delis',
            4.5,
            'pickup,delivery',
            '$$',
            '373 Columbus Ave, San Francisco, CA 94133',
            '(415) 421-2337',
            1453.998141679007),

('deli-board-san-francisco',
            'Q Board',
            'https://s3-media0.fl.yelpcdn.com/bphoto/fBtAMu25uFqRvXbGdJ1qlQ/o.jpg',
            false,
           'https://www.yelp.com/biz/deli-board-san-francisco?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw',
            1413,
            'Delis',
            4.5,
            'delivery',
            '$$',
            '1058 Folsom St, San Francisco, CA 94103',
            '(415) 552-7687',
            1201.0092939107112),
            (
'wise-sons-san-francisco-6',
            'Wise Sons',
            'https://s3-media0.fl.yelpcdn.com/bphoto/O2lN0hLko9u3KRACu3qWtg/o.jpg',
            false,
            'https://www.yelp.com/biz/wise-sons-san-francisco-6?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw',
            302,
            'Sandwiches',
            3.5,
            'delivery',
            '$$',
            '736 Mission St, San Francisco, CA 94103',
            '(415) 655-7887',
            314.79308965734816
            ),
            (
'sammys-on-2nd-san-francisco',
            'Sammy’s on 2nd',
            'https://s3-media0.fl.yelpcdn.com/bphoto/cBM_KEb6WWjkXqVBuzc1bA/o.jpg',
            false,
            'https://www.yelp.com/biz/sammys-on-2nd-san-francisco?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw',
            207,
            'Bar',
            4.0,
            'delivery',
            '$',
            '84 2nd St, San Francisco, CA 94105',
            '(415) 243-0311',
            146.3807329561209
            ),
            (
'limoncello-san-francisco',
            'Limoncello',
            'https://s3-media0.fl.yelpcdn.com/bphoto/2avChXB3tKjklFhY1Npf0A/o.jpg',
            false,
            'https://www.yelp.com/biz/limoncello-san-francisco?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw',
            1124,
            'Beer, Wine & Spirits',
            5.0, 
            'pickup, delivery',
            '$$',
            '1400 Sutter St, San Francisco, CA 94109',
            '(415) 638-6361',
            2076.1540447650927
            ),
            (
 'sutter-st-cafe-san-francisco',
            'Sutter St. Cafe',
            'https://s3-media0.fl.yelpcdn.com/bphoto/tTN2z392sq953MlO3ZBrJQ/o.jpg',
            false,
            'https://www.yelp.com/biz/sutter-st-cafe-san-francisco?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw',
            208,
            'cafes',
            4.5,
            'pickup, delivery',
            '$',
            '450 Sutter St, San Francisco, CA 94108',
            '(415) 362-8342',
            737.7876443304846
            ),
            (
'5th-avenue-deli-and-market-san-francisco',
            '5th Avenue Deli',
            'https://s3-media0.fl.yelpcdn.com/bphoto/YfutsJ-CP9W3qY7GgJNQxw/o.jpg',
            false,
            'https://www.yelp.com/biz/5th-avenue-deli-and-market-san-francisco?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw',
            57,
            'Sandwiches',
            4.5,
            'pickup, delivery',
            '$',
            '4 Embarcadero Ctr, San Francisco, CA 94111',
            '(415) 757-0950',
            1005.1478381004005
            ),
            (
'sf-deli-and-wine-san-francisco-3',
            'SF Deli & Wine',
            'https://s3-media0.fl.yelpcdn.com/bphoto/ODXHcG5daF6rqGTIs6pKtQ/o.jpg',
            false,
            'https://www.yelp.com/biz/sf-deli-and-wine-san-francisco-3?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw',
            29,
            'Beer, Wine & Spirits',
            4.0,
            'pickup, delivery',
            '$',
            '810 Mission St, San Francisco, CA 94103',
            '(415) 512-7847',
            556.544681533414
            ),
            (
'liquor-and-deli-on-union-square-san-francisco',
            'Deli On Union Square',
            'https://s3-media0.fl.yelpcdn.com/bphoto/p1OvWrHoKhojU_i84A9K-g/o.jpg',
            false,
            'https://www.yelp.com/biz/liquor-and-deli-on-union-square-san-francisco?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw',
            37,
            'Beer, Wine & Spirits',
            4.0,
            'pickup, delivery',
            '$',
            '423 Stockton St, San Francisco, CA 94108',
            '(415) 434-8210',
            729.9634773299399
            ),
            (
'the-boys-deli-san-francisco',
            'The Boys’ Deli',
            'https://s3-media0.fl.yelpcdn.com/bphoto/JXJTaO3KJXFEr8SWFSf6cA/o.jpg',
            false,
            'https://www.yelp.com/biz/the-boys-deli-san-francisco?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw',
            336,
            'Breakfast & Brunch',
            4.5,
           'pickup, delivery',
            '$$',
            '2222 Polk St,San Francisco, CA 94109',
            '(415) 776-3099',
            2235.2674125931903
            ),
            (
'palermo-ii-delicatessen-san-francisco',
            'Palermo II Delicatessen',
            'https://s3-media0.fl.yelpcdn.com/bphoto/PCETQIPGIHTOpPwNIYqoCg/o.jpg',
            false,
            'https://www.yelp.com/biz/palermo-ii-delicatessen-san-francisco?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw',
            78,
            'Delis',
            5.0,
            'pickup, delivery',
            '$$',
            '658 Vallejo St, San Francisco, CA 94133',
            '(415) 937-0161',
            1517.0065811617371
            ),
            (
'working-girls-cafe-san-francisco-3',
            'Working Girls’ Cafe',
            'https://s3-media0.fl.yelpcdn.com/bphoto/X7MFBtLU-IPYlO-DXZQAzA/o.jpg',
            false,
            'https://www.yelp.com/biz/working-girls-cafe-san-francisco-3?adjust_creative=5Brfn2GCNjfiuMqdnkxwXw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=5Brfn2GCNjfiuMqdnkxwXw',
            418,
            'Chinese',
            4.0,
            'pickup, delivery',
            '$$',
            '122 New Montgomery St, San Francisco, CA 94105',
            '(415) 537-1170',
            28.22725630514869
            );

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

(3, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/tI3VBgg34WTx-a-6CsGTYg/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(3, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/0R5BY_XG1FFGV8OVmmp5iw/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(3, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/SUhhpWYIn-j856SVCKmp8g/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(3, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/GasEsAKJpEFa3-m60IkMrg/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(3, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/eKQ9MKE1kcxlO1votoNF4g/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(4, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/-EtLhpzPRnoKYzWJNt3U5w/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(4, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/2uVuafFO-X34KCmxS2AhBQ/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(4, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/gFgfkfQ7YfEzA2XpeFbXaw/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(4, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/1mW6uhyOKem-s51T7hwWSw/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(4, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/1Bo9h3QI-OxSEuScqXPdkA/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(5, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/nhdVgTZ6_ToZAbe6REkY8A/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(5, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/dj5dVhifb90LiRjeHtya8g/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(5, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/TQpq45ON04EzFYiTEcATtg/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(5, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/V-zraPJ5jbo20AFMPOimbw/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(5, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/IgNOWEzUK0P_fvRlHCN3lg/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(6, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/2-ivAOn057RMimLAvo9ulA/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(6, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/2Ev9mUdiIZb6gEzI9XrYZQ/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(6, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/o6Eicrnp4M9jNpWtmdzmVw/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(6, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/G2hC9beVdYikSIDZEu5oJw/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(6, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/IL2zZKwltn2fUnIbdfS4Fg/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(7, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/gNH1LAIwNPB-n2Wm1b2HUA/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(7, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/ZvbiGMLQzTEp_uphUfqhTw/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(7, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/4lsgrezwELDUQW3iG3iOIw/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(7, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/o2WtS5V3mZTznCG9EuEuUQ/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(7, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/MG3ZkJjEgMKXsSKGeyUe7Q/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(8, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/tTN2z392sq953MlO3ZBrJQ/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(8, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/4DBmKZlDm4RdGOfEWKD1_A/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(8, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/0NtCgvFA3M2rEsBHhB-qpA/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(8, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/qd0XfVZ4MF6I-Qt_xHXjKQ/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(8, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/MPmMpEMGpNJtebOFh0yVug/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(9, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/Ina0erE_N8tgHDQoPdsNFA/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(9, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/-vPyXUk2A765JOBrS8BMhQ/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(9, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/inNV88lmxTxRXXawhSZYrQ/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(9, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/KNsNyr-mlIvYVV-b3j22hw/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(9, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/Ldsnhh7iqSkvwPMV5onwnA/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(10, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/H7paQIR--I3fxzmVGWVNsw/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(10, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/gNxl4mX11IClsSkcX4_p_w/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(10, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/dvAbt1FwDvbKsQBCcjqu3w/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(10, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/UVXYfKrlyGYlpnKgYzw6kQ/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(10, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/pejCDNkYBfHIeif6RRFsfQ/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(11, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/q3r5mXyhixAQoHHwiQeWkg/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(11, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/4Ph21iQI_aZ3M083KdriXA/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(11, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/o_oKZ7dE0Pn4caJWdAfz-w/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(11, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/VgK0NdZLJ9rcIALF3uDGfw/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(11, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/wBOLR0lXmLHg_-45ZLCAVg/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce'),

(12, 'A La Francese', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/nh_Z6KmzX9djVqMeuogOwg/o.jpg', 'Sautéed in white wine and lemon sauce with mushrooms'),
(12, 'Parmigiana', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/3kbujXVj2txbdIcpy-N4Aw/o.jpg', 'Pan fried and topped with marinara sauce and mozzarella cheese'),
(12, 'Alfredo', '12.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/m5ggtLCMIh4zpuhtMd9KdA/o.jpg', 'Parmesan cream sauce with a hint of garlic served with tender chicken breast'),
(12, 'Marsala', '13.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/4B7Xmgh0f0o5VxudBWFKRQ/o.jpg', 'With mushrooms, shallots, & sage in marsala wine sauce'),
(12, 'Chicken Carbonara', '14.95', 'https://s3-media0.fl.yelpcdn.com/bphoto/RLpCNFXZE6fOk9T8KNI6uw/o.jpg', 'With wild mushrooms, onion, pepper and Italian herbs in a cherry wine sauce');

COMMIT;
