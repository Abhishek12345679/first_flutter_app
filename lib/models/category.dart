import 'package:first_app/common/widgets/category_icon.dart';

class Category {
  int reminderCount;
  String name;
  bool? isChecked = true;
  final CategoryIcon icon;

  Category({
    required this.icon,
    required this.reminderCount,
    this.isChecked,
    required this.name,
  });
}
