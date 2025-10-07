import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';

class ShowImage extends StatelessWidget {
  final String? image;
  const ShowImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: image != null &&
          image!.isNotEmpty
          ? Image.network(
        image!,
        fit: BoxFit.fill,
        errorBuilder: (context, error, stackTrace) {
          return Image.asset(
            AppAssets.mainImage,
            fit: BoxFit.fill,
          );
        },
      )
          : Image.asset(
        AppAssets.mainImage,
        fit: BoxFit.fill,
      ),
    );
  }
}
