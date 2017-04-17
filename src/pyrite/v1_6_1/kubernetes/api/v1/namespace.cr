# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Namespace provides a scope for Names.Use of multiple namespaces is optional.
class Pyrite::V1_6_1::Kubernetes::Api::V1::Namespace
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the behavior of the Namespace.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::Pyrite::V1_6_1::Kubernetes::Api::V1::NamespaceSpec

  # Status describes the current status of a Namespace.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::Pyrite::V1_6_1::Kubernetes::Api::V1::NamespaceStatus

  YAML.mapping({
    api_version: {type: String, default: "Namespace", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::NamespaceSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::NamespaceStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Namespace", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::NamespaceSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::NamespaceStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "Namespace"
    @kind = "v1"
  end

  # list or watch objects of kind Namespace
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # create a Namespace
  def self.create(pretty : String?, metadata = nil, spec = nil, status = nil)
  end

  # delete collection of Namespace
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # read the specified Namespace
  def self.get(pretty : String?, exact : Bool?, export : Bool?, name : String)
  end

  # replace the specified Namespace
  def replace(pretty : String?, metadata = nil, spec = nil, status = nil)
  end

  # delete a Namespace
  def delete(pretty : String?, grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end

  # replace finalize of the specified Namespace
  def replace(pretty : String?, metadata = nil, spec = nil, status = nil)
  end

  # read status of the specified Namespace
  def self.get(pretty : String?, name : String)
  end

  # replace status of the specified Namespace
  def replace(pretty : String?, metadata = nil, spec = nil, status = nil)
  end
end