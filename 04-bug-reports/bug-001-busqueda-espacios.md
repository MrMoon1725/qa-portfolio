# 🐞 [BUG-001] Search bar hangs indefinitely on a blank screen when searching whitespace only

- **Project / Module:** Alkosto E-Commerce / Search Bar
- **Related Test Case:** [TC-ALK-003](../02-test-cases/alkosto-test-cases.md#tc-alk-003-search-with-empty-or-whitespace-only-input)
- **Severity:** Medium *(does not block standard purchases, but degrades user experience)*
- **Priority:** P2 (High)
- **Environment:**
  - **Browser:** Google Chrome (Incognito Mode)
  - **OS:** Windows
  - **URL:** `https://www.alkosto.com/`

### 📋 Preconditions
1. User is on the Alkosto homepage.

### 👣 Steps to Reproduce
1. Click the `"¿Qué buscas hoy?"` search bar.
2. Enter whitespace characters only (`"   "`).
3. Press `Enter`.

### ❌ Actual Result
The page/search view remains blank and loading indefinitely without showing results or a validation message.

### ✅ Expected Result
The system should trim whitespace (`trim()`), keep the user on the search input, or display a validation message prompting for a valid search term.

### 📸 Evidence
![BUG-001 Evidence](../06-accessibility-assets/evidences/bug-001-busqueda-espacios-cargando.png)
