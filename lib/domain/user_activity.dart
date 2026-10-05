import 'service_kind.dart';

/// Shared shape for items shown under Orders / Appointments.
sealed class UserActivity {
  const UserActivity({
    required this.id,
    required this.userId,
    required this.providerId,
    required this.serviceKind,
    required this.createdAt,
  });

  final String id;
  final String userId;
  final String providerId;
  final ServiceKind serviceKind;
  final DateTime createdAt;
}

/// Time-based booking (car wash, beauty).
final class AppointmentActivity extends UserActivity {
  const AppointmentActivity({
    required super.id,
    required super.userId,
    required super.providerId,
    required super.serviceKind,
    required super.createdAt,
    required this.timeSlotId,
    required this.startsAt,
  });

  final String timeSlotId;
  final DateTime startsAt;
}

/// Menu / meal order (foodie).
final class OrderActivity extends UserActivity {
  const OrderActivity({
    required super.id,
    required super.userId,
    required super.providerId,
    required super.createdAt,
    required this.lineItemIds,
  }) : super(serviceKind: ServiceKind.foodie);

  final List<String> lineItemIds;
}
