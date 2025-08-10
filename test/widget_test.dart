import 'package:flutter_test/flutter_test.dart';
import 'package:menu_negacao/main.dart';

void main() {
  testWidgets('HomePage aparece inicialmente', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // "Teste" é o texto que está no HomePage
    expect(find.text('Teste'), findsOneWidget);
  });
}
