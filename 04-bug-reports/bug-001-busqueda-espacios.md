# 🐞 [BUG-001] El buscador se queda cargando indefinidamente al buscar solo espacios en blanco

- **Proyecto / Módulo:** E-commerce Alkosto / Barra de búsqueda
- **Caso de Prueba Relacionado:** [TC-ALK-003](../02-test-cases/alkosto-test-cases.md#tc-alk-003-búsqueda-con-campo-vacío-o-solo-espacios)
- **Severidad:** Media *(no bloquea compras normales, pero degrada la experiencia de usuario)*
- **Prioridad:** P2 (Alta)
- **Ambiente:**
  - **Navegador:** Google Chrome (Modo Incógnito)
  - **Sistema Operativo:** Windows
  - **URL:** `https://www.alkosto.com/`

### 📋 Precondiciones
1. El usuario se encuentra en la página principal de Alkosto.

### 👣 Pasos para reproducir
1. Hacer clic en la barra de búsqueda `"¿Qué buscas hoy?"`.
2. Ingresar únicamente espacios en blanco (`"   "`).
3. Presionar `Enter`.

### ❌ Resultado Actual
La página/buscador se queda en blanco/cargando indefinidamente sin mostrar resultados ni mensaje de validación.

### ✅ Resultado Esperado
El sistema debe ignorar los espacios en blanco (aplicar `trim()`), mantener al usuario en el buscador o mostrar un mensaje indicando que ingrese un término válido.

### 📸 Evidencias
![Evidencia BUG-001](../06-accessibility-assets/evidences/bug-001-busqueda-espacios-cargando.png)
