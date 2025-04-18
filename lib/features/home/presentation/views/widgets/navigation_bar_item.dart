import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/active_item.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/inActive_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem(
      {super.key,
      required this.isSelected,
      required this.bottomNavigationBarEntity});
  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            text: bottomNavigationBarEntity.name,
            image: bottomNavigationBarEntity.activeImage,
          )
        : InActiveItem(
            image: bottomNavigationBarEntity.inActiveImage,
          );
  }
}
