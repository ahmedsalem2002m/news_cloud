import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_cloud/features/home_view/data/models/news_model.dart';
import 'package:news_cloud/features/home_view/data/repo/news_repo.dart';
import 'package:news_cloud/features/home_view/views/widgets/news_tile_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({super.key, required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsRepo(Dio()).getTopHeadLines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTileListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 200.h),
                  Text(
                    "oop there was an error, try later",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 200.h),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
