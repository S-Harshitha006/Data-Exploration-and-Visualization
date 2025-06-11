# Part 1: NumPy Arrays
import numpy as np

# 1D and 2D arrays
arr_1d = np.array([10, 20, 30, 40])
arr_2d = np.array([[1, 2], [3, 4]])

# Operations
arr_add = arr_1d + 5
arr_mul = arr_1d * 2
arr_slice = arr_1d[1:3]
arr_reshape = arr_1d.reshape((2, 2))

print("1D Array:", arr_1d)
print("2D Array:\n", arr_2d)
print("Addition:", arr_add)
print("Multiplication:", arr_mul)
print("Slicing:", arr_slice)
print("Reshaped Array:\n", arr_reshape)

# Part 2: Pandas DataFrame
import pandas as pd

# Create DataFrame from dictionary
data = {
    'Name': ['Alice', 'Bob', 'Charlie'],
    'Age': [25, 30, 35],
    'Score': [85, 90, 95]
}
df = pd.DataFrame(data)

# Display data
print("\nDataFrame:\n", df)
print("\nInfo:")
print(df.info())
print("\nStatistics:\n", df.describe())

# Slicing and indexing
print("\nFirst row:\n", df.iloc[0])
print("\nAge column:\n", df['Age'])

# Part 3: Matplotlib Basic Plots
import matplotlib.pyplot as plt
import seaborn as sns  # for density plot

# Line Plot
plt.plot(df['Name'], df['Score'], marker='o')
plt.title("Score of Students")
plt.xlabel("Name")
plt.ylabel("Score")
plt.grid(True)
plt.show()

# Bar Plot
plt.bar(df['Name'], df['Age'], color='green')
plt.title("Age of Students")
plt.xlabel("Name")
plt.ylabel("Age")
plt.show()

# Pie Chart
plt.pie(df['Score'], labels=df['Name'], autopct='%1.1f%%')
plt.title("Score Distribution")
plt.show()

# Histogram Plot
plt.hist(df['Score'], bins=5, color='skyblue', edgecolor='black')
plt.title("Histogram of Scores")
plt.xlabel("Score")
plt.ylabel("Frequency")
plt.show()

# Scatter Plot
plt.scatter(df['Age'], df['Score'], color='red')
plt.title("Age vs Score")
plt.xlabel("Age")
plt.ylabel("Score")
plt.grid(True)
plt.show()

# Density Plot (using seaborn)
sns.kdeplot(df['Score'], fill=True, color='purple')
plt.title("Density Plot of Scores")
plt.xlabel("Score")
plt.ylabel("Density")
plt.show()
