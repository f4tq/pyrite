# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DEPRECATED - This group version of DaemonSet is deprecated by [apps/v1beta2/DaemonSet. See the release notes for more information. DaemonSet represents the configuration of a daemon set.](apps/v1beta2/DaemonSet. See the release notes for more information. DaemonSet represents the configuration of a daemon set.)
  class Api::Extensions::V1beta1::DaemonSet
    getter api_version : String = "extensions/v1beta1"
    getter kind : String = "DaemonSet"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # The desired behavior of this daemon set. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property spec : Api::Extensions::V1beta1::DaemonSetSpec | Nil

    # The current status of this daemon set. This data may be out of date by some window of time. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property status : Api::Extensions::V1beta1::DaemonSetStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "DaemonSet", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Extensions::V1beta1::DaemonSetSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Extensions::V1beta1::DaemonSetStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "extensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "DaemonSet", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Extensions::V1beta1::DaemonSetSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Extensions::V1beta1::DaemonSetStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Extensions::V1beta1::DaemonSetSpec | Nil = nil, @status : Api::Extensions::V1beta1::DaemonSetStatus | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias DaemonSet = ::Pyrite::Api::Extensions::V1beta1::DaemonSet
  end
end
