# Vance Refrigeration - E-Commerce Site

This app allows customers to view refrigeration products available for purchase.  Anyone can view but only signed-in users can add items to their shopping cart.  Total price is calculated in the cart and then purchases are completed using Stripe, a third-party app that handles credit card transactions.  (Note: we used Stripes testing functionality, which allows us to use a fake credit card number to simulate the transaction.)  Once an order is complete, the shopping cart is emptied and the order is added to 'My Orders,' which allows users to view their order history.


### [Live App](https://vance-refrigeration.github.io/team-project-client/) | [Deployed API](https://obscure-springs-81184.herokuapp.com/) | [Client Repository](https://github.com/vance-refrigeration/team-project-client)


## Technologies

- HTML
- CSS/SASS
- Bootstrap
- Javascript
- jQuery
- AJAX
- Handlebars
- MongoDB
- Mongoose
- Express
- Heroku
- Github Pages

## Planning, Process & Problem-Solving

We started with a wireframe, which led to planning our collections, documents, and their interplay and ultimately creating an ERD.

Cole set up a basic HTML template using Bootstrap & Handlebars so that we had a skeleton website.

Next we set up the API - creating products to test, creating a collection of Orders and a collection of Users.  Our shopping cart lives in Users as an array called 'cart.'  We tested all collections - Products, Orders & Users (including authentication) - using curl scripts.

We began work on the Client by making sure that products displayed, then adding products to the shopping cart, populating order history, and lastly integrating Stripe to handle checkout.

Most of our time was spent pair-programming but we held frequent stand-ups to be sure that we weren't working in such a way that we would create complex merge conflicts.  More challenging problems and major plamning decisions were made as a team.  On occasion, all four of us huddled around one computer and at times we were all working on our own machines, but always with a well-communicated common goal.


### ERD
```[Entity Relationship Diagram]
  Users {
    _id
    username
    password
    cart
    cartTotal (A virtual attribute of the total prices of all items in cart)
  }
  Orders {
    _owner (This is a user ID)
    _id
    orderItems (An array of the items)
    orderTotal (A virtual attribute of the cost of items in orderItems)
  }
  Products {
    _id
    name
    description
    price
  }```

## Cataloge of Routes

- A post to 'sign-up' routes to users/signup
- A post to 'sign-in' routes to users/signin
- A delete request to 'signout' routes to users/signout
- A patch to 'change-password/:id' routes to users/changepw
- A patch to 'add-product/:id' routes to users/addproduct
- A patch to 'remove-product/:id' routes to users/removeproduct
- A patch to 'empty-cart/:id' routes to users/emptycart
- Products & Orders use the standard RESTful routes;
  - Orders uses only 'index' & 'show'

## Development


### Goals for Future Versions
- Search function
- A more sophistocated/logical process for order numbers
- Photos of products
- A longer list of products
- Return process
