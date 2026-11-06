// test/movie_repository_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

void main() {
  group('MovieRepository unit tests', () {
    test('getMovies returns two movies', () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movies = repository.getMovies();

      expect(movies.length, 2);
    });

    test('getMovies contains the mock films with valid details', () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movies = repository.getMovies();

      final Movie first = movies[0];
      expect(first.id, 'solo-leveling-reawakening');
      expect(first.title, 'Solo Leveling: ReAwakening');
      expect(first.price, 9.50);
      expect(first.posterImagePath, isNotEmpty);

      final Movie second = movies[1];
      expect(second.id, 'lost-echoes');
      expect(second.title, 'The Eminence in Shadow: Lost Echoes');
      expect(second.price, 9.50);
      expect(second.posterImagePath, isNotEmpty);
    });

    test('getMovieById returns matching movie when id exists', () {
      final MovieRepository repository = MovieRepository();
      final Movie? movie = repository.getMovieById('lost-echoes');

      expect(movie, isNotNull);
      expect(movie?.title, 'The Eminence in Shadow: Lost Echoes');
    });

    test('getMovieById returns null when id does not exist', () {
      final MovieRepository repository = MovieRepository();
      final Movie? movie = repository.getMovieById('non-existent');

      expect(movie, isNull);
    });
  });
}
