import pandas as pd
from mlxtend.frequent_patterns import apriori, association_rules

try:
    # Load dataset from a local file (replace with your file path)
    file_path = "C:\\Users\\ruchi\\OneDrive\\Desktop\\3rd year\\DWDM\\assignment6\\Book2.xlsx"  # Update this path accordingly
    df = pd.read_excel(file_path)

    # Display the dataset
    print("Dataset:")
    print(df)

    # Preprocessing: Create a binary matrix for categorical data
    # Convert categorical columns to binary/one-hot encoding
    df_encoded = pd.get_dummies(df[['Brand', 'Screen Size', 'Resolution', 'Aspect Ratio']])

    # Display the preprocessed data
    print("\nPreprocessed Dataset:")
    print(df_encoded.head())

    # Applying the Apriori algorithm
    frequent_itemsets = apriori(df_encoded, min_support=0.2, use_colnames=True)

    # Generating association rules from frequent itemsets
    rules = association_rules(frequent_itemsets, metric="confidence", min_threshold=0.6)

    # Display the frequent itemsets
    print("\nFrequent Itemsets:")
    print(frequent_itemsets)

    # Display the association rules
    print("\nAssociation Rules:")
    print(rules[['antecedents', 'consequents', 'support', 'confidence']])
    
except ModuleNotFoundError as e:
    print(f"ModuleNotFoundError: {e}. Please install the required module by running: pip install mlxtend")
except FileNotFoundError as e:
    print(f"FileNotFoundError: {e}. Please check the file path.")
except Exception as e:
    print(f"An error occurred: {e}")
