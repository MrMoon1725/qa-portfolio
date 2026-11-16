# 🐞 [BUG-002] Blank screen, failed Fetch request, and unhandled console error (`window.ga`) on zero-result search

- **Project / Module:** Alkosto E-Commerce / Search Results
- **Related Test Case:** [TC-ALK-002](../02-test-cases/alkosto-test-cases.md#tc-alk-002-search-with-a-non-existent-term)
- **Severity:** High *(breaks the search results view, leaving the user on a blank screen)*
- **Priority:** P1 (Immediate)
- **Environment:**
  - **Browser:** Google Chrome (Incognito Mode)
  - **OS:** Windows
  - **URL:** `https://www.alkosto.com/search?text=xyzqwerty99999`

### 📋 Preconditions
1. User is on the Alkosto homepage in Incognito mode.

### 👣 Steps to Reproduce
1. Click the `"¿Qué buscas hoy?"` search bar.
2. Enter a non-existent search string: `xyzqwerty99999`.
3. Press `Enter`.

### ❌ Actual Result
1. **UI:** The results area renders completely blank (intermittent; reloading the page eventually displays *"Lo sentimos, no encontramos ningún resultado"*).
2. **Network (`Fetch/XHR`):** The `search?text=xyzqwerty99999` request fails with `(failed) net::...` (initiated by `StrategyHandler.js:161`).
3. **Console:** An unhandled JavaScript exception is thrown:
   ```text
   Uncaught TypeError: window.ga is not a function
       at pushFunction (analytics.js?v=11.18.0-2026-11-10-8-27:3:66)
       at g (instantsearch.production.min.js:3:487048)
   ```

### ✅ Expected Result
The application should safely guard `window.ga` (`typeof window.ga === 'function'`) before invoking it and consistently render the friendly "no results found" message without console errors or a blank screen.

### 📸 Evidence
![BUG-002 DevTools and blank screen evidence](../06-accessibility-assets/evidences/bug-002-devtools-pantalla-blanca.png)
