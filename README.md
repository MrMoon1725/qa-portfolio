# 🧪 Portafolio de QA — Mateo Pimienta

Bienvenido a mi portafolio de **Quality Assurance (QA)**. Aquí documento mi metodología de pruebas, artefactos de calidad y casos prácticos aplicados sobre aplicaciones web reales.

---

## 👋 Sobre mí
- **Rol:** QA Analyst / QA Tester (Manual & Automatización)
- **Enfoque:** Pruebas funcionales, exploratorias, diseño de casos de prueba, pruebas de API, accesibilidad y reporte de defectos.
- **Herramientas:** Git/GitHub, DevTools, Postman, Jira/TestRail (metodología), Markdown, Gherkin (BDD).

---

## 📂 Estructura del Repositorio

| Carpeta | Contenido | Descripción |
| :--- | :--- | :--- |
| [`01-test-plan/`](./01-test-plan/) | Plan de pruebas | Estrategia, alcance, riesgos y criterios de entrada/salida. |
| [`02-test-cases/`](./02-test-cases/) | Casos de prueba | Casos documentados en Markdown y CSV (positivos, negativos y borde). |
| [`03-bdd-gherkin/`](./03-bdd-gherkin/) | Escenarios BDD | Criterios de aceptación escritos en formato Gherkin (`.feature`). |
| [`04-bug-reports/`](./04-bug-reports/) | Reporte de bugs | Plantilla profesional y ejemplos de reportes de defectos con evidencia. |
| [`05-api-testing/`](./05-api-testing/) | Pruebas de API | Espacio para colecciones de Postman / Bruno y validación de endpoints. |
| [`06-accessibility-assets/`](./06-accessibility-assets/) | Accesibilidad y Evidencias | Checklist WCAG básico y capturas de pantalla de pruebas ejecutadas. |

---

## 🚀 Proyectos Documentados

### 1. E-commerce: Alkosto (`alkosto.com`)
Pruebas funcionales de flujo crítico de comercio electrónico (búsqueda, filtros, detalle de producto y carrito de compras).
**Resultado de ejecución:** `5 ✅ Passed` | `2 ❌ Failed` | `2 🐞 Bugs Reportados`
- 📄 [Plan de Pruebas](./01-test-plan/test-plan-alkosto.md)
- ✅ [Casos de Prueba (Markdown)](./02-test-cases/alkosto-test-cases.md) | [Exportación CSV](./02-test-cases/alkosto-test-cases.csv)
- 🥒 [Escenarios Gherkin](./03-bdd-gherkin/alkosto-busqueda-carrito.feature)
- 🐞 [BUG-001: Buscador cargando con espacios](./04-bug-reports/bug-001-busqueda-espacios.md) | [BUG-002: Pantalla en blanco y error `window.ga`](./04-bug-reports/bug-002-busqueda-sin-resultados-console-error.md) | [Plantilla](./04-bug-reports/bug-report-template.md)

### 2. Pruebas de API REST: Restful-Booker (`Postman`)
Suite automatizada en Postman cubriendo autenticación por token, flujo CRUD completo (`POST`, `GET`, `PUT`, `DELETE`) y caso negativo (`404 Not Found`).
**Resultado de ejecución:** `7 ✅ Passed` | `0 ❌ Failed`
- 🔌 [Documentación de la Suite API](./05-api-testing/README.md)
- 📦 [Colección Postman (.json)](./05-api-testing/restful-booker.postman_collection.json)
