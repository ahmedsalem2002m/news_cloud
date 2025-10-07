import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_cloud/features/home_view/data/models/news_model.dart';
import 'package:news_cloud/features/home_view/views/widgets/show_image.dart';

class ShowNewView extends StatelessWidget {
 final ArticleModel articleModel;
  const ShowNewView({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ShowImage(image:articleModel.urlToImage),
                SizedBox(height: 16.h,),
                Text(
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  articleModel.title,
                ),
                Text(
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  articleModel.description,
                ),
              ],
            ),
          )
      ),
    );
  }
}
