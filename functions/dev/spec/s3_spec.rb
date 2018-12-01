require "spec_helper"

describe s3_bucket('sagemaker-sample-bucket') do
    it { should exist }
    its(:acl_grants_count) { should eq 1 }
end

# describe s3_bucket('sagemaker-sample-bucket2') do
#     it { should exist }
#     its(:acl_grants_count) { should eq 1 }
# end