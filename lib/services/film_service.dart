import 'package:film_app/model/film_model/films_model.dart';
import 'package:film_app/services/i_film_service.dart';
import 'package:dio/dio.dart';

class FilmService extends IFilmService {
  late final Dio dio;

  final BaseOptions options = BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3/',
    queryParameters: {'api_key': 'e9d65ceea231435973392507fdf8061e'},
  );

  FilmService() {
    dio = Dio(options);
  }

  @override
  Future<FilmsModel> getFilmDetail(int id) {
    // TODO: implement getFilmDetail
    throw UnimplementedError();
  }

  @override
  Future<FilmsModel> getNowPlay() async {
    final response = await dio.get('movie/now_playing');
    final filmList = FilmsModel.fromJson(response.data);

    return filmList;
  }

  @override
  Future<FilmsModel> getPopulerFilms() async {
    final response = await dio.get('movie/popular');
    final filmList = await FilmsModel.fromJson(response.data);

    return filmList;
  }

  @override
  Future<FilmsModel> getTopRated() async {
    final response = await dio.get('movie/top_rated');
    final filmList = FilmsModel.fromJson(response.data);

    return filmList;
  }

  @override
  Future<FilmsModel> getUpcomingFilms() async {
    final response = await dio.get('movie/upcoming');
    final filmList = FilmsModel.fromJson(response.data);

    return filmList;
  }
}
