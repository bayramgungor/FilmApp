import 'package:film_app/model/film_model/films_model.dart';

abstract class IFilmRepository {
  Future<FilmsModel?> getPopulerFilms();
  Future<FilmsModel?> getUpcomingFilms();
  Future<FilmsModel?> getNowPlay();
  Future<FilmsModel?> getTopRated();
  Future<FilmsModel?> getFilmDetail(int id);
}
