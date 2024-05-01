import 'package:floor/floor.dart';
import 'package:flutter_news_app/features/daily_news/data/data_sources/local/DAO/article_dao.dart';
import 'package:flutter_news_app/features/daily_news/data/models/article.dart';

@Database(version: 1, entities: [ArticleModel])
abstract class AppDatabase extends FloorDatabase{
  ArticleDao get articleDao;
}