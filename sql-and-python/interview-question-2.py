#Write a solution to find managers with at least five direct reports.
import pandas as pd

def find_managers(employee):
    grouped = employee.groupby('managerId').size().reset_index(name='Reports')
    grouped_filtered = grouped[grouped['Reports']>4]
    merged_df = pd.merge(grouped_filtered, employee, left_on = 'managerId', right_on='id')
    return merged_df['name']

employee = pd.read_csv('interview-question-2.csv')

df = find_managers(employee)

print(df)