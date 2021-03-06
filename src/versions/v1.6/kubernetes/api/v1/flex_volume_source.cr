# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.](provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.)
  class Kubernetes::Api::V1::FlexVolumeSource
    # Driver is the name of the driver to use for this volume.
    property driver : String

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
    property fs_type : String | Nil

    # Optional: Extra command options if any.
    property options : Hash(String, String) | Nil

    # Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    property read_only : Bool | Nil

    # Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
    property secret_ref : Kubernetes::Api::V1::LocalObjectReference | Nil

    ::YAML.mapping({
      driver:     {type: String, nilable: false, key: "driver", getter: false, setter: false},
      fs_type:    {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      options:    {type: Hash(String, String), nilable: true, key: "options", getter: false, setter: false},
      read_only:  {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      secret_ref: {type: Kubernetes::Api::V1::LocalObjectReference, nilable: true, key: "secretRef", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      driver:     {type: String, nilable: false, key: "driver", getter: false, setter: false},
      fs_type:    {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      options:    {type: Hash(String, String), nilable: true, key: "options", getter: false, setter: false},
      read_only:  {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      secret_ref: {type: Kubernetes::Api::V1::LocalObjectReference, nilable: true, key: "secretRef", getter: false, setter: false},
    }, true)

    def initialize(*, @driver : String, @fs_type : String | Nil = nil, @options : Hash(String, String) | Nil = nil, @read_only : Bool | Nil = nil, @secret_ref : Kubernetes::Api::V1::LocalObjectReference | Nil = nil)
    end
  end
end
