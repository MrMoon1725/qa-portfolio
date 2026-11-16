# ✅ Documented Test Cases — Alkosto (`alkosto.com`)

These test cases are designed and **executed** against real **Alkosto** user flows, covering **positive**, **negative**, and **edge-case** scenarios.

- **Last Execution:** 11/16/2026 (Google Chrome Incognito, Windows)
- **Summary:** **5 ✅ Passed** | **2 ❌ Failed** | **2 🐞 Bugs Reported**

---

## 📊 Coverage & Execution Summary

| ID | Title | Module | Type | Priority | Status |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **TC-ALK-001** | Successful search for an existing product | Search | Positive | High (P1) | ✅ Passed |
| **TC-ALK-002** | Search with a non-existent term | Search | Negative | Medium (P2) | ❌ Failed ([BUG-002](../04-bug-reports/bug-002-busqueda-sin-resultados-console-error.md)) |
| **TC-ALK-003** | Search with empty or whitespace-only input | Search | Edge Case | Medium (P2) | ❌ Failed ([BUG-001](../04-bug-reports/bug-001-busqueda-espacios.md)) |
| **TC-ALK-004** | Filter by brand and sort by lowest price | Results | Positive | High (P1) | ✅ Passed |
| **TC-ALK-005** | Add product directly from search results | Cart | Positive | High (P1) | ✅ Passed |
| **TC-ALK-006** | Add product from PDP skipping Kombos & add-ons | PDP / Cart | Positive | High (P1) | ✅ Passed |
| **TC-ALK-007** | Update quantity and remove product in `/cart` | Cart | Positive | High (P1) | ✅ Passed |

---

## 📝 Test Case Details

### TC-ALK-001: Successful search for an existing product
- **Module:** Search
- **Priority:** High (P1)
- **Type:** Functional / Positive
- **Preconditions:** User is on `https://www.alkosto.com/`.

| Step | Action | Test Data | Expected Result |
| :--- | :--- | :--- | :--- |
| 1 | Click the `"¿Qué buscas hoy?"` search bar | N/A | Interactive search overlay opens with suggestions (`Lo más buscado`). |
| 2 | Type a valid product keyword | `celular` | Input field displays the typed text. |
| 3 | Press `Enter` or click the search icon | N/A | Redirects to `/search?text=celular` showing result count and product cards with prices and `"Agregar"` button. |

- **Status:** ✅ Passed
- **Evidence:** [View screenshot](../06-accessibility-assets/evidences/tc-alk-001-busqueda-celular.png)

---

### TC-ALK-002: Search with a non-existent term
- **Module:** Search
- **Priority:** Medium (P2)
- **Type:** Functional / Negative
- **Preconditions:** User is on `https://www.alkosto.com/`.

| Step | Action | Test Data | Expected Result |
| :--- | :--- | :--- | :--- |
| 1 | Click the `"¿Qué buscas hoy?"` search bar | N/A | Search input becomes active. |
| 2 | Enter a string with no matching products | `xyzqwerty99999` | Field accepts the string. |
| 3 | Press `Enter` | N/A | System displays a user-friendly "no results found" message (no HTTP 500 errors or blank screen). |

- **Status:** ❌ Failed
- **Linked Bug:** [BUG-002](../04-bug-reports/bug-002-busqueda-sin-resultados-console-error.md) — Intermittent blank screen, failed Network request, and `Uncaught TypeError: window.ga is not a function` in Console.
- **Evidences:**
  - [DevTools failure & blank screen](../06-accessibility-assets/evidences/bug-002-devtools-pantalla-blanca.png)
  - [Expected message observed after page reload](../06-accessibility-assets/evidences/tc-alk-002-mensaje-sin-resultados.png)

---

### TC-ALK-003: Search with empty or whitespace-only input
- **Module:** Search
- **Priority:** Medium (P2)
- **Type:** Boundary / Edge Case
- **Preconditions:** User is on `https://www.alkosto.com/`.

| Step | Action | Test Data | Expected Result |
| :--- | :--- | :--- | :--- |
| 1 | Click the `"¿Qué buscas hoy?"` search bar | N/A | Search overlay opens. |
| 2 | Enter whitespace characters only and press `Enter` | `"   "` | System should not navigate to a broken/empty page; it should remain on the search bar or display a validation prompt. |

