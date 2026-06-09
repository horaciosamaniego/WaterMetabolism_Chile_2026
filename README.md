This repository contains the data and code for:


# Beyond Per Capita: Superlinear Scaling and Industrial Decoupling in Urban Water Metabolism

Mariana Brüning-González $^{a}$ , Fernando Arenas-Araya $^{b}$ , Jorge Amaya $^{b}$ , Camila Álvarez-Garretón $^{b,c}$ , Horacio Samaniego $^{a,*}$

$^{a}$ Ecoinformatica lab, Universidad Austral de Chile, Valdivia, Chile; 

$^{b}$ Centro de Modelamiento Matemático, Universidad de Chile, Santiago, Chile;

$^{c}$ Centro de Resiliencia del Clima (CR2), Chile

$^{*}$ Corresponding author (horacio@ecoinformatica.cl)


> Brüning-González, M; Arenas-Araya, F; Amaya, J; Alvarez-Garreton, C; Samaniego, H (2026) <i>Beyond Per Capita: Superlinear Scaling and Industrial Decoupling in Urban Water Metabolism</i>. [Water Resources Management](https://link.springer.com/journal/11269) doi: [10.1007/s11269-026-04783-0](http://doi.org/10.1007/s11269-026-04783-0)

## Abstract

Traditional urban water management often relies on aggregate per capita indicators
that fail to capture the complex dynamics and systemic inefficiencies of growing cities.
This study applies Urban Scaling Theory to analyze consumptive water use across 343
Chilean communes, evaluating how demographic, environmental, and socioeconomic
variables modulate metabolic performance in a context of chronic water security
challenges. Our findings reveal a critical superlinear scaling of domestic consumption
( $\beta$ $\approx$ 1.08), where water demand grows faster than population size,
indicating that current urbanization patterns generate diseconomies of scale rather
than expected infrastructure efficiencies. Conversely, industrial water use is found to
be entirely decoupled from population size, driven instead by resource proximity in low-
density territories. This reveals a functional and spatial mismatch where wealthy
residential hubs consume water disproportionately while the environmental costs of
industrial production are offshored to less affluent areas, commonly known as
``sacrifice areas''. We conclude that sustainable urban planning must move beyond
simple per capita targets to address the sector-specific scaling properties and
underlying socioeconomic inequities that govern urban water metabolism. Effective
governance requires multi-scale strategies that integrate administrative management
with biophysical constraints to ensure long-term water security and social equity.
    
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

## Supporting Information

- [Supporting Information](https://github.com/horaciosamaniego/WaterMetabolism_Chile_2026/blob/main/SI.pdf)

## Funding Information

- ANID/FONDECYT/1211490 -- Horacio Samaniego
- ANID/Doctoral Grant #21210418 -- Mariana Brüning-González
- ANID/- FONDECYT/11240924 -- Camila Álvarez-Garretón
