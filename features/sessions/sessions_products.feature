Feature: Product session
  Scenario: Not signed in
    Given the user is not signed in
    And is working on a thesis with id 1
    When he visits the page for listing all products
    Then he should see session error message
    When he visits the page for creating a new product
    Then he should see session error message
    When he visits the page for the product with id 1
    Then he should see session error message

  Scenario: Signed in as a student
    Given the user signed in as a student
    And is working on a thesis with id 1
    When he visits the page for listing all products
    Then he should not see the session error message
    When he visits the page for creating a new product
    Then he should not see the session error message
    When he visits the page for the product with id 1
    Then he should not see the session error message

  Scenario: Signed in as a professor
    Given the user signed in as a professor
    And is working on a thesis with id 1
    When he visits the page for listing all products
    Then he should not see the session error message
    When he visits the page for creating a new product
    Then he should see session error message
    When he visits the page for the product with id 1
    Then he should not see the session error message