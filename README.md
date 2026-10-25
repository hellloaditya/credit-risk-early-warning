# Credit Risk Prediction

A machine learning project that predicts the likelihood of borrower default using financial and demographic information. The project compares a Logistic Regression baseline with an XGBoost model and uses SHAP to explain model predictions.

## Project Overview

Credit risk prediction helps financial institutions identify borrowers who may be at risk of defaulting on their loans. This project uses historical borrower data to build classification models that estimate default risk.

The project includes:

- Data inspection and quality checks
- Data cleaning and preprocessing
- Exploratory data analysis
- Logistic Regression baseline modeling
- XGBoost classification
- Model performance comparison
- SHAP-based model explainability
- Borrower risk segmentation

## Dataset

The project uses the **Give Me Some Credit** dataset.

The target variable indicates whether a borrower experienced serious financial delinquency within the specified period.

The dataset contains borrower-level information such as:

- Revolving credit utilization
- Age
- Number of dependents
- Monthly income
- Debt-to-income ratio
- Number of open credit lines and loans
- Number of real estate loans
- History of past-due payments

## Models Used

### Logistic Regression

Logistic Regression was used as an interpretable baseline model. It provides a simple benchmark for evaluating how well the features predict borrower default.

### XGBoost

XGBoost was used as the primary machine learning model. It is a gradient-boosting algorithm that can capture nonlinear relationships and interactions between borrower characteristics.

## Model Performance

The models were evaluated using ROC-AUC, precision, recall, and F1-score.

| Model | ROC-AUC | Precision | Recall | F1-Score |
|---|---:|---:|---:|---:|
| Logistic Regression | 0.821 | 0.227 | 0.690 | 0.342 |
| XGBoost | 0.870 | 0.593 | 0.199 | 0.298 |

### Key Findings

- XGBoost achieved the highest ROC-AUC score of **0.870**.
- Logistic Regression achieved higher recall, identifying more borrowers who defaulted.
- XGBoost achieved substantially higher precision, producing fewer false positive predictions.
- The results demonstrate the trade-off between identifying as many risky borrowers as possible and avoiding unnecessary risk alerts.

## Explainability

SHAP was used to understand how individual features influence model predictions.

Model explainability helps answer questions such as:

- Which borrower characteristics contribute most to predicted risk?
- Why was a particular borrower classified as high risk?
- Which features increase or decrease the probability of default?
- How can model predictions be interpreted by financial analysts?

## Risk Segmentation

Borrowers are segmented into different risk categories based on predicted default probability.

Example risk segments include:

- Low Risk
- Medium Risk
- High Risk

This segmentation can help financial institutions prioritize manual reviews and develop more targeted credit risk strategies.

## Project Structure

```text
credit-risk-prediction/
│
├── data/
│   └── cs-training.csv
│
├── notebooks/
│   └── credit_risk_prediction.ipynb
│
├── scripts/
│   └── data_quality_checks.py
│
├── README.md
└── requirements.txt
```

## Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- XGBoost
- SHAP
- Jupyter Notebook
- Git
- GitHub

## Installation

Clone the repository:

```bash
git clone https://github.com/Vedant-Dubey-cloud/credit-risk-prediction.git
cd credit-risk-prediction
```

Create a virtual environment:

```bash
python -m venv venv
```

Activate the virtual environment.

On Windows:

```bash
venv\Scripts\activate
```

On macOS or Linux:

```bash
source venv/bin/activate
```

Install the required dependencies:

```bash
pip install -r requirements.txt
```

## Running the Project

1. Open the Jupyter Notebook.
2. Load the dataset.
3. Run the data quality and preprocessing steps.
4. Train the Logistic Regression and XGBoost models.
5. Evaluate model performance.
6. Review SHAP explanations and risk segments.

Start Jupyter Notebook using:

```bash
jupyter notebook
```

## Business Applications

This project can support financial institutions with:

- Early identification of high-risk borrowers
- Credit application screening
- Loan portfolio monitoring
- Risk-based customer segmentation
- More informed lending decisions
- Explainable credit risk assessment

## Limitations

- The dataset may contain missing values and historical biases.
- Model performance depends on the quality and representativeness of the training data.
- Predicted probabilities should support, not fully replace, human decision-making.
- Additional fairness, calibration, and regulatory testing would be required before production use.

## Future Improvements

Potential improvements include:

- Hyperparameter tuning
- Cross-validation
- Probability calibration
- Threshold optimization
- Class imbalance handling
- Fairness and bias evaluation
- Model deployment using Flask or FastAPI
- Interactive risk prediction dashboard
- Automated model monitoring

## Author

**Aditya Srivastava**


This project was developed as a machine learning portfolio project focused on credit risk modeling, model evaluation, and explainable artificial intelligence.
