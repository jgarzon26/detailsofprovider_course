import 'package:detailsofprovider_course/constants.dart';
import 'package:detailsofprovider_course/screens/home/classes/base_object.dart';
import 'package:detailsofprovider_course/screens/home/providers/object_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Expensive extends StatelessWidget {
  const Expensive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final expensiveObject = context.select<ObjectProvider, ExpensiveObject>(
      (provider) => provider.expensiveObject,
    );
    return Container(
      height: defaultHeight,
      color: Colors.blue,
      child: Column(
        children: [
          const Text('Expensive Widget'),
          const Text('Last Updated'),
          Text(expensiveObject.lastUpdated),
        ],
      ),
    );
  }
}
