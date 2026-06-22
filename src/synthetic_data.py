import pandas as pd
import numpy as np
import random
from datetime import datetime

# Set seed for reproducibility
random.seed(42)
np.random.seed(42)

# Parameters
N = 5000  # Number of teacher records

# 1. Employment Dataset
data = {
    'teacher_id': [f'TEA_{1000+i}' for i in range(N)],
    'hire_date': [pd.Timestamp('2020-01-01') + pd.Timedelta(days=random.randint(0, 1500)) for _ in range(N)],
    'prep_route': np.random.choice(['Traditional', 'Alternative', 'Out-of-State'], N, p=[0.5, 0.4, 0.1]),
    'district_id': [f'DIST_{random.randint(1, 100)}' for _ in range(N)],
    'is_retained': np.random.choice([0, 1], N, p=[0.2, 0.8])
}
df_employment = pd.DataFrame(data)

# 2. Qualitative Survey Dataset (Linked via teacher_id)
# Simulates survey responses: 1=Strongly Disagree, 5=Strongly Agree
survey_data = {
    'teacher_id': df_employment['teacher_id'],
    'mentorship_score': np.random.randint(1, 6, N),
    'admin_support': np.random.randint(1, 6, N),
    'work_life_balance': np.random.randint(1, 6, N),
    'feedback': np.random.choice(['Great mentorship', 'Too much workload', 'Lack of resources', 'Supportive team', 'Need more training'], N)
}
df_survey = pd.DataFrame(survey_data)

# Export for BigQuery/Sheets
df_employment.to_csv('teacher_employment.csv', index=False)
df_survey.to_csv('retention_survey.csv', index=False)
print("Files generated successfully.")
