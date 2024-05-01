import 'package:floor/floor.dart';
import 'package:flutter_news_app/features/daily_news/data/models/article.dart';

abstract class ArticleDao{

  @Insert()
  Future<void> insertArtcle(ArticleModel article);

  @delete
  Future<void> deleteArticle(ArticleModel article);

  @Query('SELECT * FROM article')
  Future<List<ArticleModel>> getArticles();
}