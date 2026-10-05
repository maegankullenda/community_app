import 'user_role.dart';

/// A person in the community app (may hold one or more roles over time).
class CommunityUser {
  const CommunityUser({
    required this.id,
    required this.displayName,
    required this.roles,
  });

  final String id;
  final String displayName;
  final Set<UserRole> roles;

  bool get isProvider => roles.contains(UserRole.provider);
  bool get isUser => roles.contains(UserRole.user);
}
