Feature: Búsqueda, filtrado y carrito de compras en Alkosto
  Como comprador de alkosto.com
  Quiero buscar productos, filtrarlos y gestionarlos en mi carrito
  Para completar mi selección de compra correctamente

  Background:
    Given que el usuario abre la página principal "https://www.alkosto.com/"

  Scenario: Búsqueda exitosa desde la barra principal
    When hace clic en la barra "¿Qué buscas hoy?"
    And escribe "celular" y presiona Enter
    Then el sistema muestra la página de resultados con el conteo de productos encontrados
    And cada tarjeta muestra nombre, precio y el botón "Agregar"

  Scenario: Búsqueda sin resultados
    When busca el término inexistente "xyzqwerty99999"
    Then el sistema informa que no hay coincidencias para la búsqueda
    And no muestra errores HTTP 500 ni pantalla en blanco

  Scenario: Agregar producto al carrito desde PDP omitiendo Kombos
    Given que el usuario ingresa al detalle de un celular disponible
    When selecciona "Envío gratis" y hace clic en "Agregar al carrito"
    And en el modal "Compra en Kombo" selecciona "Agregar sin Kombo"
    And en el modal "Complementa tu compra" selecciona "Continuar"
    Then el contador de "Mi carrito" en la cabecera aumenta en 1
