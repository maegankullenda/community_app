import 'package:community_app/domain/time_slot.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final slot = TimeSlot(
    id: 'slot-1',
    providerId: 'provider-a',
    startsAt: DateTime(2026, 10, 10, 9),
    endsAt: DateTime(2026, 10, 10, 9, 30),
  );

  test('available slot books for user', () {
    final booked = slot.bookFor('user-1');
    expect(booked, isNotNull);
    expect(booked!.bookedByUserId, 'user-1');
    expect(booked.isAvailable, isFalse);
  });

  test('booked slot cannot be booked again', () {
    final once = slot.bookFor('user-1');
    expect(once!.bookFor('user-2'), isNull);
  });
}
