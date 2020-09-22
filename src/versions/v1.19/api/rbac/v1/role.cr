# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding.
  class Api::Rbac::V1::Role
    getter api_version : String = "rbac.authorization.k8s.io/v1"
    getter kind : String = "Role"
    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Rules holds all the PolicyRules for this Role
    property rules : Array(Api::Rbac::V1::PolicyRule) | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Role", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      rules:       {type: Array(Api::Rbac::V1::PolicyRule), nilable: true, key: "rules", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Role", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      rules:       {type: Array(Api::Rbac::V1::PolicyRule), nilable: true, key: "rules", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @rules : Array | Nil = nil)
    end
  end

  module Resources::Rbac::V1
    alias Role = ::Pyrite::Api::Rbac::V1::Role
  end
end
