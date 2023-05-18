import 'package:film_app/model/film_model/films_model.dart';
import 'package:film_app/repository/film_repository.dart';
import 'package:film_app/repository/i_film_repository.dart';
import 'package:film_app/services/film_service.dart';
import 'package:film_app/services/i_film_service.dart';

class FilmViewModel {
  IFilmRepository iFilmRepository = FilmRepository(iFilmService: FilmService());
  FilmsModel? filmModel = FilmsModel();
  final imageURL = 'https://image.tmdb.org/t/p/original';

  FilmService iFilmService = FilmService();

  Future<FilmsModel?> getPopulerFilm() async {
    final result = await iFilmRepository.getPopulerFilms();

    filmModel = result;

    return result;
  }

  Future<FilmsModel?> getNowPlay() async {
    final result = await iFilmRepository.getNowPlay();
    return result;
  }

  Future<FilmsModel?> getTopRated() async {
    final result = await iFilmRepository.getTopRated();
    return result;
  }

  Future<FilmsModel?> getUpcomingFilms() async {
    final result = await iFilmRepository.getUpcomingFilms();
    return result;
  }
}
