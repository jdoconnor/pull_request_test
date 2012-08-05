class PullRequestTest < Sinatra::Base
  get "/" do
    directory = "/Users/jdoc/Documents/workspace/bellycard/belly"

    puts system "sh run_tests.sh #{directory} &"
  end
end