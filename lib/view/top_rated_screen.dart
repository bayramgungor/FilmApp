import 'package:flutter/material.dart';

import '../viewmodel/film_viewmodel.dart';
import 'dart:core';

class TopRatedScreen extends StatelessWidget {
  TopRatedScreen({super.key});

  final FilmViewModel _viewModel = FilmViewModel();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder(
      future: _viewModel.getTopRated(),
      builder: (context, snapshot) => ListView.builder(
        itemCount: _viewModel.filmModel?.results?.length,
        itemBuilder: (context, index) => Card(
            child: ListTile(
                title: Text(
                    '${_viewModel.filmModel?.results?[index].originalTitle}'),
                subtitle: Text(
                    '${_viewModel.filmModel?.results?[index].title}(${_viewModel.filmModel?.results?[index].releaseDate})'),
                leading: Image.network(
                  '${_viewModel.imageURL}${_viewModel.filmModel?.results?[index].backdropPath}',
                  width: 75,
                  height: 75,
                  errorBuilder: (context, error, stackTrace) =>
                      const CircularProgressIndicator(),
                ))),
      ),
    ));
  }
}
