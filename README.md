<h1>📦 Stock Optimization & Stockout Risk Prediction</h1>
<h3>End-to-End Data Project</h3>

<h2>🚀 Project Overview</h2>
<p>
This project aims to anticipate product stockouts for a retail company by combining
<b>SQL, Python, and Business Intelligence</b> in a complete end-to-end data pipeline.
</p>
<p>
The objective is to transform raw transactional data into <b>actionable stock alerts</b>
that support operational and supply-chain decision-making.
</p>

<h2>🎯 Business Problem</h2>
<p>
Stockouts result in lost sales, poor customer experience, and operational inefficiencies.
The business requires a data-driven solution to:
</p>
<ul>
  <li>Monitor current inventory levels</li>
  <li>Estimate how long stock will last</li>
  <li>Identify products at risk of stockout</li>
  <li>Support proactive restocking decisions</li>
</ul>

<h2>🧠 Solution Approach</h2>
<h3>🔁 End-to-End Data Pipeline</h3>
<p>
<b>SQL (SQLite)</b> → <b>Python (Analytics & Forecasting)</b> → <b>CSV</b> → <b>Power BI Dashboard</b>
</p>

<h2>🗃️ Dataset</h2>
<p>
The dataset is <b>simulated but realistic</b>, designed to mimic a real retail environment:
</p>
<ul>
  <li><b>Products:</b> product metadata (name, category, supplier)</li>
  <li><b>Inventory:</b> current stock levels & reorder points</li>
  <li><b>Sales:</b> daily product sales over time</li>
  <li><b>Suppliers (optional):</b> lead time & reliability</li>
</ul>
<p>
This approach provides full control over the data model while preserving strong business realism.
</p>

<h2>🛠️ Technologies Used</h2>

<h3>🗄️ SQL (SQLite)</h3>
<ul>
  <li>Relational schema with primary & foreign keys</li>
  <li>Joins and aggregations for analytics</li>
</ul>

<h3>🐍 Python</h3>
<ul>
  <li>pandas, numpy for data processing</li>
  <li>KPI computation & business logic</li>
  <li>Simple forecasting using a 7-day moving average</li>
  <li>Export of clean analytical tables</li>
</ul>

<h3>📊 Data Visualization</h3>
<ul>
  <li>matplotlib, seaborn for exploratory analysis</li>
  <li>Power BI for interactive dashboards & decision support</li>
</ul>

<h2>📊 Key Metrics & Features</h2>

<h3>🔹 KPIs</h3>
<ul>
  <li>Average Daily Sales</li>
  <li>Days Until Stockout</li>
  <li>Reorder Point Comparison</li>
  <li>Stock Risk Level</li>
</ul>

<h3>🔹 Stock Risk Classification</h3>
<table border="1" cellpadding="8">
  <tr>
    <th>Risk Level</th>
    <th>Condition</th>
  </tr>
  <tr>
    <td><b>HIGH</b></td>
    <td>Stockout in less than 10 days</td>
  </tr>
  <tr>
    <td><b>MEDIUM</b></td>
    <td>Stockout in 10–20 days</td>
  </tr>
  <tr>
    <td><b>LOW</b></td>
    <td>Sufficient stock</td>
  </tr>
  <tr>
    <td><b>UNKNOWN</b></td>
    <td>No sales data available</td>
  </tr>
</table>

<h2>🔮 Forecasting Logic</h2>
<p>
A <b>7-day moving average</b> is used to estimate short-term sales trends:
</p>
<ul>
  <li>Lightweight</li>
  <li>Interpretable</li>
  <li>Well-suited for operational monitoring</li>
</ul>
<p>
This forecasting approach enables early detection of stock risks without over-engineering.
</p>

<h2>📈 Power BI Dashboard</h2>
<p>
The final dataset is connected to Power BI to build an interactive dashboard featuring:
</p>
<ul>
  <li>KPI cards highlighting products at risk</li>
  <li>Distribution of days until stockout</li>
  <li>Products grouped by risk level</li>
  <li>Detailed product table with alerts</li>
  <li>Filters by category, product, and risk level</li>
</ul>
<p>
🎯 The dashboard is designed for <b>business users and operations managers</b>.
</p>

