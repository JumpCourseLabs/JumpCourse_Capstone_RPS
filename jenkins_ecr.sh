#!/bin/bash
# ecs-cli configure --cluster jump-capstone --default-launch-type EC2 \
# --config-name jump-capstone --region us-east-1

# ecs-cli configure profile --access-key $AWS_ACCESS_KEY_ID \
# --secret-key $AWS_SECRET_ACCESS_KEY \
# --profile-name jump-capstone-profile

# ecs-cli up --keypair jump-capstone --capability-iam --size 2 --instance-type t2.micro \
# --cluster-config jump-capstone --ecs-profile jump-capstone-profile --port 5000

# sleep 60

# ecs-cli compose up --create-log-groups --cluster-config jump-capstone \
# --ecs-profile jump-capstone-profile

# ecs-cli ps --cluster-config jump-capstone --ecs-profile jump-capstone-profile

# When we're ready to tear down the cluster and the repo:

ecs-cli down --force --cluster-config jump-capstone --ecs-profile jump-capstone-profile

