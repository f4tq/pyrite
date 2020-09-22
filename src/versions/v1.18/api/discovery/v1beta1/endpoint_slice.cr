# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointSlice represents a subset of the endpoints that implement a service. For a given service there may be multiple EndpointSlice objects, selected by labels, which must be joined to produce the full set of endpoints.
  class Api::Discovery::V1beta1::EndpointSlice
    getter api_version : String = "discovery/v1beta1"
    getter kind : String = "EndpointSlice"
    # addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.
    property address_type : String

    # endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
    property endpoints : Array(Api::Discovery::V1beta1::Endpoint)

    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates "all ports". Each slice may include a maximum of 100 ports.
    property ports : Array(Api::Discovery::V1beta1::EndpointPort) | Nil

    ::YAML.mapping({
      api_version:  {type: String, default: "discovery/v1beta1", key: "apiVersion", setter: false},
      kind:         {type: String, default: "EndpointSlice", key: "kind", setter: false},
      address_type: {type: String, nilable: false, key: "addressType", getter: false, setter: false},
      endpoints:    {type: Array(Api::Discovery::V1beta1::Endpoint), nilable: false, key: "endpoints", getter: false, setter: false},
      metadata:     {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      ports:        {type: Array(Api::Discovery::V1beta1::EndpointPort), nilable: true, key: "ports", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:  {type: String, default: "discovery/v1beta1", key: "apiVersion", setter: false},
      kind:         {type: String, default: "EndpointSlice", key: "kind", setter: false},
      address_type: {type: String, nilable: false, key: "addressType", getter: false, setter: false},
      endpoints:    {type: Array(Api::Discovery::V1beta1::Endpoint), nilable: false, key: "endpoints", getter: false, setter: false},
      metadata:     {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      ports:        {type: Array(Api::Discovery::V1beta1::EndpointPort), nilable: true, key: "ports", getter: false, setter: false},
    }, true)

    def initialize(*, @address_type : String, @endpoints : Array, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @ports : Array | Nil = nil)
    end
  end

  module Resources::Discovery::V1beta1
    alias EndpointSlice = ::Pyrite::Api::Discovery::V1beta1::EndpointSlice
  end
end