#!/bin/zsh
#LCA_TYPE="eio"
LCA_TYPE="process"
#ACTIVITY_FILE="../data/raw/parakeet_austin.csv"
ACTIVITY_FILE="../data/raw/parakeet_recipe.csv"
#ACTIVITY_COL="['COMMODITY_DESCRIPTION']"
ACTIVITY_COL="['Ingredient']"
#OUTPUT_FILE="../data/predictions/parakeet_austin_preds.csv"
#OUTPUT_FILE="../data/predictions/parakeet_austin_preds_test"
OUTPUT_FILE="../data/predictions/parakeet_recipe_preds.csv"
START_IDX="20"
END_IDX="50"



#export AWS_PROFILE="AWS_Account_Name" 
export AWS_PROFILE="AdministratorAccess-237855830175"

#export AWS_REGION="AWS_Region" 
export AWS_REGION="us-east-1" 




echo "Running..."
python ../src/generate_ranked_preds.py --verbose --lca_type "$LCA_TYPE" \
--activity_file "$ACTIVITY_FILE" --activity_col "$ACTIVITY_COL" \
--output_file "$OUTPUT_FILE" \
--sheet_name "$SHEET_NAME" \
--start_idx "$START_IDX" \
--end_idx "$END_IDX" \
