import 'service_kind.dart';

/// A provider listing one or more services in the community.
class ProviderProfile {
  const ProviderProfile({
    required this.id,
    required this.displayName,
    required this.serviceKinds,
  });

  final String id;
  final String displayName;
  final Set<ServiceKind> serviceKinds;
}
