import yfinance as yf
import pandas as pd
from datetime import datetime, timedelta
import os

# List of tickers
tickers = [
    "SPY", "HES", "NVDA", "BSX", "MRK", "KO", "PNC", "CHTR", 
    "MSFT", "MDT", "MA", "C", "CMG", "EQIX", "ETN", "TEAM", 
    "MAR", "INTC", "ISRG", "GILD"
]

# Define the start and end dates
end_date = datetime.today()
start_date = end_date - timedelta(days=10*365)  # Approximately 10 years

# Directory to save the CSV files
output_dir = r"C:\Users\adity\OneDrive\Desktop\Hult Courses\MBAN\Business Challenge 1"
os.makedirs(output_dir, exist_ok=True)  # Create the directory if it doesn't exist

# Fetch and save data for each ticker
for ticker in tickers:
    try:
        print(f"Fetching data for {ticker}...")
        data = yf.download(ticker, start=start_date, end=end_date)
        if not data.empty:
            file_path = os.path.join(output_dir, f"{ticker}.csv")  # Correctly join paths
            data.to_csv(file_path)
            print(f"Data for {ticker} saved successfully at {file_path}")
        else:
            print(f"No data found for {ticker}.")
    except Exception as e:
        print(f"Error fetching data for {ticker}: {e}")

print("All files saved successfully!")
