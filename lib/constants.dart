/*
 * Created with WangQing.
 * User: WangQing
 * Date: 2020/6/28
 * Time: 19:18
 * target: 常量类
 */

import 'package:hot_top_flutter/DBCategory.dart';

class Constants {
  static final String API_HOST = "https://movie.douban.com";

  static final String MOVIE_TAG = "movie"; // 电影分类
  static final String TV_TAG = "tv"; // TV 分类

  static String getCategoryTag(DBCategory tag) {
    return getTag(tag.toString().split(".").last);
  }

  /// 获取 Tag
  static String getTag(String tag) {
    return '$API_HOST/j/search_tags?type=$tag&source=index';
  }
}
