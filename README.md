# Pizza-Restaurant

API backend project for tracking pizza restaurants.

Technologies Used
Ruby on Rails
SQLite3
Installation & Set up
Clone the repository

https://github.com/gorety86/Piazza-Restorant
Install Dependecies

bundle install
Migration and Seeding

rails db:migrate db:seed
Run Server

rails s
Project Guidelines
Relationships
A Restaurant has many Pizzas through RestaurantPizza.
A Pizza has many Restaurants through RestaurantPizza.
A RestaurantPizza belongs to a Restaurant and also belongs to a Pizza.

# Deliverables
GET /restaurants

http://localhost:3000/restaurants
[
    {
        "id": 1,
        "name": "Golden Grill",
        "address": "962 Stiedemann Lights"
    },
    {
        "id": 2,
        "name": "Red Eatery",
        "address": "7949 Nitzsche Stream"
    },
    {
        "id": 3,
        "name": "Red Cafe",
        "address": "652 Salome Lakes"
    },
    {
        "id": 4,
        "name": "Red Spoon",
        "address": "5473 Sherrill Harbors"
    },
    {
        "id": 5,
        "name": "Sweet Dragon",
        "address": "462 Runolfsson Dam"
    },
    {
        "id": 6,
        "name": "Orange Spoon",
        "address": "589 Frami Trafficway"
    },
    {
        "id": 7,
        "name": "UF Pub",
        "address": "199 Carlos Point"
    }
]
GET /restaurants/:id

{
    "id": 4,
    "name": "Red Spoon",
    "address": "5473 Sherrill Harbors",
    "pizzas": [
        {
            "id": 6,
            "name": "St. Louis Pizza",
            "ingredients": "cheddar cheese,swiss cheese, tomato sauce, oregano"
        },
        {
            "id": 7,
            "name": "Neopolitan Pizza",
            "ingredients": "tomato sauce, mozzarella cheese, basil"
        },
        {
            "id": 4,
            "name": "Greek Pizza",
            "ingredients": "tomato sauce, cheddar cheese, feta cheese, black olives, red onion"
        }
    ]
}
GET /pizzas

[
    {
        "id": 1,
        "name": "New York-Style Pizza",
        "ingredients": "pepperoni,garlic, mushroom, anchovies, parmesan-cheese, oregano, red-pepper"
    },
    {
        "id": 2,
        "name": "California Pizza",
        "ingredients": "artichoke, goat cheese, mustard,ricotta cheese, pate, red peppers"
    },
    {
        "id": 3,
        "name": "Chicago Pizza",
        "ingredients": "sausage, pepperoni, onion, mushrooms,green peppers"
    },
    {
        "id": 4,
        "name": "Greek Pizza",
        "ingredients": "tomato sauce, cheddar cheese, feta cheese, black olives, red onion"
    },
    {
        "id": 5,
        "name": "Detroit Pizza",
        "ingredients": "pepperoni, brick cheese, mushrooms, olive"
    },
    {
        "id": 6,
        "name": "St. Louis Pizza",
        "ingredients": "cheddar cheese,swiss cheese, tomato sauce, oregano"
    },
    {
        "id": 7,
        "name": "Neopolitan Pizza",
        "ingredients": "tomato sauce, mozzarella cheese, basil"
    },
    {
        "id": 8,
        "name": "Sicilian Pizza",
        "ingredients": " tomato, onion, anchovies, herbs"
    }
]
POST /restaurant_pizzas

{
    "price": 22,
    "pizza_id": 1,
    "restaurant_id": 1
}
License and Copyright.
MIT license

Copyright (c) [2023] [Gorety Wagutu]

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Author Info:
Gorety Wagutu

