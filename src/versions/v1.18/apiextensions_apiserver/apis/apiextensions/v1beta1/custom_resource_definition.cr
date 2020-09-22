# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinition represents a resource that should be exposed on the API server.  Its name MUST be in the format <.spec.name>.<.spec.group>. Deprecated in v1.16, planned for removal in v1.19. Use [apiextensions.k8s.io/v1 CustomResourceDefinition instead.](apiextensions.k8s.io/v1 CustomResourceDefinition instead.)
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinition
    getter api_version : String = "apiextensions/v1beta1"
    getter kind : String = "CustomResourceDefinition"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # spec describes how the user wants the resources to appear
    property spec : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec

    # status indicates the actual state of the CustomResourceDefinition
    property status : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "apiextensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CustomResourceDefinition", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "apiextensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CustomResourceDefinition", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus | Nil = nil)
    end
  end

  module Resources::Apiextensions::V1beta1
    alias CustomResourceDefinition = ::Pyrite::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinition
  end
end
