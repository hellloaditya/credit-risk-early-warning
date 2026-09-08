import pandas as pd

df = pd.read_csv("data/raw/cs-training.csv")

df = df.drop(columns=["Unnamed: 0"])

print("Missing values:")
print(df.isnull().sum())

print("\nTarget distribution:")
print(df["SeriousDlqin2yrs"].value_counts())

print("\nTarget percentage:")
print(df["SeriousDlqin2yrs"].value_counts(normalize=True) * 100)