require 'aws-sdk-core'

# to run locally, you will need a profile called devops-ui
# it can have your keys, it will just need access to whatever
# the devops-ui user can access
aws_creds = Aws::SharedCredentials.new(profile_name: settings.aws_profile)

AWSCLIENTS = {}
AWSCLIENTS[:dynamo] = Aws::DynamoDB::Client.new(region: 'us-west-2', credentials: aws_creds)
AWSCLIENTS[:ec2] = Aws::EC2::Client.new(region: 'us-west-2', credentials: aws_creds)
AWSCLIENTS[:cfn] = Aws::CloudFormation::Client.new(region: 'us-west-2', credentials: aws_creds)