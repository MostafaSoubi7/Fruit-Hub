import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_style.dart';
import 'package:fruit_hub/core/widgets/notification_widget.dart';

AppBar buildAppBar(context, {required String title}) {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(
        Icons.arrow_back_ios_new,
      ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: NotificationWidget(),
      )
    ],
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyles.bold19,
    ),
  );
}
