# ✅ Casos de Prueba Documentados — Alkosto (`alkosto.com`)

Estos casos de prueba están diseñados y **ejecutados** sobre los flujos reales de **Alkosto**, cubriendo escenarios **positivos**, **negativos** y de **borde**.

- **Última ejecución:** 16/11/2026 (Google Chrome Incógnito, Windows)
- **Resumen:** **5 ✅ Passed** | **2 ❌ Failed** | **2 🐞 Bugs Reportados**

---

## 📊 Resumen de Cobertura y Ejecución

| ID | Título | Módulo | Tipo | Prioridad | Estado |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **TC-ALK-001** | Búsqueda exitosa de producto existente | Búsqueda | Positivo | Alta (P1) | ✅ Passed |
| **TC-ALK-002** | Búsqueda con término inexistente | Búsqueda | Negativo | Media (P2) | ❌ Failed ([BUG-002](../04-bug-reports/bug-002-busqueda-sin-resultados-console-error.md)) |
| **TC-ALK-003** | Búsqueda con campo vacío o solo espacios | Búsqueda | Borde | Media (P2) | ❌ Failed ([BUG-001](../04-bug-reports/bug-001-busqueda-espacios.md)) |
| **TC-ALK-004** | Filtrado por marca y ordenamiento por menor precio | Resultados | Positivo | Alta (P1) | ✅ Passed |
| **TC-ALK-005** | Agregar producto desde resultados de búsqueda | Carrito | Positivo | Alta (P1) | ✅ Passed |
| **TC-ALK-006** | Agregar producto desde PDP omitiendo Kombos y servicios | PDP / Carrito | Positivo | Alta (P1) | ✅ Passed |
| **TC-ALK-007** | Modificar cantidad y eliminar producto en `/cart` | Carrito | Positivo | Alta (P1) | ✅ Passed |

---

## 📝 Detalle de Casos de Prueba

### TC-ALK-001: Búsqueda exitosa de producto existente
- **Módulo:** Búsqueda
- **Prioridad:** Alta (P1)
- **Tipo:** Funcional / Positivo
- **Precondiciones:** El usuario está en `https://www.alkosto.com/`.

| Paso | Acción | Datos de prueba | Resultado esperado |
| :--- | :--- | :--- | :--- |
| 1 | Hacer clic en la barra de búsqueda `"¿Qué buscas hoy?"` | N/A | Se abre el overlay interactivo de búsqueda con sugerencias (`Lo más buscado`). |
| 2 | Escribir la palabra clave | `celular` | El campo muestra el texto ingresado. |
| 3 | Presionar `Enter` o el ícono de lupa | N/A | Redirige a `/search?text=celular` y muestra el conteo de resultados y tarjetas de productos con precio y botón `"Agregar"`. |

- **Estado:** ✅ Passed
- **Evidencia:** [Ver captura](../06-accessibility-assets/evidences/tc-alk-001-busqueda-celular.png)

---

### TC-ALK-002: Búsqueda con término inexistente
- **Módulo:** Búsqueda
- **Prioridad:** Media (P2)
- **Tipo:** Funcional / Negativo
- **Precondiciones:** El usuario está en `https://www.alkosto.com/`.

| Paso | Acción | Datos de prueba | Resultado esperado |
| :--- | :--- | :--- | :--- |
| 1 | Hacer clic en la barra de búsqueda `"¿Qué buscas hoy?"` | N/A | Se activa el campo de búsqueda. |
| 2 | Ingresar una cadena sin coincidencias | `xyzqwerty99999` | El campo acepta la cadena. |
| 3 | Presionar `Enter` | N/A | El sistema muestra un mensaje amigable indicando que no se encontraron resultados (sin errores 500 ni pantalla en blanco). |

- **Estado:** ❌ Failed
- **Bug asociado:** [BUG-002](../04-bug-reports/bug-002-busqueda-sin-resultados-console-error.md) — Pantalla en blanco intermitente, petición fallida en Network y error `Uncaught TypeError: window.ga is not a function` en Console.
- **Evidencias:**
  - [Fallo en DevTools y pantalla en blanco](../06-accessibility-assets/evidences/bug-002-devtools-pantalla-blanca.png)
  - [Mensaje esperado observado tras recarga](../06-accessibility-assets/evidences/tc-alk-002-mensaje-sin-resultados.png)

---

### TC-ALK-003: Búsqueda con campo vacío o solo espacios
- **Módulo:** Búsqueda
- **Prioridad:** Media (P2)
- **Tipo:** Borde (Edge Case)
- **Precondiciones:** El usuario está en `https://www.alkosto.com/`.

| Paso | Acción | Datos de prueba | Resultado esperado |
| :--- | :--- | :--- | :--- |
| 1 | Hacer clic en la barra de búsqueda `"¿Qué buscas hoy?"` | N/A | Se abre el overlay de búsqueda. |
| 2 | Ingresar solo espacios en blanco y presionar `Enter` | `"   "` | El sistema no debe navegar a una página rota; debe permanecer en el buscador o mostrar validación/sugerencias. |

- **Estado:** ❌ Failed
- **Bug asociado:** [BUG-001](../04-bug-reports/bug-001-busqueda-espacios.md) — El buscador se queda cargando indefinidamente en pantalla en blanco.
- **Evidencia:** [Ver captura](../06-accessibility-assets/evidences/bug-001-busqueda-espacios-cargando.png)

