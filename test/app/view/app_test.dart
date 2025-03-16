import 'package:equal_width_list/app/app.dart';
import 'package:equal_width_list/topic/view/topics_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(TopicsPage), findsOneWidget);
    });
  });
}
