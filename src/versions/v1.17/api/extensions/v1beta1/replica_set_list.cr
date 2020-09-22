# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ReplicaSetList is a collection of ReplicaSets.
  class Api::Extensions::V1beta1::ReplicaSetList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # List of ReplicaSets. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller)
    property items : Array(Api::Extensions::V1beta1::ReplicaSet)

    # Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Extensions::V1beta1::ReplicaSet), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Extensions::V1beta1::ReplicaSet), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
