import '../model/film_model/films_model.dart';

abstract class IFilmService {
  Future<FilmsModel?> getPopulerFilms();
  Future<FilmsModel?> getUpcomingFilms();
  Future<FilmsModel?> getNowPlay();
  Future<FilmsModel?> getTopRated();
  //Default variable
  //Future<FilmsModel> getFilmDetail({int id = 1});
  Future<FilmsModel?> getFilmDetail(int id);
}
