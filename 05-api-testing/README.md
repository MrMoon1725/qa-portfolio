# 🔌 REST API Testing — Restful-Booker

This folder documents automated REST API tests built with **Postman** against the public QA practice environment **Restful-Booker** (`https://restful-booker.herokuapp.com`).

- **Exported Collection:** [restful-booker.postman_collection.json](./restful-booker.postman_collection.json)
- **Last Execution:** 11/16/2026 (Postman Web)
- **Result:** **7 ✅ Passed** | **0 ❌ Failed**

---

## 🧪 Automated Postman Test Cases

| # | Method | Endpoint | Type | Assertions | Status |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `POST` | `/auth` | Positive | Status `200`, returns `token` and stores it in a collection variable. | ✅ Passed |
| 2 | `GET` | `/booking` | Positive | Status `200`, response time `< 2000ms`, returns a non-empty array. | ✅ Passed |
| 3 | `POST` | `/booking` | Positive | Status `200`, creates booking with valid payload and stores `bookingid`. | ✅ Passed |
| 4 | `GET` | `/booking/{{bookingid}}` | Positive | Status `200`, retrieved payload matches created booking data. | ✅ Passed |
| 5 | `PUT` | `/booking/{{bookingid}}` | Positive | Status `200` (with `token` Cookie), updates `totalprice` and `additionalneeds`. | ✅ Passed |
| 6 | `DELETE` | `/booking/{{bookingid}}` | Positive | Status `201 Created`, deletes the created booking. | ✅ Passed |
| 7 | `GET` | `/booking/999999999` | Negative | Status `404 Not Found` when querying a non-existent booking ID. | ✅ Passed |

---

## ▶️ How to Run This Collection in Postman
1. Open **Postman** and click **Import**.
2. Select `restful-booker.postman_collection.json`.
3. Click the three dots (`...`) on **Restful-Booker API QA Suite** > **Run collection**.
4. Click **Run Restful-Booker API QA Suite** to execute all 7 requests sequentially and verify all assertions pass.
