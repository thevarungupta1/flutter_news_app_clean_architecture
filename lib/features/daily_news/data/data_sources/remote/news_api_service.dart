import 'package:flutter_news_app/features/daily_news/data/models/article.dart';
import 'package:retrofit/retrofit.dart'
import 'package:dio/dio.dart';


abstract class NewsApiService{
  factory NewsApiService() = _NewsApiService;

  @GET("/top-headlines")
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("apiKey") String? apiKey,
    @Query("country") String? country,
    @Query("categiry") String? category
  });
}