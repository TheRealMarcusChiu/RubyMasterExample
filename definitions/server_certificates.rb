# For getting certificates and overriding the ones that you don't want to be cloudatron
# usage, call get_certs_overridden_mapping({:production => {:CERT => 'arn:aws:iam::080250996547:server-certificate/wildcard_shopatron_com_with_chain'}})

def get_overridden_certs_mapping(overrides = nil)
  defaults = {
    :production  => {
      :CERT       => 'arn:aws:iam::080250996547:server-certificate/cloudatron_com_with_chain_2016041200',
    },
    :preview     => {
      :CERT       => 'arn:aws:iam::080250996547:server-certificate/cloudatron_com_with_chain_2016041200',
    },
    :staging     => {
      :CERT       => 'arn:aws:iam::080250996547:server-certificate/cloudatron_com_with_chain_2016041200',
    },
    :review      => {
        :CERT       => 'arn:aws:iam::080250996547:server-certificate/cloudatron_com_with_chain_2016041200',
    },
    :qa          => {
      :CERT       => 'arn:aws:iam::080250996547:server-certificate/cloudatron_com_with_chain_2016041200',
    },
    :development => {
      :CERT       => 'arn:aws:iam::080250996547:server-certificate/cloudatron_com_with_chain_2016041200',
    },
    :devops      => {
      :CERT       => 'arn:aws:iam::080250996547:server-certificate/cloudatron_com_with_chain_2016041200',
    }
  }

  #if overrides are given
  if !overrides.nil? && !overrides.empty?
    # process overrides
    overrides.each do |env, cert_info|
      if defaults.has_key?(env)
        defaults[env] = cert_info
      end
    end
  end

  #return the overridden certificates
  defaults
end