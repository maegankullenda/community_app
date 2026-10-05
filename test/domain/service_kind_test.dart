import 'package:community_app/domain/service_kind.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('foodie uses orders not time slots', () {
    expect(ServiceKind.foodie.usesTimeSlots, isFalse);
    expect(ServiceKind.carWash.usesTimeSlots, isTrue);
    expect(ServiceKind.beauty.usesTimeSlots, isTrue);
  });
}
