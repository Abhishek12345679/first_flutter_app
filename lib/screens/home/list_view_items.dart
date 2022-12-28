import 'package:flutter/material.dart';

class ListViewItems extends StatefulWidget {
  @override
  State<ListViewItems> createState() => _ListViewItemsState();
}

class _ListViewItemsState extends State<ListViewItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'List',
      ),
    );
  }
}
