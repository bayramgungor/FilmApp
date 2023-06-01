import 'package:film_app/repository/film_repository.dart';
import 'package:film_app/repository/i_film_repository.dart';
import 'package:film_app/services/film_service.dart';
import 'package:film_app/viewmodel/film_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(FilmScreen());

class FilmScreen extends StatefulWidget {
  const FilmScreen({super.key});

  @override
  State<FilmScreen> createState() => _FilmScreenState();
}

class _FilmScreenState extends State<FilmScreen> {
  final FilmViewModel _viewModel = FilmViewModel();

  @override
  void initState() {
    _viewModel.getPopulerFilm();

    super.initState();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Film APP'),
                bottom: const TabBar(tabs: [
                  Tab(
                    text: 'Popular',
                  ),
                  Tab(
                    text: 'Top Rated',
                  ),
                  Tab(
                    text: 'Now Play',
                  ),
                  Tab(
                    text: 'UpComing',
                  )
                ]),
              ),
              body: TabBarView(children: [
                Center(
                    child: ListView.builder(
                  itemCount: _viewModel.filmModel?.results?.length,
                  itemBuilder: (context, index) => Card(
                      child: ListTile(
                          title: Text(
                              '${_viewModel.filmModel?.results?[index].originalTitle}'),
                          subtitle: Text(
                              '${_viewModel.filmModel?.results?[index].overview}'),
                          leading: Image.network(
                              '${_viewModel.imageURL}${_viewModel.filmModel?.results?[index].backdropPath}'))),
                )),
                Container(),
                Container(),
                Container()
              ]),
            )),
      );
}
