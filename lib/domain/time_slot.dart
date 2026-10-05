/// A bookable window offered by a provider (car wash, beauty, etc.).
class TimeSlot {
  const TimeSlot({
    required this.id,
    required this.providerId,
    required this.startsAt,
    required this.endsAt,
    this.bookedByUserId,
  });

  final String id;
  final String providerId;
  final DateTime startsAt;
  final DateTime endsAt;
  final String? bookedByUserId;

  bool get isAvailable => bookedByUserId == null;

  /// Returns a copy with the slot reserved for [userId], or null if unavailable.
  TimeSlot? bookFor(String userId) {
    if (!isAvailable) return null;
    return TimeSlot(
      id: id,
      providerId: providerId,
      startsAt: startsAt,
      endsAt: endsAt,
      bookedByUserId: userId,
    );
  }
}
