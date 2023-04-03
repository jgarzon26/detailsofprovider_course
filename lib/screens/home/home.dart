import 'package:detailsofprovider_course/screens/home/providers/object_provider.dart';
import 'package:detailsofprovider_course/screens/home/widgets/base.dart';
import 'package:detailsofprovider_course/screens/home/widgets/cheap.dart';
import 'package:detailsofprovider_course/screens/home/widgets/expensive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Cheap(),
              ),
              Expanded(
                child: Expensive(),
              ),
            ],
          ),
          Row(
            children: const [
              Expanded(child: Base()),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  context.read<ObjectProvider>().start();
                },
                child: const Text('Start'),
              ),
              TextButton(
                onPressed: () {
                  context.read<ObjectProvider>().stop();
                },
                child: const Text('Stop'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
