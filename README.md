# Assignment 9 — Cucumber Book Search

A Cucumber/Chai example that demonstrates scenario outlines and searching a list of books by author.

## Prerequisites

- Node.js 18 or later
- npm

Check your installations:

```powershell
node --version
npm --version
```

## Installation

From the project root:

```powershell
npm install
```

## Run the tests

Run the Cucumber feature tests:

```powershell
npm test
```

To run a specific feature:

```powershell
npx cucumber-js features/partBC-Q1.feature
```

## Generate and open the HTML report

The test run writes reports to the `reports` folder. Generate/open the formatted report with:

```powershell
npm run report
```

This runs `report.js`, which reads `reports/cucmber_report.json` and creates `reports/cucumber_report.html`.

You can also open `reports/cucumber_report.html` directly in a browser.

## Project structure

- `features/partBC-Q1.feature` — Gherkin feature and scenario outline
- `features/support/partBC-Q1.steps.ts` — TypeScript step definitions
- `cucumber.json` — Cucumber configuration and report output settings
- `report.js` — Generates the HTML report
- `reports/` — Generated JSON and HTML test reports
- `package.json` — npm scripts and project dependencies

## Feature behavior

The scenario searches a predefined set of books and verifies the number of books by each author:

- `Erik Larson` — 2 books
- `C.S. Lewis` — 1 book

## Troubleshooting

- If dependencies are missing, delete `node_modules` and run `npm install` again.
- If Cucumber does not find the feature or steps, run commands from the project root.
- If the report does not open automatically, open `reports/cucumber_report.html` manually.
