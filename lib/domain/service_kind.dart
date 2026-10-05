/// Extensible catalog of community services. Add new values as providers onboard.
enum ServiceKind {
  carWash,
  foodie,
  beauty,
}

extension ServiceKindLabels on ServiceKind {
  String get displayName => switch (this) {
        ServiceKind.carWash => 'Car Wash',
        ServiceKind.foodie => 'Foodie',
        ServiceKind.beauty => 'Beauty',
      };

  /// Appointments use time slots; orders use menus / line items.
  bool get usesTimeSlots => this != ServiceKind.foodie;
}
