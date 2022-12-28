import 'package:first_app/models/category.dart';
import 'package:first_app/models/category_collection.dart';
import 'package:flutter/material.dart';

class ListViewItems extends StatefulWidget {
  final CategoryCollection categoryCollection;

  const ListViewItems({required this.categoryCollection});

  @override
  State<ListViewItems> createState() => _ListViewItemsState();
}

class _ListViewItemsState extends State<ListViewItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ReorderableListView(
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final Category item =
                widget.categoryCollection.removeItem(oldIndex);
            widget.categoryCollection.insertItem(newIndex, item);
          });
        },
        children: widget.categoryCollection.categories
            .map(
              (cat) => ListTile(
                key: UniqueKey(),
                style: ListTileStyle.drawer,
                leading: Checkbox(
                  value: cat.isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      cat.toggleIsChecked();
                    });
                  },
                ),
                // leading: Container(
                //     padding: EdgeInsets.all(3),
                //     decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //       color: Colors.blueAccent,
                //     ),
                //     child: Icon(Icons.check)),
                trailing: Icon(Icons.reorder),
                tileColor: Colors.grey[900],
                title: Row(
                  children: [
                    cat.icon,
                    SizedBox(
                      width: 10,
                    ),
                    Text(cat.name),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
