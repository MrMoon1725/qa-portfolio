Feature: Search, filtering, and shopping cart on Alkosto
  As a shopper on alkosto.com
  I want to search for products, filter results, and manage my cart
  So that I can complete my product selection accurately

  Background:
    Given the user opens the homepage "https://www.alkosto.com/"

  Scenario: Successful product search from the main search bar
    When the user clicks the "¿Qué buscas hoy?" search bar
    And types "celular" and presses Enter
    Then the system displays the search results page with the total result count
    And each product card displays a name, price, and "Agregar" button

  Scenario: Search with no matching results
    When the user searches for the non-existent term "xyzqwerty99999"
    Then the system informs the user that no matches were found
    And no HTTP 500 errors or blank screens are shown

  Scenario: Add product to cart from PDP skipping Kombos
    Given the user opens the Product Detail Page of an available smartphone
    When the user selects "Envío gratis" and clicks "Agregar al carrito"
    And selects "Agregar sin Kombo" in the "Compra en Kombo" modal
    And selects "Continuar" in the "Complementa tu compra" modal
    Then the "Mi carrito" badge counter in the header increments by 1
