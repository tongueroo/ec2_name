$:.unshift File.dirname(__FILE__)

require 'right_aws'
require 'yaml'

class Ec2Name
  def run
    @name = ARGV[0]
    if @name.nil?
      fail("ERROR: Need to supply a name.  Usage: #{__FILE__} [name]")
    end

    @config = YAML.load(IO.read("#{ENV['HOME']}/.br-cloud.yml"))
    @ec2 = RightAws::Ec2.new(@config[:aws_secret_id], @config[:aws_secret_key])

    instance_id = ENV['INSTANCE_ID'] || `curl -s http://169.254.169.254/latest/meta-data/instance-id`
    puts "Creating tag Name #{@name} for instance #{instance_id}"
    @ec2.create_tags(instance_id, 'Name' => @name)
    puts "Created tag Name #{@name} for instance #{instance_id}"
  end
end