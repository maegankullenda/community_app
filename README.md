# Community App

Flutter mobile app for **users** to browse and book services from **providers** in a community — starting with car wash, then foodie and beauty.

## Requirements

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (stable)

## Run

```bash
flutter pub get
flutter run
```

## Test (TDD)

Domain logic is covered with unit tests; run the full suite with:

```bash
flutter test
```

## Project docs

Architecture, roadmap, and product context live in the Project **Context** tab (not duplicated here).

## Structure

- `lib/domain/` — shared models and booking rules (no UI)
- `lib/features/` — feature modules (added per phase)
- `test/domain/` — unit tests for domain types
