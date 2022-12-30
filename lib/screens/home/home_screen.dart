import 'package:first_app/models/category_collection.dart';
import 'package:first_app/screens/home/footer.dart';
import 'package:first_app/screens/home/grid_view_items.dart';
import 'package:first_app/screens/home/list_view_items.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  String layoutType = "grid";
  CategoryCollection categoryCollection = CategoryCollection();

  List<String> todos = [
    "Ea aliqua do anim veniam ullamco aliqua aute.",
    "Id fugiat officia qui nostrud dolore ipsum consequat sit eiusmod deserunt fugiat mollit nulla."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Home'),
        actions: [
          TextButton(
            onPressed: () {
              if (layoutType == 'grid') {
                setState(() {
                  layoutType = 'list';
                });
              } else if (layoutType == 'list') {
                setState(() {
                  layoutType = 'grid';
                });
              }
            },
            child: Text(
              layoutType == 'grid' ? 'Edit' : 'Done',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: layoutType == 'grid'
                  ? GridViewItems(categoryCollection: categoryCollection)
                  : ListViewItems(categoryCollection: categoryCollection),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 2,
              child: ListView(
                children: todos
                    .map(
                      (todo) => Column(
                        children: [
                          ListTile(
                            key: UniqueKey(),
                            style: ListTileStyle.drawer,
                            tileColor: Colors.grey[900],
                            title: Text(todo),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
