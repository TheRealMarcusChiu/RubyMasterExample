# This mapping is to map long form regions to their short form and vice versa
# Example Usage: get_short_region(aws_region)

def get_region_mappings()
  {
      'usw2' => 'us-west-2',
      'usw1' => 'us-west-1',
      'use1' => 'us-east-1',
  }
end

def get_short_region(long_region)
  get_region_mappings.invert[long_region]
end

def get_long_region(short_region)
  get_region_mappings[short_region]
end