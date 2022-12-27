class Category {
  String id;
  String name;
  bool? isChecked = true;

  Category({required this.id, this.isChecked, required this.name});
}

Category category = Category(id: '1', name: 'ABC');
