import 'package:flutter_news_app/core/resources/data_state.dart';
import 'package:flutter_news_app/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository{
  // Api method
  Future<DataState<List<ArticleEntity>>> getNewsArticles();

  // database method
  Future <List<ArticleEntity>> getSavedArcticles();

  Future <void> saveArticle(ArticleEntity article);

  Future <void> removeArticle(ArticleEntity article);
}