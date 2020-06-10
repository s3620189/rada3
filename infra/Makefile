up:
	terraform apply --auto-approve -var environment=${ENV}

down:
	terraform destroy --auto-approve -var environment=${ENV}

init:
	terraform init --backend-config="key=state/${ENV}.tfstate" --backend-config="dynamodb_table=RMIT-locktable-8i6n86" --backend-config="bucket=rmit-tfstate-8i6n86"


