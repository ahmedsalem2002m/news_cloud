import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_cloud/features/category_view/views/category_view.dart';
import 'package:news_cloud/features/home_view/data/models/category_model.dart';


class CategoryCard extends StatelessWidget {
  final CategoryModel categoryModel;

   const CategoryCard({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder:(buildContext)=>CategoryView(category: categoryModel.categoryName,)));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Container(
          width: 120.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(categoryModel.imageAssetURl),
            ),
          ),
          child: Center(child: Text(categoryModel.categoryName,style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500

          ),),),
        ),
      ),
    );
  }
}
