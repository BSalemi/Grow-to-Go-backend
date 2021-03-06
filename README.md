![Grow To Go logo](https://i.imgur.com/EWCxpmq.png)

# Grow To Go

Flatiron School React & Redux Project - Grow To Go, a React / Redux application (with a Rails API backend), is a mock ecommerce site that allows users to find the perfect houseplant that fits their lifestyle, needs, and capabilities.  

## Installation

For local usage of the application, please follow the belong instructions.

After cloning the repo, install the dependencies by executing the below command in your terminal:

$ bundle install

Launch the application using the below command in your terminal:

$ rails s

Please note that you will also have to follow the installation instructions for the frontend application at: 

https://github.com/BSalemi/Grow-To-Go-React

## Usage

Upon launching the application, the user can navigate to localhost:PortNumber/ to arrive at the application login page prompting the user sign-up or log-in.

Following a successful user sign-up or log-in, the user will arrive at Grow to Go's homepage. Once the homepage is rendered, a fetch request is made to the Rails backend to collect and render all of the houseplants found in the seed file. 

[![Grow To Go Screen Grab](https://i.imgur.com/XhIXIVy.png)](https://vimeo.com/366899721)

From here, users have a number of different options to find the perfect plant for them. 


   * Sort for plants by:
    	- Price
    	- Size
    	- Experience Level
    	- Light Requirements
      - Pet Friendliness/Non-toxic to cats and dogs
   * Use the search feature to find plants directly by name.
   * Click on a plant to be brought to that particular plant's show page which includes additional information about and reviews for that plant. Users can also leave their own review or delete their past reviews here.
   ![Grow To Go Screen Grab](https://i.imgur.com/liUR3sE.png)
   * Add a desired plant to their shopping cart by clicking the `Add to Cart` button.
   * Hover over the Cart icon to display the contents of their cart.
   * Increment or decrement/remove a plant in their cart by clicking the `+` or `trash can` icons.
   * Complete their transaction by clicking the `Checkout` button.
   
## Contribution 
   
Bug reports and pull requests are welcome on GitHub at https://github.com/BSalemi/Grow-To-Go-React. This project is intended to be a safe,   welcoming space for collaboration. Contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

## License 

The system is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
