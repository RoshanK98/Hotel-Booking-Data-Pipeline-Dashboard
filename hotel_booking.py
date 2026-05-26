import pandas as pd
df = pd.read_csv("hotel_booking.csv")
print(df.head())

'''from sqlalchemy import create_engine
import pandas as pd

# Read CSV
df = pd.read_csv("hotel_booking.csv")

# PostgreSQL connection
engine = create_engine(
    "postgresql://postgres:5432@localhost:5432/postgres"
)

# Upload data to PostgreSQL
df.to_sql(
    "hotel_booking",
    engine,
    if_exists="replace",
    index=False
)

print("Data uploaded successfully!")'''