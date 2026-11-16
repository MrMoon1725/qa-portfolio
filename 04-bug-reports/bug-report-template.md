# 🐞 Defect / Bug Report Template

Use this template whenever you discover unexpected behavior during exploratory testing or test case execution.

---

## [BUG-001] Short, descriptive defect title
> *Example: `[BUG-001] "Checkout" button does not respond when cart is empty`*

- **Project / Module:** Alkosto E-Commerce / Shopping Cart
- **Severity:** Critical / High / Medium / Low
- **Priority:** P1 (Immediate) / P2 (High) / P3 (Medium) / P4 (Low)
- **Environment:**
  - **Browser:** Google Chrome v128
  - **OS:** Windows 11
  - **Viewport:** 1920x1080 (Desktop) / 390x844 (Mobile)
  - **URL:** `https://www.alkosto.com/...`

### 📋 Preconditions
1. User is on the Alkosto homepage.
2. No items are currently in the cart.

### 👣 Steps to Reproduce
1. Click the search bar and type `celular`.
2. Press `Enter`.
3. Click the first product in the results.
4. Click the **Agregar al carrito** button.

### ❌ Actual Result
*(Describe exactly what happened that should not happen, or what failed to work).*

### ✅ Expected Result
*(Describe what should happen according to requirements or standard behavior).*

### 📸 Evidence
- Screenshot / GIF: `[view evidence](../06-accessibility-assets/evidences/bug-001.png)`
- Console / Network Errors (DevTools `F12` > Console / Network):
  ```text
  (Paste any HTTP 4xx/5xx error or JavaScript exception here if applicable)
  ```
