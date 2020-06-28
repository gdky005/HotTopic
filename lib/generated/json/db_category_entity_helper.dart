import 'package:hot_top_flutter/bean/db_category_entity.dart';

dbCategoryEntityFromJson(DbCategoryEntity data, Map<String, dynamic> json) {
  if (json['tags'] != null) {
    data.tags =
        json['tags']?.map((v) => v?.toString())?.toList()?.cast<String>();
  }
  return data;
}

Map<String, dynamic> dbCategoryEntityToJson(DbCategoryEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['tags'] = entity.tags;
  return data;
}
