import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/fruit_item.dart';

class BestSellingGrid extends StatelessWidget {
  const BestSellingGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 163 / 214,
          mainAxisSpacing: 8,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return const FruitItem();
        });
  }
}
