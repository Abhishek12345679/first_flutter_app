import 'package:first_app/common/widgets/category_icon.dart';
import 'package:first_app/models/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCollection {
  final List<Category> categories = [
    Category(
        reminderCount: 0,
        name: 'Today',
        icon: const CategoryIcon(
          bgColor: CupertinoColors.activeGreen,
          iconData: CupertinoIcons.calendar_today,
        )),
    Category(
      reminderCount: 0,
      name: 'Scheduled',
      icon: const CategoryIcon(
        bgColor: CupertinoColors.activeBlue,
        iconData: Icons.email,
      ),
    ),
    Category(
      reminderCount: 0,
      name: 'All',
      icon: const CategoryIcon(
        bgColor: CupertinoColors.activeOrange,
        iconData: CupertinoIcons.calendar,
      ),
    ),
    Category(
      reminderCount: 0,
      name: 'Flagged',
      icon: const CategoryIcon(
        bgColor: CupertinoColors.systemRed,
        iconData: CupertinoIcons.flag_fill,
      ),
    ),
  ];
}
