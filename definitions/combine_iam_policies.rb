# Passing the combine_iam_policies an array of file paths will run the load_from_file function from the cloudformation-ruby-dsl on each file
def combine_iam_policies(iam_policies = [])

  # First take all of the custom policies defined in the iam_policies variable
  for policy in iam_policies
    load_from_file(policy)
  end

  # Include additional IAM Policies
  if File.exist?('iam_policies.rb')
    load_from_file './iam_policies.rb'
  end

  # Now take all of the common policies from common/iam_policies/
  common_iam_policies='../../lib/common/iam_policies'
  Dir.entries(common_iam_policies).each_with_index do |path|
    next if path == "." or path == ".." or path.include?'README.MD' or path == "optional"
    load_from_file("#{common_iam_policies}/#{path}")
  end

end