# This mapping is to map long form applications to their short form and vice versa
# Example Usage: get_long_app_name('oms', 'acct')

def get_oms_mappings()
  {
      'acct'  => 'accounting',
      'bord'  => 'border',
      'cars'  => 'carrier-service',
      'cas'  => 'cas',
      'cust'  => 'customer',
      'clutch' => 'giftcard-clutch',
      'dvpui'  => 'devops-ui',
      'fbot'  => 'finderbot',
      'fc-cyb'  => 'fraud-cartridge-cybersource',
      'fc-red'  => 'fraud-cartridge-red',
      'kount'  => 'fraud-cartridge-kount',
      'fraud'  => 'fraud-engine',
      'gr'  => 'global-resources',
      'gc-gt'  => 'giftcard-giftango',
      'gc-tang'  => 'giftcard-giftango',
      'gc-svs' => 'giftcard-svs',
      'inv'  => 'inventory',
      'lm'  => 'lambda-manager',
      'mkt'  => 'marketplace',
      'not'  => 'notifications',
      'oau'  => 'oauth',
      'or'  => 'order-routing',
      'pay'  => 'payment',
      'pg-ads'  => 'payment-gateway-ads',
      'pg-cyb'  => 'payment-gateway-cybersource',
      'pg-ez'  => 'payment-gateway-payeezy',
      'pg-st'  => 'payment-gateway-secure-trading',
      'pg-td'  => 'payment-gateway-tdbank',
      'lam'  => 'product',
      'rpts'  => 'reports',
      'ric'  => 'ricoh-translator',
      'snap-ecom'  => 'snap-kibo-ecommerce',
      'ske'  => 'snap-kibo-ecommerce',
      'snap-tour'  => 'snap-tourneau',
      'ssl'  => 'ssl-manager-worker',
      'tr'  => 'transformation-routing',
      'tron'  => 'tron',
      'vert'  => 'vertical',
  }
end

def get_ecom_mappings()
  {
    'bb'  => 'beach-body',
  }
end

def get_short_app_name(platform, long_app)
  if platform.nil? || platform == 'oms'
    get_oms_mappings.invert[long_app]
  elsif platform == 'ecom'
    get_ecom_mappings.invert[long_app]
  end
end

def get_long_app_name(platform, short_app)
  if platform.nil? || platform == 'oms'
    get_oms_mappings[short_app]
  elsif platform == 'ecom'
    get_ecom_mappings[short_app]
  end
end
