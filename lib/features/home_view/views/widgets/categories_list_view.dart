import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_cloud/core/utils/app_assets.dart';
import 'package:news_cloud/features/home_view/data/models/category_model.dart';
import 'package:news_cloud/features/home_view/views/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categoryList = const [
    CategoryModel(imageAssetURl: AppAssets.mainImage, categoryName: "sport"),
    CategoryModel(imageAssetURl: AppAssets.mainImage, categoryName: "Technology"),
    CategoryModel(imageAssetURl: AppAssets.mainImage, categoryName: "Health"),
    CategoryModel(
      imageAssetURl: AppAssets.mainImage,
      categoryName: "Education",
    ),
    CategoryModel(imageAssetURl: AppAssets.mainImage, categoryName: "Business"),
    CategoryModel(imageAssetURl: AppAssets.mainImage, categoryName: "Entertainment"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: categoryList[index]);
        },
      ),
    );
  }
}
