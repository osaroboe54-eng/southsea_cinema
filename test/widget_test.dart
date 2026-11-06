// test/widget_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/widgets/movie_card.dart';

void main() {
  group('App smoke tests', () {
    testWidgets('Home page displays the app title', (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());

      expect(find.text('Southsea Cinema'), findsOneWidget);
    });

    testWidgets('Home page displays movie cards and booking buttons',
        (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());

      expect(find.byType(MovieCard), findsNWidgets(2));
      expect(find.text('Solo Leveling: ReAwakening'), findsOneWidget);
      expect(
          find.text('The Eminence in Shadow: Lost Echoes'), findsOneWidget);
      expect(find.text('BOOK NOW'), findsNWidgets(2));
    });
  });
}
