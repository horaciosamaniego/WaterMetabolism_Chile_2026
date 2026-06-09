This repository contains the data and code for the following work


# Beyond Per Capita: Superlinear Scaling and Industrial Decoupling in Urban Water Metabolism

Journal: [Water Resources Management](https://link.springer.com/journal/11269)

doi: [10.1007/s11269-026-04783-0](http://doi.org/10.1007/s11269-026-04783-0)

Authors: 
  - Mariana Brüning-González (Ecoinformatica lab, Universidad Austral de Chile, Valdivia, Chile)
  - Fernando Arenas-Araya (Centro de Modelamiento Matemático, Universidad de Chile, Santiago, Chile)
  - Jorge Amaya (Centro de Modelamiento Matemático, Universidad de Chile, Santiago, Chile)
  - Camila Álvarez-Garretón (Centro de Resiliencia del Clima (CR2) & Centro de Modelamiento Matemático, Universidad de Chile, Santiago, Chile)
  - Horacio Samaniego (Ecoinformatica lab, Universidad Austral de Chile, Valdivia, Chile)

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


## Funding Information

- ANID/FONDECYT/1211490 --- Horacio Samaniego
- ANID/Doctoral Grant #21210418 --- Mariana Brüning-González
- ANID/- FONDECYT/11240924 --- Camila Álvarez-Garretón
