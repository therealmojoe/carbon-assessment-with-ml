#!/bin/zsh
ACTIVITY_FILE="../data/raw/parakeet_austin.csv"
ACTIVITY_COL="['COMMODITY_DESCRIPTION']"
REFERENCE_FILE="https://19913970.fs1.hubspotusercontent-na1.net/hubfs/19913970/Database-Overview-for-ecoinvent-v3.9.1-9.xlsx"
EMBEDDING="thenlper/gte-large"
START_IDX="5"
END_IDX="10"
OUTPUT_FILE="../data/predictions/parakeet_austin_preds_newer"
LCA_TYPE="eio"
USEEIO_FILE="../data/naics_data/SupplyChainGHGEmissionFactors_v1.2_NAICS_CO2e_USD2021.csv"
NAICS_FILE="../data/naics_data/2017_NAICS_Index_File.xlsx"
SHEET_NAME="Sheet1"
REFERENCE_FILTER="ecoinvent, cut-off system; v3.9.1; 2022; www.ecoinvent.org"
PARAPHRASING="True"


export AWS_PROFILE="carbon_thing_2" 
export AWS_REGION="us-east-1" 


echo "Running..."
python ../src/generate_ranked_preds.py \
--llm_model "$LLM_MODEL" \
--activity_file "$ACTIVITY_FILE" \
--activity_col "$ACTIVITY_COL" \
--reference_file "$REFERENCE_FILE" \
--embedding "$EMBEDDING" \
--verbose \
--start_idx "$START_IDX" \
--end_idx "$END_IDX" \
--output_file "$OUTPUT_FILE" \
--lca_type "$LCA_TYPE" \
--no_progress_bar \
--useeio_file "$USEEIO_FILE" \
--naics_file "$NAICS_FILE" \
--sheet_name "$SHEET_NAME" \
--reference_filter "$REFERENCE_FILTER" \
--paraphrasing "$PARAPHRASING" \
