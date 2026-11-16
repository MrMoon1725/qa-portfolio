# 📄 Test Plan — Alkosto E-Commerce (`alkosto.com`)

## 1. Objective
Validate the core functionality of critical user flows—navigation, search, filtering, Product Detail Page (PDP), and shopping cart—on the **Alkosto** online store (`https://www.alkosto.com/`).

## 2. Scope

### ✅ In-Scope
- **Search Bar:** `"¿Qué buscas hoy?"` placeholder, interactive suggestions overlay (`Lo más buscado`, `Lo mejor para ti`), and keyword search.
- **Search Results Page (`/search`):** Result count summary, sorting (`Ordenar`), and faceted filtering (`Filtrar` by brand, price range, RAM, storage, etc.).
- **Product Detail Page (PDP):** Variant selection (storage, color), quantity, delivery options (`Envío gratis` / `Recoge gratis`), and `"Agregar al carrito"` flow including upsell modals (`Compra en Kombo`, `Complementa tu compra`).
- **Shopping Cart (`/cart`):** Header cart badge updates (`Mi carrito`), quantity modifications, item removal, and subtotal/discount/total calculations.

### ❌ Out-of-Scope
- Real payment gateway transactions and credit card processing.
- Account registration with real personal data or submitting live production orders.
- High-volume load/stress testing against production servers.

## 3. Testing Strategy
- **Functional Testing:** Positive, negative, and boundary/edge-case scenarios (e.g., non-existent terms, whitespace-only input).
- **Exploratory Testing:** Responsive layout validation and modal interaction checks.
- **Usability & Accessibility:** Keyboard navigation and clarity of error/validation messages.

## 4. Entry & Exit Criteria
- **Entry:** Site accessible in an up-to-date browser (Chrome/Edge/Firefox) with a stable internet connection.
- **Exit:** 100% of critical (P1) test cases executed and all blocking defects documented in `04-bug-reports/`.

## 5. Risks & Mitigation
| Risk | Impact | Mitigation |
| :--- | :--- | :--- |
| Dynamic price/stock changes in production | Medium | Document exact product and price observed at execution time with screenshots. |
| Rate-limiting on automated requests | High | Execute manual tests at a human pace without flooding endpoints. |
