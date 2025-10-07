import 'package:flutter/material.dart';
import 'package:news_cloud/features/home_view/views/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(category: category,)
          ],
        ),
      )
    );
  }
}
