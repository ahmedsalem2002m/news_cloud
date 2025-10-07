import 'package:dio/dio.dart';
import 'package:news_cloud/features/home_view/data/models/news_model.dart';

class NewsRepo {
  final Dio dio;

  NewsRepo(this.dio);

  Future<List<ArticleModel>>  getNews() async {
    Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=a426c5614f414130a6db375ce60f325d&category=general",
    );
    Map<String,dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];
    List<ArticleModel> articleList = [];
    for(var article in articles){
      ArticleModel articleModel = ArticleModel.fromJson(article);
      articleList.add(articleModel);
    }
    return articleList;
  }
}

//   final Dio dio;
//
//   NewsRepo(this.dio);
//
//   Future<List<ArticleModel>> getNews() async {
//     Response response = await dio.get(
//       "https://newsapi.org/v2/top-headlines?country=us&apiKey=a426c5614f414130a6db375ce60f325d&category=general",
//     );
//     Map<String, dynamic> jsonData = response.data;
//     List<dynamic> articles = jsonData["articles"];
//     List<ArticleModel> articlesList = [];
//     for (var article in articles) {
//       ArticleModel articleModel = ArticleModel.fromJson(article);
//       articlesList.add(articleModel);
//     }
//     return articlesList;
//   }
// }
