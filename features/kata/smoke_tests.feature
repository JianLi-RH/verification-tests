Feature: kata smoke tests

  # @author pruan@redhat.com
  # @case_id OCP-41263
  @admin
  @4.12 @4.11 @4.10 @4.9 @4.8
  @gcp-ipi @baremetal-ipi @azure-ipi
  @gcp-upi @baremetal-upi @azure-upi
  @flaky
  @singlenode
  @network-ovnkubernetes @network-openshiftsdn
  @proxy @noproxy @disconnected @connected
  @heterogeneous @arm64 @amd64
  @inactive
  Scenario: OCP-41263:Kata Namespace installed by operator
    Given kata container has been installed successfully
    Then the expression should be true> project.name == 'openshift-sandboxed-containers-operator'