- **Status:** ❌ Failed
- **Linked Bug:** [BUG-001](../04-bug-reports/bug-001-busqueda-espacios.md) — Search stays loading indefinitely on a blank screen.
- **Evidence:** [View screenshot](../06-accessibility-assets/evidences/bug-001-busqueda-espacios-cargando.png)

---

### TC-ALK-004: Filter by brand and sort by lowest price
- **Module:** Search Results
- **Priority:** High (P1)
- **Type:** Functional / Positive
- **Preconditions:** User is on `/search?text=celular`.

| Step | Action | Test Data | Expected Result |
| :--- | :--- | :--- | :--- |
| 1 | Click the `"Filtrar"` button | N/A | Filter drawer/modal opens (`Filtros aplicados (0)`). |
| 2 | Expand `Marca`, select a brand, and click `"Aplicar y ver resultados"` | `SAMSUNG` | Product list updates to show only Samsung items and active filter count shows `1`. |
| 3 | Click `"Ordenar"`, choose `Precio: menor a mayor`, and click `"Aplicar y ver resultados"` | `Precio: menor a mayor` | Products are sorted in ascending order by current sale price. |

- **Status:** ✅ Passed
- **Evidence:** [View screenshot](../06-accessibility-assets/evidences/tc-alk-004-filtro-samsung-orden-precio.png)

---

### TC-ALK-005: Add product directly from search results
- **Module:** Shopping Cart
- **Priority:** High (P1)
- **Type:** Functional / Positive
- **Preconditions:** User is on `/search?text=celular` and `Mi carrito` badge is `0`.

| Step | Action | Test Data | Expected Result |
| :--- | :--- | :--- | :--- |
| 1 | Locate a product card with an orange `"Agregar"` button | N/A | Button is visible and enabled. |
| 2 | Click `"Agregar"` | N/A | Product is added asynchronously without full page reload and `Mi carrito` badge increments from `0` to `1`. |

- **Status:** ✅ Passed
- **Evidences:**
  - [Before adding](../06-accessibility-assets/evidences/tc-alk-005-carrito-antes.png)
  - [After adding (`Mi carrito: 1`)](../06-accessibility-assets/evidences/tc-alk-005-carrito-despues.png)

---

### TC-ALK-006: Add product from PDP skipping Kombos & add-ons
- **Module:** Product Detail Page (PDP) / Cart
- **Priority:** High (P1)
- **Type:** Functional / Positive
- **Preconditions:** User is on the Product Detail Page (PDP) of an available smartphone.

| Step | Action | Test Data | Expected Result |
| :--- | :--- | :--- | :--- |
| 1 | Select storage, color, and delivery method (`Envío gratis`) | `256 GB`, `Envío gratis` | Options remain selected and price updates if applicable. |
| 2 | Click `"Agregar al carrito"` | N/A | `"Compra en Kombo"` modal opens. |
| 3 | Click `"Agregar sin Kombo"` | N/A | Advances to `"Complementa tu compra"` modal. |
| 4 | Click `"Continuar"` | N/A | Upsell funnel closes and header `Mi carrito` badge increments by `1`. |

- **Status:** ✅ Passed
- **Evidences:**
  - [Compra en Kombo modal](../06-accessibility-assets/evidences/tc-alk-006-modal-kombo.png)
  - [Product added in `/cart`](../06-accessibility-assets/evidences/tc-alk-006-carrito-agregado.png)

---

### TC-ALK-007: Update quantity and remove product in `/cart`
- **Module:** Shopping Cart
- **Priority:** High (P1)
- **Type:** Functional / Positive
- **Preconditions:** At least 1 product is in `Mi carrito` and user navigates to `/cart`.

| Step | Action | Test Data | Expected Result |
| :--- | :--- | :--- | :--- |
| 1 | Change product quantity selector from `1` to `2` | `2` | Subtotal and Total to pay recalculate accurately (2x). |
| 2 | Click `"Eliminar"` on the product (or select `0 - eliminar`) | N/A | Product is removed from the list, total resets to `$0` / empty cart message, and `Mi carrito` badge returns to `0`. |

- **Status:** ✅ Passed
- **Evidences:**
  - [Quantity updated](../06-accessibility-assets/evidences/tc-alk-007-cantidad-actualizada.png)
  - [Quantity set to 2 & Subtotal/Total recalculated](../06-accessibility-assets/evidences/tc-alk-007-cantidad-2-subtotal.png)
  - [Product removed & empty cart](../06-accessibility-assets/evidences/tc-alk-007-carrito-vacio.png)
