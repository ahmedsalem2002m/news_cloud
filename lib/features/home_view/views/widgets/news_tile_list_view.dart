import 'package:flutter/material.dart';
import 'package:news_cloud/features/home_view/data/models/news_model.dart';
import 'package:news_cloud/features/home_view/views/widgets/news_tile.dart';



class NewsTileListView extends StatelessWidget {
 final List<ArticleModel> articles;
  const NewsTileListView({super.key, required this.articles});


  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length, (
              context,
              index,
            ) {
              return NewsTile(articleModel: articles[index]);
            }),
          );
  }
}
