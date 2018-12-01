require 'rake'
require 'aws-sdk-s3'

def lambda_handler(event: "test", context: "test")
    p "--awspec--"
    rake = Rake.application
    rake.handle_options("--trace")
    rake.run
    Dir.chdir("/tmp") do
        p Dir.glob("*")
    end
    p "--upload repot to s3--"
    s3 = Aws::S3::Resource.new(region:'ap-northeast-1')
    obj = s3.bucket('awspec-report').object('yyyymmdd/result.html')
    obj.upload_file('/tmp/result.html')
end

lambda_handler()