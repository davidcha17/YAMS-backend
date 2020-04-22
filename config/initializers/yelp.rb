require 'yelp/fusion'

configuration = Yelp::Fusion.client.configure do |config|
  config.api_key = "Wc_iRuCp73ssZ3Gy2XR4qUCRO9zX22jfz-1ibi007_hgmwZdYiTswzU0_vmOHwVRPl4t148Vxki0vr2BGyl-3HNepPcwvxDxHTIMxDMC7vRy-6P2X1Xr5Z1xKaqYXnYx"
end

params = {
    term: 'food',
    limit: 5,
    radius: 800,
    open_now: true
}

coordinates = { latitude: 40.753028, longitude: -73.809427 }

configuration.search('NYC', params)
# configuration.search_by_coordinates(coordinates, params)



