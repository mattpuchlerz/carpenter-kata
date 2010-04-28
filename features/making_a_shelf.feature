Feature: Making a shelf from several pieces
  In order to make shelves of a given length
  As a carpenter
  I want to take pieces from my inventory and cut them to size, using as few pieces to make the shelf as possible

  Scenario: Making a shelf from a perfect-sized piece within the inventory
    Given a piece in the inventory that measures "10"
    When I make a shelf that measures "10"
    Then I should have a piece that measures "10"
    And I should have no pieces left in the inventory
  
  Scenario: Making a shelf that is shorter than a piece in the inventory
    Given a piece in the inventory that measures "15"
    When I make a shelf that measures "10"
    Then I should have a piece that measures "10"
    And I should have a piece left in the inventory that measures "5"
  
  Scenario: Making a shelf from 2 pieces in the inventory
    Given pieces in the inventory that measure "20, 25"
    When I make a shelf that measures "35"
    Then I should have pieces that measure "25, 10"
    And I should have a piece left in the inventory that measures "10"
  
  Scenario: Making a shelf from many pieces in the inventory
    Given pieces in the inventory that measure "40, 10, 25, 12, 13"
    When I make a shelf that measures "62"
    Then I should have pieces that measure "40, 13, 9"
    And I should have pieces left in the inventory that measure "25, 10, 3"
