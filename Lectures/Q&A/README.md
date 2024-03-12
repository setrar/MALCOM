**MSE vs. MAE (with Formulas):**

- **MSE (Mean Squared Error)**
  - **Formula**: $\text{MSE} = \frac{1}{n} \sum_{i=1}^{n} (y_i - \hat{y}_i)^2$
  - **Sensitivity to Outliers**: Higher, due to squaring the errors.
  - **Error Interpretation**: Output in squared units, making direct interpretation harder.

- **MAE (Mean Absolute Error)**
  - **Formula**: $\text{MAE} = \frac{1}{n} \sum_{i=1}^{n} |y_i - \hat{y}_i|$
  - **Sensitivity to Outliers**: Lower, treats all errors linearly.
  - **Error Interpretation**: Output in the same units as the data, easier to interpret.
