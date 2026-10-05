import 'package:community_app/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('shows community app title', (tester) async {
    await tester.pumpWidget(const CommunityApp());
    expect(find.text('Community App'), findsOneWidget);
  });
}
