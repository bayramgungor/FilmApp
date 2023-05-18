import 'package:film_app/model/film_model/films_model.dart';
import 'package:film_app/repository/i_film_repository.dart';
import 'package:film_app/services/i_film_service.dart';

import '../services/film_service.dart';

class FilmRepository extends IFilmRepository {
  IFilmService iFilmService = FilmService();
  FilmRepository({required this.iFilmService});

  @override
  Future<FilmsModel?> getFilmDetail(int id) {
    // TODO: implement getFilmDetail
    throw UnimplementedError();
  }

  @override
  Future<FilmsModel?> getNowPlay() async {
    try {
      final result = await iFilmService.getNowPlay();
      if (result != null) {
        return result;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<FilmsModel?> getPopulerFilms() async {
    try {
      final result = await iFilmService.getPopulerFilms();
      if (result != null) {
        return result;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<FilmsModel?> getTopRated() async {
    try {
      final result = await iFilmService.getTopRated();
      if (result != null) {
        return result;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<FilmsModel?> getUpcomingFilms() async {
    try {
      final result = await iFilmService.getUpcomingFilms();
      if (result != null) {
        return result;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
  }
}
