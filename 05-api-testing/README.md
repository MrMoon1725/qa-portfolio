# 🔌 Pruebas de API (API Testing) — Restful-Booker

En esta carpeta se documentan las pruebas de API REST realizadas con **Postman** sobre el entorno público de práctica **Restful-Booker** (`https://restful-booker.herokuapp.com`).

- **Colección exportada:** [restful-booker.postman_collection.json](./restful-booker.postman_collection.json)

---

## 🧪 Casos de Prueba Automatizados en Postman

| # | Método | Endpoint | Tipo | Validaciones (Assertions) |
| :--- | :--- | :--- | :--- | :--- |
| 1 | `POST` | `/auth` | Positivo | Status `200`, devuelve `token` y lo guarda en variable de colección. |
| 2 | `GET` | `/booking` | Positivo | Status `200`, tiempo `< 2000ms`, devuelve un arreglo no vacío. |
| 3 | `POST` | `/booking` | Positivo | Status `200`, crea reserva con datos válidos y guarda `bookingid`. |
| 4 | `GET` | `/booking/{{bookingid}}` | Positivo | Status `200`, los datos consultados coinciden con los creados. |
| 5 | `PUT` | `/booking/{{bookingid}}` | Positivo | Status `200` (con Cookie `token`), actualiza `totalprice` y `additionalneeds`. |
| 6 | `DELETE` | `/booking/{{bookingid}}` | Positivo | Status `201 Created`, elimina la reserva creada. |
| 7 | `GET` | `/booking/999999999` | Negativo | Status `404 Not Found` al consultar un ID inexistente. |

---

## ▶️ Cómo ejecutar esta colección en Postman
1. Abre **Postman** y haz clic en **Import**.
2. Selecciona el archivo `restful-booker.postman_collection.json`.
3. Haz clic en los tres puntos (`...`) de la colección **Restful-Booker API QA Suite** > **Run collection**.
4. Presiona **Run Restful-Booker API QA Suite** para ejecutar los 7 requests en orden y ver todas las aserciones en verde.
