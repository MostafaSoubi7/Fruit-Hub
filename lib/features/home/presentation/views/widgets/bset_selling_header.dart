import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_style.dart';
import 'package:fruit_hub/features/best_selling_fruits/presentation/views/best_selling_view.dart';

class BsetSellingHeader extends StatelessWidget {
  const BsetSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(BestSellingView.routeName),
      child: Row(
        children: [
          const Text(
            'الأكثر مبيعًا',
            textAlign: TextAlign.right,
            style: TextStyles.bold16,
          ),
          const Spacer(),
          Text(
            'المزيد',
            textAlign: TextAlign.center,
            style: TextStyles.regular13.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
        ],
      ),
    );
  }
}
