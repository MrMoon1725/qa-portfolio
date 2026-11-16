# 🔌 Pruebas de API (API Testing)

En esta carpeta puedes almacenar tus colecciones de **Postman** o **Bruno** (`.json`) junto con la documentación de las pruebas realizadas.

## ¿Qué incluir aquí?
1. **Archivo de colección exportado** (ej. `ecommerce-api.postman_collection.json`).
2. **Archivo de entorno** (sin credenciales reales ni tokens privados).
3. **Resumen de pruebas**:
   - Endpoints probados (`GET`, `POST`, `PUT`, `DELETE`).
   - Validaciones realizadas:
     - Códigos de estado HTTP (`200 OK`, `201 Created`, `400 Bad Request`, `401 Unauthorized`, `404 Not Found`).
     - Estructura del JSON (esquema y tipos de datos).
     - Tiempo de respuesta (`< 500ms`).
     - Manejo de datos inválidos o campos obligatorios faltantes.
