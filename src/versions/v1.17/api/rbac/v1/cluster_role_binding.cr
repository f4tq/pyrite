# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject.
  class Api::Rbac::V1::ClusterRoleBinding
    getter api_version : String = "rbac.authorization.k8s.io/v1"
    getter kind : String = "ClusterRoleBinding"
    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
    property role_ref : Api::Rbac::V1::RoleRef

    # Subjects holds references to the objects the role applies to.
    property subjects : Array(Api::Rbac::V1::Subject) | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ClusterRoleBinding", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      role_ref:    {type: Api::Rbac::V1::RoleRef, nilable: false, key: "roleRef", getter: false, setter: false},
      subjects:    {type: Array(Api::Rbac::V1::Subject), nilable: true, key: "subjects", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ClusterRoleBinding", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      role_ref:    {type: Api::Rbac::V1::RoleRef, nilable: false, key: "roleRef", getter: false, setter: false},
      subjects:    {type: Array(Api::Rbac::V1::Subject), nilable: true, key: "subjects", getter: false, setter: false},
    }, true)

    def initialize(*, @role_ref : Api::Rbac::V1::RoleRef, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @subjects : Array | Nil = nil)
    end
  end

  module Resources::Rbac::V1
    alias ClusterRoleBinding = ::Pyrite::Api::Rbac::V1::ClusterRoleBinding
  end
end
