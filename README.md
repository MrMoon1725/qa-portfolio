# 🧪 QA Portfolio — Mateo Pimienta

Welcome to my **Quality Assurance (QA)** portfolio. This repository showcases my testing methodology, quality artifacts, and hands-on test execution applied to real-world web applications and REST APIs.

---

## 👋 About Me
- **Role:** QA Engineer / QA Analyst (Manual & API Testing)
- **Focus:** Functional, regression, and exploratory testing, test case design, BDD (Gherkin), REST API testing, Chrome DevTools diagnostics, and defect reporting.
- **Tools:** Git/GitHub, Chrome DevTools, Postman, Jira, TestRail, Azure DevOps, SQL, Markdown, Gherkin (BDD).

---

## 📂 Repository Structure

| Folder | Contents | Description |
| :--- | :--- | :--- |
| [`01-test-plan/`](./01-test-plan/) | Test Plan | Testing strategy, scope, risks, and entry/exit criteria. |
| [`02-test-cases/`](./02-test-cases/) | Test Cases | Documented test cases in Markdown and CSV (positive, negative, and edge cases). |
| [`03-bdd-gherkin/`](./03-bdd-gherkin/) | BDD Scenarios | Acceptance criteria written in Gherkin syntax (`.feature`). |
| [`04-bug-reports/`](./04-bug-reports/) | Bug Reports | Professional defect reporting template and real bug reports with DevTools evidence. |
| [`05-api-testing/`](./05-api-testing/) | API Testing | Exported Postman collection and automated assertion documentation. |
| [`06-accessibility-assets/`](./06-accessibility-assets/) | Accessibility & Evidences | Basic WCAG accessibility checklist and test execution screenshots. |

---

## 🚀 Documented Projects

### 1. E-Commerce: Alkosto (`alkosto.com`)
Functional and exploratory testing of critical e-commerce user flows (search, filtering, product detail page, and shopping cart).
**Execution Summary:** `5 ✅ Passed` | `2 ❌ Failed` | `2 🐞 Bugs Reported`
- 📄 [Test Plan](./01-test-plan/test-plan-alkosto.md)
- ✅ [Test Cases (Markdown)](./02-test-cases/alkosto-test-cases.md) | [CSV Export](./02-test-cases/alkosto-test-cases.csv)
- 🥒 [Gherkin Scenarios](./03-bdd-gherkin/alkosto-busqueda-carrito.feature)
- 🐞 [BUG-001: Infinite loading on whitespace search](./04-bug-reports/bug-001-busqueda-espacios.md) | [BUG-002: Blank screen & `window.ga` console error](./04-bug-reports/bug-002-busqueda-sin-resultados-console-error.md) | [Template](./04-bug-reports/bug-report-template.md)

### 2. REST API Testing: Restful-Booker (`Postman`)
Automated Postman test suite covering token authentication, full CRUD lifecycle (`POST`, `GET`, `PUT`, `DELETE`), and negative testing (`404 Not Found`).
**Execution Summary:** `7 ✅ Passed` | `0 ❌ Failed`
- 🔌 [API Suite Documentation](./05-api-testing/README.md)
- 📦 [Postman Collection (.json)](./05-api-testing/restful-booker.postman_collection.json)
