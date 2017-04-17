# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Represents an ISCSI disk.ISCSI volumes can only be mounted as read/write once.ISCSI volumes support ownership management and SELinux relabeling.
class Pyrite::V1_6_0::Kubernetes::Api::V1::ISCSIVolumeSource
  # Filesystem type of the volume that you want to mount.Tip: Ensure that the filesystem type is supported by the host operating system.Examples: "ext4", "xfs", "ntfs".Implicitly inferred to be "ext4" if unspecified.More info: http://kubernetes.io/docs/user-guide/volumes#iscsi
  property fs_type : String?

  # Target iSCSI Qualified Name.
  property iqn : String

  # Optional: Defaults to 'default' (tcp).iSCSI interface name that uses an iSCSI transport.
  property iscsi_interface : String?

  # iSCSI target lun number.
  property lun : Int32

  # iSCSI target portal List.The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  property portals : Array(String)?

  # ReadOnly here will force the ReadOnly setting in VolumeMounts.Defaults to false.
  property read_only : Bool?

  # iSCSI target portal.The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  property target_portal : String

  YAML.mapping({fs_type:         {type: String, nilable: true, key: fsType, getter: false, setter: false},
                iqn:             {type: String, nilable: false, key: iqn, getter: false, setter: false},
                iscsi_interface: {type: String, nilable: true, key: iscsiInterface, getter: false, setter: false},
                lun:             {type: Int32, nilable: false, key: lun, getter: false, setter: false},
                portals:         {type: Array(String), nilable: true, key: portals, getter: false, setter: false},
                read_only:       {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                target_portal:   {type: String, nilable: false, key: targetPortal, getter: false, setter: false}}, true)

  JSON.mapping({fs_type:         {type: String, nilable: true, key: fsType, getter: false, setter: false},
                iqn:             {type: String, nilable: false, key: iqn, getter: false, setter: false},
                iscsi_interface: {type: String, nilable: true, key: iscsiInterface, getter: false, setter: false},
                lun:             {type: Int32, nilable: false, key: lun, getter: false, setter: false},
                portals:         {type: Array(String), nilable: true, key: portals, getter: false, setter: false},
                read_only:       {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                target_portal:   {type: String, nilable: false, key: targetPortal, getter: false, setter: false}}, true)

  def initialize(@iqn, @lun, @target_portal, @fs_type = nil, @iscsi_interface = nil, @portals = nil, @read_only = nil)
  end
end