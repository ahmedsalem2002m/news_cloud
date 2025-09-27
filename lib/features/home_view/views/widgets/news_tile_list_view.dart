import 'package:flutter/material.dart';
import 'package:news_cloud/features/home_view/views/widgets/news_tile.dart';

class NewsTileListView extends StatelessWidget {
  const NewsTileListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 8, (context, index) {
        return NewsTile();
      }),
    );
  }
}
