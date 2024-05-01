import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:flutter_news_app/features/daily_news/domain/entities/article.dart';

abstract class RemoteAriclesState extends Equatable{
  final List<ArticleEntity> ? articles;
  final DioError ? error;

  const RemoteAriclesState({this.articles, this.error});

  @override
  List<Object> get props => [ articles!, error!];
}

class RemoteArticlesLoading extends RemoteAriclesState{
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteAriclesState{
  const RemoteArticlesDone(List<ArticleEntity> article): super(articles: article);
}


class RemoteArticlesError extends RemoteAriclesState{
  const RemoteArticlesError(DioError error): super(error: error);
}
