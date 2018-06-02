# Functions that we want available to every CloudFormation Script

# combine_user_data takes in an array of paths to CloudFormation UserData scripts and combines them into a single string
def combine_user_data(user_data_scripts)

  #TODO: Convert the combine_user_data method to autoload all scripts in the common/userdata/ directory, combine them with the custom userdata scripts and then sort them based on filename

  data = ''

  for script in user_data_scripts
    begin
      f = File.open(script, "r")
    rescue Errno::ENOENT => e
      puts "\nThe script '#{script}' was not found.\n\n"
      abort
    end
    f.each_line do |line|
      data += line
    end
  end

  return data
end
