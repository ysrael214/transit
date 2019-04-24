Geocoder.configure(
  # Geocoding options
  lookup: :nominatim,         # name of geocoding service (symbol)

  ip_lookup: :ipinfo_io,      # name of IP address geocoding service (symbol)
  nominatim: {
    timeout: 10
  },

  ipinfo_io: {
    # Hard coded keys are insecure!!!!
    api_key: "cee66ec569b6b3",               # API key for geocoding service
    timeout: 5
  },

  http_headers: { "User-Agent" => "P" },
  language: :en,              # ISO-639 language code
  use_https: false,           # use HTTPS for lookup requests? (if supported)
  # http_proxy: nil,            # HTTP proxy server (user:pass@host:port)
  # https_proxy: nil,           # HTTPS proxy server (user:pass@host:port)

  # cache: nil,                 # cache object (must respond to #[], #[]=, and #del)
  # cache_prefix: 'geocoder:',  # prefix (string) to use for all cache keys

  # Exceptions that should not be rescued by default
  # (if you want to implement custom error handling);
  # supports SocketError and Timeout::Error
  # always_raise: [],

  # Calculation options
  units: :km,                 # :km for kilometers or :mi for miles
  distances: :linear          # :spherical or :linear
)
