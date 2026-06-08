# Water Metabolism in Chile (2026)

This repository contains the data and code for the paper: **"Beyond Per Capita: Superlinear Scaling and Industrial Decoupling in Urban Water Metabolism"**.

## Repository Structure

- `data/`: Contains all CSV and Excel files used in the analysis.
  - `CR2WU/`: Historical water use data from CR2.
  - `INE_2002-2035.csv`: Population data.
  - `ISMT_2022_actualizado.csv`: Socioeconomic data (ISMT).
  - `total_empresas.csv`: Industrial/business data.
  - `PIB_actividad_reg.xlsx`: GDP data.
  - `datos meteorológicos.xlsx`: Meteorological data.
- `scripts/`: Jupyter notebooks and R scripts for data analysis and modeling.
  - `NLWU_analysis.ipynb`: Main notebook for urban scaling analysis.
  - `modelo_2.ipynb`: Multivariate modeling, variable selection (VIF), and validation.
- `results/`: Folder for output figures and tables.

## How to use

1. Clone this repository.
2. Ensure you have the required Python packages installed (pandas, numpy, scipy, statsmodels, plotly).
3. Open the notebooks in the `scripts/` folder. The paths are configured to load data from the `../data/` directory.

## Data Sources

- CR2WU Database (Center for Climate and Resilience Research)
- INE (National Institute of Statistics, Chile)
- SII (Internal Revenue Service, Chile)
- ISMT (Territorial Social Maturity Index)
