library serializers;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:ytsearch/data/model/detail/video_item.dart';
import 'package:ytsearch/data/model/detail/video_snippet.dart';
import 'package:ytsearch/data/model/detail/youtube_video_response.dart';
import 'package:ytsearch/data/model/search/model_search.dart';
import 'package:ytsearch/data/model/common/thumbnail.dart';
import 'package:ytsearch/data/model/common/thumbnails.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  YoutubeSearchResult,
  SearchItem,
  Id,
  SearchSnippet,
  Thumbnails,
  Thumbnail,
  YoutubeVideoResponse,
  VideoItem,
  VideoSnippet,
])

final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();