# 🐞 Plantilla de Reporte de Bug (Defect Report)

Usa esta plantilla cada vez que encuentres un comportamiento inesperado durante tus pruebas exploratorias o ejecución de casos de prueba.

---

## [BUG-001] Título corto y descriptivo del error
> *Ejemplo: `[BUG-001] El botón "Checkout" no responde cuando el carrito está vacío`*

- **Proyecto / Módulo:** E-commerce Alkosto / Carrito de compras
- **Severidad:** Alta / Media / Baja / Crítica
- **Prioridad:** P1 (Inmediata) / P2 (Alta) / P3 (Media) / P4 (Baja)
- **Ambiente:**
  - **Navegador:** Google Chrome v128
  - **Sistema Operativo:** Windows 11
  - **Resolución:** 1920x1080 (Desktop) / 390x844 (Mobile)
  - **URL:** `https://www.alkosto.com/...`

### 📋 Precondiciones
1. El usuario se encuentra en la página principal de Alkosto.
2. No hay productos previos en el carrito.

### 👣 Pasos para reproducir
1. Ir a la barra de búsqueda y escribir `celular`.
2. Presionar `Enter`.
3. Hacer clic en el primer producto de los resultados.
4. Hacer clic en el botón **Agregar al carrito**.

### ❌ Resultado Actual
*(Describe exactamente qué pasó que no debería pasar, o qué dejó de funcionar).*

### ✅ Resultado Esperado
*(Describe qué debía ocurrir según el requisito o comportamiento estándar).*

### 📸 Evidencias
- Captura de pantalla / GIF: `[ver evidencia](../06-accessibility-assets/evidences/bug-001.png)`
- Errores en consola (DevTools `F12` > Console / Network):
  ```text
  (Pega aquí cualquier error HTTP 4xx/5xx o error de JavaScript si aplica)
  ```
