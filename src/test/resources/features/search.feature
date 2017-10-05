Feature: Sample

  @ui @pageobject
  Scenario: Should be able to search for a product from the input box
    Given John is viewing the Etsy landing page
    When he searches for a product from the input box
    Then the result should be displayed

  @ui @screenplay
  Scenario: Should be able to search for a product from the input box (screenplay)
    Given John is viewing the Etsy landing page (screenplay)
    When he searches for a product from the input box (screenplay)
    Then the result should be displayed (screenplay)

  @ui @wip
  Scenario: Should be able to search for a product from the drop-down menu
    Given John is viewing the Etsy landing page
    And John mouseovers on the <<main menu>>
    And John mouseovers on <<sub-menu item>>
    When John selects an <<item/ prodcut>> from the drop-down menu
    Then the <<items/product>>should be displayed
  
  Exmaples:
   |Main Menu                   | Sub-Menu       | Item/Product |
   |Jewelry  and Accessories    |Accessories     |Hats & Caps   |
   |Clothing & Shoes            |Womens          | Dresses      |
   |Homes &Living               |Home            |Homes Decor   |
   |Craft supplies & Tolls      |Home & Hobby    | Framing      |
   

@api @wip
Feature: Get the product/item by its unique id
  Scenario: User calls web service to get product/item by its unique id
    Given an item exists under the <<menu items>>
    When a user retrieves product/item by its unique id
    Then the status code is <<As per API>>
    And response includes the following
    
    |Response message|	Code|
    |Item Found      | 100  |
    |Item not Found  | 200  |
    
    
 @api @wip
Feature: Track the customer order progress and delivery

  Scenario: User calls web service to track the progres of an order placed by the customer
    Given list of items are added to shopping cart 
    When Order has been placed by the customer 
    Then the status code is <<As per API>>
    And response includes the following
    
    |Response message                                        |	Code|
    |Item added to the cart                                  | 102  |
    |Payment ahs been made                                   | 202  |
    |Order placement Acknowledgeemnt email sent to customer  | 302  |
    |Items list sent to warehouse for shippment              | 402  |
    |Item Shippment In Progress                              | 502  |
    |Item delivered to the customer                          | 602  |
 
    
 
    
 








