# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinitionList is a list of CustomResourceDefinition objects.
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # items list individual CustomResourceDefinition objects
    property items : Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition)

    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
