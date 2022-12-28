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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
              child: layoutType == 'grid'
                  ? GridViewItems(categoryCollection: categoryCollection)
                  : ListViewItems(categoryCollection: categoryCollection),
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
