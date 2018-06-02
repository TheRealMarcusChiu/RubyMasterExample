# This mapping is to map long form environments to their short form and vice versa
# Example Usage: get_short_environment(parameters['Environment'])

#Note that the keys HAVE to be strings so 'invert' will work below
def get_env_mappings()
  {
      'prd' => 'production',
      'prv' => 'preview',
      'rev' => 'review',
      'stg' => 'staging',
      'qa'  => 'qa',
      'dev' => 'development',
      'dvp' => 'devops',
  }
end

def get_short_environment(long_env)
  get_env_mappings.invert[long_env]
end

def get_long_environment(short_env)
  get_env_mappings[short_env]
end