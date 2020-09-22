# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CertificateSigningRequestSpec contains the certificate request.
  class Api::Certificates::V1::CertificateSigningRequestSpec
    # extra contains extra attributes of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
    property extra : Hash(String, String) | Nil

    # groups contains group membership of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
    property groups : Array(String) | Nil

    # request contains an x509 certificate signing request encoded in a "CERTIFICATE REQUEST" PEM block. When serialized as JSON or YAML, the data is additionally base64-encoded.
    property request : String

    # signerName indicates the requested signer, and is a qualified name.
    #
    # [List/watch requests for CertificateSigningRequests can filter on this field using a "spec.signerName=NAME" fieldSelector.](List/watch requests for CertificateSigningRequests can filter on this field using a "spec.signerName=NAME" fieldSelector.)
    #
    # Well-known Kubernetes signers are:
    #  1. ["kubernetes.io/kube-apiserver-client": issues client certificates that can be used to authenticate to kube-apiserver.]("kubernetes.io/kube-apiserver-client": issues client certificates that can be used to authenticate to kube-apiserver.)
    #   Requests for this signer are never auto-approved by kube-controller-manager, can be issued by the "csrsigning" controller in kube-controller-manager.
    #  2. ["kubernetes.io/kube-apiserver-client-kubelet": issues client certificates that kubelets use to authenticate to kube-apiserver.]("kubernetes.io/kube-apiserver-client-kubelet": issues client certificates that kubelets use to authenticate to kube-apiserver.)
    #   Requests for this signer can be auto-approved by the "csrapproving" controller in kube-controller-manager, and can be issued by the "csrsigning" controller in kube-controller-manager.
    #  3. ["kubernetes.io/kubelet-serving" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.]("kubernetes.io/kubelet-serving" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.)
    #   Requests for this signer are never auto-approved by kube-controller-manager, and can be issued by the "csrsigning" controller in kube-controller-manager.
    #
    # More details are available at [https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers](https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers)
    #
    # Custom signerNames can also be specified. The signer defines:
    #  1. Trust distribution: how trust (CA bundles) are distributed.
    #  2. Permitted subjects: and behavior when a disallowed subject is requested.
    #  3. Required, permitted, or forbidden x509 extensions in the request (including whether subjectAltNames are allowed, which types, restrictions on allowed values) and behavior when a disallowed extension is requested.
    #  4. Required, permitted, or forbidden key usages / extended key usages.
    #  5. [Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.](Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.)
    #  6. Whether or not requests for CA certificates are allowed.
    property signer_name : String

    # uid contains the uid of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
    property uid : String | Nil

    # usages specifies a set of key usages requested in the issued certificate.
    #
    # Requests for TLS client certificates typically request: "digital signature", "key encipherment", "client auth".
    #
    # Requests for TLS serving certificates typically request: "key encipherment", "digital signature", "server auth".
    #
    # Valid values are:
    #  "signing", "digital signature", "content commitment",
    #  "key encipherment", "key agreement", "data encipherment",
    #  "cert sign", "crl sign", "encipher only", "decipher only", "any",
    #  "server auth", "client auth",
    #  "code signing", "email protection", ["s/mime",]("s/mime",)
    #  "ipsec end system", "ipsec tunnel", "ipsec user",
    #  "timestamping", "ocsp signing", "microsoft sgc", "netscape sgc"
    property usages : Array(String) | Nil

    # username contains the name of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
    property username : String | Nil

    ::YAML.mapping({
      extra:       {type: Hash(String, String), nilable: true, key: "extra", getter: false, setter: false},
      groups:      {type: Array(String), nilable: true, key: "groups", getter: false, setter: false},
      request:     {type: String, nilable: false, key: "request", getter: false, setter: false},
      signer_name: {type: String, nilable: false, key: "signerName", getter: false, setter: false},
      uid:         {type: String, nilable: true, key: "uid", getter: false, setter: false},
      usages:      {type: Array(String), nilable: true, key: "usages", getter: false, setter: false},
      username:    {type: String, nilable: true, key: "username", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      extra:       {type: Hash(String, String), nilable: true, key: "extra", getter: false, setter: false},
      groups:      {type: Array(String), nilable: true, key: "groups", getter: false, setter: false},
      request:     {type: String, nilable: false, key: "request", getter: false, setter: false},
      signer_name: {type: String, nilable: false, key: "signerName", getter: false, setter: false},
      uid:         {type: String, nilable: true, key: "uid", getter: false, setter: false},
      usages:      {type: Array(String), nilable: true, key: "usages", getter: false, setter: false},
      username:    {type: String, nilable: true, key: "username", getter: false, setter: false},
    }, true)

    def initialize(*, @request : String, @signer_name : String, @extra : Hash(String, String) | Nil = nil, @groups : Array | Nil = nil, @uid : String | Nil = nil, @usages : Array | Nil = nil, @username : String | Nil = nil)
    end
  end
end
