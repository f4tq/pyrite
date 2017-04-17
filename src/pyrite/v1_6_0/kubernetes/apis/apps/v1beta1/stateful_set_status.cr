# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# StatefulSetStatus represents the current state of a StatefulSet.
class Pyrite::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus
  # most recent generation observed by this StatefulSet.
  property observed_generation : Int32?

  # Replicas is the number of actual replicas.
  property replicas : Int32

  YAML.mapping({observed_generation: {type: Int32, nilable: true, key: observedGeneration, getter: false, setter: false},
                replicas:            {type: Int32, nilable: false, key: replicas, getter: false, setter: false}}, true)

  JSON.mapping({observed_generation: {type: Int32, nilable: true, key: observedGeneration, getter: false, setter: false},
                replicas:            {type: Int32, nilable: false, key: replicas, getter: false, setter: false}}, true)

  def initialize(@replicas, @observed_generation = nil)
  end
end