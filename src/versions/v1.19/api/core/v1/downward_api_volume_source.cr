# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DownwardAPIVolumeSource represents a volume containing downward API info. Downward API volumes support ownership management and SELinux relabeling.
  class Api::Core::V1::DownwardAPIVolumeSource
    # Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    property default_mode : Int32 | Nil

    # Items is a list of downward API volume file
    property items : Array(Api::Core::V1::DownwardAPIVolumeFile) | Nil

    ::YAML.mapping({
      default_mode: {type: Int32, nilable: true, key: "defaultMode", getter: false, setter: false},
      items:        {type: Array(Api::Core::V1::DownwardAPIVolumeFile), nilable: true, key: "items", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      default_mode: {type: Int32, nilable: true, key: "defaultMode", getter: false, setter: false},
      items:        {type: Array(Api::Core::V1::DownwardAPIVolumeFile), nilable: true, key: "items", getter: false, setter: false},
    }, true)

    def initialize(*, @default_mode : Int32 | Nil = nil, @items : Array | Nil = nil)
    end
  end
end