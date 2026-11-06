// repositories/movie_repository.dart
import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return const [
      Movie(
        id: 'solo-leveling-reawakening',
        title: 'Solo Leveling: ReAwakening',
        synopsis:
            'In a world where hunters battle monsters from mysterious gates, Sung Jinwoo is the weakest of them all. After a near-fatal dungeon raid, he gains a secret system that lets him level up without limit. This film recaps the first season of the anime and includes a preview of the next chapter.',
        ageRating: '15',
        screeningTime: 'Saturday 19:30',
        price: 9.50,
        posterImagePath: 'images/solo_leveling.jpg',
      ),
      Movie(
        id: 'lost-echoes',
        title: 'The Eminence in Shadow: Lost Echoes',
        synopsis:
            'Cid Kagenou plays the part of an ordinary background character by day, while secretly leading the Shadow Garden organisation as the mysterious Shadow. This new film continues the story after season 2 and marks his return to the big screen.',
        ageRating: 'TBC',
        screeningTime: 'Coming 2027',
        price: 9.50,
        posterImagePath: 'images/the_eminence_in_shadow.jpg',
      ),
    ];
  }
}
