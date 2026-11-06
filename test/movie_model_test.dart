// test/movie_model_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('Movie model tests', () {
    test('creates Movie instance with given properties', () {
      const movie = Movie(
        id: 'test-film',
        title: 'Test Film',
        synopsis: 'A film used for testing.',
        ageRating: '12A',
        screeningTime: 'Friday 18:00',
        price: 9.5,
        posterImagePath: 'images/solo_leveling.jpg',
      );

      expect(movie.id, 'test-film');
      expect(movie.title, 'Test Film');
      expect(movie.synopsis, 'A film used for testing.');
      expect(movie.ageRating, '12A');
      expect(movie.screeningTime, 'Friday 18:00');
      expect(movie.price, 9.5);
      expect(movie.posterImagePath, 'images/solo_leveling.jpg');
    });

    test('formattedPrice shows two decimals for a whole-pound price', () {
      const movie = Movie(
        id: 'whole-pound',
        title: 'Whole Pound Film',
        synopsis: 'Costs a whole number of pounds.',
        ageRating: 'PG',
        screeningTime: 'Saturday 14:00',
        price: 10,
        posterImagePath: 'images/solo_leveling.jpg',
      );

      expect(movie.formattedPrice, '£10.00');
    });

    test('formattedPrice shows pence correctly', () {
      const movie = Movie(
        id: 'with-pence',
        title: 'Pence Film',
        synopsis: 'Costs pounds and pence.',
        ageRating: '15',
        screeningTime: 'Sunday 20:00',
        price: 7.5,
        posterImagePath: 'images/solo_leveling.jpg',
      );

      expect(movie.formattedPrice, '£7.50');
    });
  });
}
