# Wells-Fargo-Portfolio-Balancing

This project models and analyzes the performance of client portfolios using historical stock data, SQL schema design, and Python-based ETL processes. It was built for the Business Challenge I course at Hult International Business School to simulate and optimize asset allocation strategies.

## Project Objectives

- Ingest historical stock price data for key tickers
- Design relational SQL schema to store tickers, clients, and portfolio structures
- Analyze rate of return (RoR) across different portfolio strategies
- Visualize performance insights using Python and Jupyter

## Project Structure

```
/wells-fargo-portfolio-balance/
├── Wells Fargo Portfolio Balance.ipynb      # Jupyter notebook with analysis
├── fetch_stock_data.py                      # Python script to download 10-year stock data
├── bc_create_table_queries.sql              # SQL DDL script for table creation
├── dataexport.sql                           # SQL file for data export queries
├── ticker_price.csv                         # Historical price data (CSV)
├── ticker_type.csv                          # Metadata on ticker categories (CSV + Excel)
├── ticker_type.xlsx                         # Alternate ticker metadata (Excel)
├── client.xlsx                              # Simulated client data
├── ror_results.csv                          # Rate of return calculations
```

## Setup Instructions

1. **Install dependencies**:
   ```bash
   pip install yfinance pandas numpy matplotlib plotly openpyxl
   ```

2. **Set up SQL database**:
   - Use `bc_create_table_queries.sql` to create tables.
   - Populate data using CSV or `dataexport.sql`.

3. **Run stock data fetcher**:
   - `fetch_stock_data.py` downloads historical data and saves as `.csv` files.

4. **Open and run analysis notebook**:
   ```bash
   jupyter notebook "Wells Fargo Portfolio Balance.ipynb"
   ```

## Tools Used

- Python (Pandas, Plotly, yFinance)
- MySQL (Azure-hosted)
- Excel for input data
- Jupyter for analytics and visualization

## Author

Aditya Arte  
MBA + Business Analytics Dual Degree Candidate  
Hult International Business School  
[LinkedIn Profile](https://www.linkedin.com/in/aditya-arte/)
