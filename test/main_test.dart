import 'package:flutter_injection_getit/app.dart';
import 'package:flutter_injection_getit/inject.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Teste inject - App', (WidgetTester tester) async {
    Inject.init();
    await tester.pumpWidget(const App());
  });
}