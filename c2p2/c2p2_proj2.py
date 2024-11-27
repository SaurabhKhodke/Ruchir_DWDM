import numpy as np
import pandas as pd
from sklearn.tree import DecisionTreeClassifier, plot_tree
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score, confusion_matrix, classification_report
import matplotlib.pyplot as plt
import seaborn as sns
import warnings

# Ignore warnings for cleaner output
warnings.filterwarnings("ignore")

# Load the dataset
df = pd.read_csv("c2p2_08_phase2.csv")

# Preprocessing: Encoding gender and converting categorical columns to dummies
df['gender'].replace({"Male": 0, "Female": 1}, inplace=True)
df = pd.get_dummies(df, columns=['preferred_subjects', 'location', 'extracurricular_activities', 'career_goals'])

# Define features and target
X = df.drop("enrollment", axis=1)
y = df["enrollment"]

# Train-test split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Train the Decision Tree Classifier with adjusted parameters to increase tree size and complexity
clf = DecisionTreeClassifier(
    max_depth=20,           # Increase max depth to allow more levels and nodes
    min_samples_split=2,    # Allow more splits for increased complexity
    min_samples_leaf=2,     # Allow smaller leaves for better granularity
    max_leaf_nodes=100,     # Allow more leaf nodes for finer decision-making
    random_state=42
)
clf.fit(X_train, y_train)

# Make predictions and evaluate accuracy
y_pred = clf.predict(X_test)
train_accuracy = accuracy_score(y_train, clf.predict(X_train))
test_accuracy = accuracy_score(y_test, y_pred)

# Print the accuracy values
print(f"Training Accuracy: {train_accuracy:.2f}")
print(f"Testing Accuracy: {test_accuracy:.2f}")

# Single User Input Testing
# Define a sample input for testing
# Here we use the first row of the test set as a sample input
sample_input = X_test.iloc[0]  # Using the first row of test set as a sample
sample_input_reshaped = np.array(sample_input).reshape(1, -1)

# Display the sample input used for prediction
print("\nSingle User Input Values:")
print(sample_input)

# Predict for the single user input
single_pred = clf.predict(sample_input_reshaped)

# Calculate accuracy for the single input
single_input_actual = y_test.iloc[0]  # Actual class for the sample
single_accuracy = accuracy_score([single_input_actual], single_pred)

# Display single input prediction and accuracy
print(f"\nSingle User Input Prediction: {'Enrolled' if single_pred[0] == 1 else 'Not Enrolled'}")
print(f"Single User Input Actual: {'Enrolled' if single_input_actual == 1 else 'Not Enrolled'}")
print(f"Single Input Accuracy: {single_accuracy:.2f} (between 0 and 1)")

# Visualize the decision tree with increased legibility and more nodes/leaves
plt.figure(figsize=(20, 10))  # Increase the figure size for a larger view
plot_tree(clf,
          filled=True,
          feature_names=X.columns,
          class_names=['Not Enrolled', 'Enrolled'],
          rounded=True,
          fontsize=10,
          proportion=True,
          precision=2,
          impurity=False)
plt.title("Decision Tree for Enrollment Prediction", fontsize=20)
plt.show()

# Confusion matrix visualization
conf_matrix = confusion_matrix(y_test, y_pred)
plt.figure(figsize=(8, 6))
sns.heatmap(conf_matrix, annot=True, fmt='d', cmap='Blues', xticklabels=['Not Enrolled', 'Enrolled'],
            yticklabels=['Not Enrolled', 'Enrolled'], cbar=False, linewidths=0.5)
plt.ylabel('Actual', fontsize=14)
plt.xlabel('Predicted', fontsize=14)
plt.title('Confusion Matrix', fontsize=16)
plt.xticks(fontsize=12)
plt.yticks(fontsize=12)
plt.show()

# Classification Report
print("\nClassification Report:\n", classification_report(y_test, y_pred, target_names=['Not Enrolled', 'Enrolled']))
