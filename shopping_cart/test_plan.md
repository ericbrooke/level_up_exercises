# Test Plan for Shopping Cart

The shopping cart behaves a lot like every other cart you've seen on the internet. We're not shooting for the stars on this one.

## I should be able to add, remove, and change quantities on items in my cart.
 - Add item to cart, should increase the cart contents
 - remove item from cart, should decrease the cart contents
 - Add two items of same type to cart, results in one item with a quantity of two
 - remove one of the items from cart, whilst keeping the other, results the same product with one quantity

## I should be able to get back to item pages from the cart by clicking on individual cart item lines.
 - There should be a button/link for each item in the cart
 - The link for each product takes us to the correct product page

## I should be able to put in my address information to get shipping estimates.
 - The form allows you to enter an address
 - The form can validate a correct address
 - The form will reject invalid address
 - From the shipping address and cart contents we can perform a shipping estimate

## I should be able to add coupons, which are hopefully not expired.
 - I should be able to add a coupon to my cart
 - I should be able to remove a coupon
 - The coupon should be valid in terms of date and product
 - The total in the shopping cart should be reduced by valid coupons

## Pay attention to cases such as logging in (if I have items in my cart as an anonymous user, but also have cart items from a previous authenticated session), or adding another item of the same SKU as others in my cart.
- check to see if valid session data if not logged in
- check to see if it remembers what should be in your cart

# Don't worry about product pages or checkout.
