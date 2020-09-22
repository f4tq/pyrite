# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CertificateSigningRequest objects provide a mechanism to obtain x509 certificates by submitting a certificate signing request, and having it asynchronously approved and issued.
  #
  # Kubelets use this API to obtain:
  #  1. client certificates to authenticate to kube-apiserver (with the ["kubernetes.io/kube-apiserver-client-kubelet" signerName).]("kubernetes.io/kube-apiserver-client-kubelet" signerName).)
  #  2. serving certificates for TLS endpoints kube-apiserver can connect to securely (with the ["kubernetes.io/kubelet-serving" signerName).]("kubernetes.io/kubelet-serving" signerName).)
  #
  # This API can be used to request client certificates to authenticate to kube-apiserver (with the ["kubernetes.io/kube-apiserver-client" signerName), or to obtain certificates from custom non-Kubernetes signers.]("kubernetes.io/kube-apiserver-client" signerName), or to obtain certificates from custom non-Kubernetes signers.)
  class Api::Certificates::V1::CertificateSigningRequest
    getter api_version : String = "certificates/v1"
    getter kind : String = "CertificateSigningRequest"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # spec contains the certificate request, and is immutable after creation. Only the request, signerName, and usages fields can be set on creation. Other fields are derived by Kubernetes and cannot be modified by users.
    property spec : Api::Certificates::V1::CertificateSigningRequestSpec

    # status contains information about whether the request is approved or denied, and the certificate issued by the signer, or the failure condition indicating signer failure.
    property status : Api::Certificates::V1::CertificateSigningRequestStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "certificates/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CertificateSigningRequest", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Certificates::V1::CertificateSigningRequestSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Certificates::V1::CertificateSigningRequestStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "certificates/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CertificateSigningRequest", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Certificates::V1::CertificateSigningRequestSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Certificates::V1::CertificateSigningRequestStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : Api::Certificates::V1::CertificateSigningRequestSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : Api::Certificates::V1::CertificateSigningRequestStatus | Nil = nil)
    end
  end

  module Resources::Certificates::V1
    alias CertificateSigningRequest = ::Pyrite::Api::Certificates::V1::CertificateSigningRequest
  end
end
