import 'dart:collection';

import 'package:first_app/common/widgets/category_icon.dart';
import 'package:first_app/models/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCollection {
  final List<Category> _categories = [
    Category(
      reminderCount: 0,
      name: 'Today',
      icon: const CategoryIcon(
        bgColor: CupertinoColors.activeBlue,
        iconData: CupertinoIcons.calendar_today,
      ),
    ),
    Category(
      reminderCount: 0,
      name: 'Scheduled',
      icon: const CategoryIcon(
        bgColor: CupertinoColors.systemRed,
        iconData: CupertinoIcons.calendar,
      ),
    ),
    Category(
      reminderCount: 0,
      name: 'All',
      icon: const CategoryIcon(
        bgColor: CupertinoColors.inactiveGray,
        iconData: CupertinoIcons.tornado,
      ),
    ),
    Category(
      reminderCount: 0,
      name: 'Completed',
      icon: const CategoryIcon(
        bgColor: CupertinoColors.systemRed,
        iconData: CupertinoIcons.check_mark_circled_solid,
      ),
    ),
  ];

  UnmodifiableListView<Category> get categories =>
      UnmodifiableListView(_categories);

  Category removeItem(int index) {
    return _categories.removeAt(index);
  }

  insertItem(int index, Category item) {
    _categories.insert(index, item);
  }

  List<Category> get selectedCategories {
    return _categories.where((element) => element.isChecked).toList();
  }
}
