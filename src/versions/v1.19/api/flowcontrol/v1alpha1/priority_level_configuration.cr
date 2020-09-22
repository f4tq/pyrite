# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PriorityLevelConfiguration represents the configuration of a priority level.
  class Api::Flowcontrol::V1alpha1::PriorityLevelConfiguration
    getter api_version : String = "flowcontrol/v1alpha1"
    getter kind : String = "PriorityLevelConfiguration"
    # `metadata` is the standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # `spec` is the specification of the desired behavior of a "request-priority". More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    property spec : Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationSpec | Nil

    # `status` is the current status of a "request-priority". More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    property status : Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "flowcontrol/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PriorityLevelConfiguration", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "flowcontrol/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PriorityLevelConfiguration", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationSpec | Nil = nil, @status : Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationStatus | Nil = nil)
    end
  end

  module Resources::Flowcontrol::V1alpha1
    alias PriorityLevelConfiguration = ::Pyrite::Api::Flowcontrol::V1alpha1::PriorityLevelConfiguration
  end
end
