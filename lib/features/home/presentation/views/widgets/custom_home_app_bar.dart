import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../core/utils/app_text_style.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        padding: const EdgeInsets.all(12),
        decoration: const ShapeDecoration(
          color: Color(0xFFEEF8ED),
          shape: OvalBorder(),
        ),
        child: SvgPicture.asset(Assets.assetsImagesNotification),
      ),
      leading: Image.asset(Assets.assetsImagesProfileImage),
      title: Text(
        'صباح الخير !..',
        textAlign: TextAlign.right,
        style: TextStyles.regular16.copyWith(
          color: const Color(0xFF949D9E),
        ),
      ),
      subtitle: const Text(
        'أحمد مصطفي',
        textAlign: TextAlign.right,
        style: TextStyles.bold16,
      ),
    );
  }
}
