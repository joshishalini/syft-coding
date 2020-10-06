# Syft

We deliver gifts at your doorstep.

## Prerequisite:

Ruby version: ruby 2.6.3p62
Rails version: Rails 6.0.3.3

## Project setup(Installation):

	* Clone the git repo from git@github.com:joshishalini/syft-coding.git.
	* Install all gems using `bundle` command.
	* To install webpackers: bundle exec rails webpacker:install and bundle exec rails webpacker:compile
	* Create Database: rails db:create
	* Run Migration and seed: rails db:migrate, rails db:seed

	* Start server using command : rails s
 
## Features:

	* Listing of all products.
	* Add to cart option.
	* Checkout process.
	* Edit your cart.

## How to use:

	Open localhost:3000 to your browser.
	You landed at the products listing page. 
	Add to cart your product according to your requirement. 
	Click on checkout button and you will redirect to the show page of your order. 
	Where you can check your products and the total price. 
	If their is any discount on your purchase it applied automatically. 
	You can also edit your order and complete your order but clicking on checkout. 
	
 ## Limitation:
 	. Admin can't add new promotion rules.
 	. Can't delete products after adding once.

 ## Future Plans:
 	. Dynamic promotion rules.
 	. Change in UI.