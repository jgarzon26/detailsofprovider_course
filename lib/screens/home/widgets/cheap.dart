import 'package:detailsofprovider_course/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../classes/base_object.dart';
import '../providers/object_provider.dart';

class Cheap extends StatelessWidget {
  const Cheap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cheapObject = context.select<ObjectProvider, CheapObject>(
      (provider) => provider.cheapObject,
    );
    return Container(
      height: defaultHeight,
      color: Colors.yellow,
      child: Column(
        children: [
          const Text('Cheap Widget'),
          const Text('Last Updated'),
          Text(cheapObject.lastUpdated),
        ],
      ),
    );
  }
}
