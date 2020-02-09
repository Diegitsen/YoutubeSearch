import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:http/http.dart' as http;
import 'package:ytsearch/data/network/youtube_data_source.dart';
import 'package:ytsearch/data/repository/youtube_repository.dart';
import 'package:ytsearch/ui/detail/detail_bloc.dart';
import 'package:ytsearch/ui/search/search_bloc.dart';

void initKiwi() {
  kiwi.Container()
    ..registerInstance(http.Client())
    ..registerFactory((c) => YoutubeDataSource(c.resolve()))
    ..registerFactory((c) => YoutubeRepository(c.resolve()))
    ..registerFactory((c) => SearchBloc(c.resolve()))
    ..registerFactory((c) => DetailBloc(c.resolve()));
}