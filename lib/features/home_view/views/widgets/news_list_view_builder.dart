import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_cloud/features/home_view/data/models/news_model.dart';
import 'package:news_cloud/features/home_view/data/repo/news_repo.dart';
import 'package:news_cloud/features/home_view/views/widgets/news_tile_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsRepo(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(child: Center(child: Column(
      children: [
        SizedBox(height: 200.h,),
        CircularProgressIndicator(),
      ],
    )))
        : NewsTileListView(articles: articles,);
  }
}