---

### TC-ALK-004: Filtrado por marca y ordenamiento por menor precio
- **Módulo:** Resultados de Búsqueda
- **Prioridad:** Alta (P1)
- **Tipo:** Funcional / Positivo
- **Precondiciones:** El usuario está en `/search?text=celular`.

| Paso | Acción | Datos de prueba | Resultado esperado |
| :--- | :--- | :--- | :--- |
| 1 | Hacer clic en el botón `"Filtrar"` | N/A | Se abre el panel lateral/modal de filtros (`Filtros aplicados (0)`). |
| 2 | Expandir `Marca`, seleccionar una marca y hacer clic en `"Aplicar y ver resultados"` | `SAMSUNG` | La lista se actualiza mostrando solo productos Samsung y el contador de filtros refleja `1`. |
| 3 | Hacer clic en el botón `"Ordenar"`, elegir `Precio: menor a mayor` y hacer clic en `"Aplicar y ver resultados"` | `Precio: menor a mayor` | Los productos se muestran ordenados ascendentemente según su precio actual de venta. |

- **Estado:** ✅ Passed
- **Evidencia:** [Ver captura](../06-accessibility-assets/evidences/tc-alk-004-filtro-samsung-orden-precio.png)

---

### TC-ALK-005: Agregar producto directamente desde resultados de búsqueda
- **Módulo:** Carrito de Compras
- **Prioridad:** Alta (P1)
- **Tipo:** Funcional / Positivo
- **Precondiciones:** El usuario está en `/search?text=celular` y el contador de `Mi carrito` está en `0`.

| Paso | Acción | Datos de prueba | Resultado esperado |
| :--- | :--- | :--- | :--- |
| 1 | Ubicar una tarjeta de producto con botón naranja `"Agregar"` | N/A | El botón es visible y habilitado. |
| 2 | Hacer clic en `"Agregar"` | N/A | El producto se agrega de forma asíncrona sin perder la página actual y el contador en `Mi carrito` cambia de `0` a `1`. |

- **Estado:** ✅ Passed
- **Evidencias:**
  - [Antes de agregar](../06-accessibility-assets/evidences/tc-alk-005-carrito-antes.png)
  - [Después de agregar (`Mi carrito: 1`)](../06-accessibility-assets/evidences/tc-alk-005-carrito-despues.png)

---

### TC-ALK-006: Agregar producto desde PDP omitiendo Kombos y servicios adicionales
- **Módulo:** Detalle de Producto (PDP) / Carrito
- **Prioridad:** Alta (P1)
- **Tipo:** Funcional / Positivo
- **Precondiciones:** El usuario está en la página de detalle (PDP) de un celular disponible.

| Paso | Acción | Datos de prueba | Resultado esperado |
| :--- | :--- | :--- | :--- |
| 1 | Seleccionar capacidad, color y método de entrega (`Envío gratis`) | `256 GB`, `Envío gratis` | Las opciones quedan seleccionadas y el precio se actualiza si aplica. |
| 2 | Hacer clic en `"Agregar al carrito"` | N/A | Se abre el modal `"Compra en Kombo"`. |
| 3 | Hacer clic en `"Agregar sin Kombo"` | N/A | Avanza al modal secundario `"Complementa tu compra"`. |
| 4 | Hacer clic en `"Continuar"` | N/A | Se cierra el flujo de upsell y el contador de `Mi carrito` en la cabecera se incrementa en `1`. |

- **Estado:** ✅ Passed
- **Evidencias:**
  - [Modal Compra en Kombo](../06-accessibility-assets/evidences/tc-alk-006-modal-kombo.png)
  - [Producto agregado en `/cart`](../06-accessibility-assets/evidences/tc-alk-006-carrito-agregado.png)

---

### TC-ALK-007: Modificar cantidad y eliminar producto en `/cart`
- **Módulo:** Carrito de Compras
- **Prioridad:** Alta (P1)
- **Tipo:** Funcional / Positivo
- **Precondiciones:** Hay al menos 1 producto en `Mi carrito` y el usuario navega a `/cart`.

| Paso | Acción | Datos de prueba | Resultado esperado |
| :--- | :--- | :--- | :--- |
| 1 | Cambiar el selector de cantidad del producto de `1` a `2` | `2` | El Subtotal y el Total a pagar se recalculan automáticamente multiplicando por 2. |
| 2 | Hacer clic en el enlace `"Eliminar"` del producto (o elegir `0 - eliminar`) | N/A | El producto desaparece de la lista, el total pasa a `$0` / carrito vacío y el badge de `Mi carrito` vuelve a `0`. |

- **Estado:** ✅ Passed
- **Evidencias:**
  - [Cantidad actualizada](../06-accessibility-assets/evidences/tc-alk-007-cantidad-actualizada.png)
  - [Cantidad en 2 y recálculo de Subtotal/Total](../06-accessibility-assets/evidences/tc-alk-007-cantidad-2-subtotal.png)
  - [Producto eliminado y carrito vacío](../06-accessibility-assets/evidences/tc-alk-007-carrito-vacio.png)
