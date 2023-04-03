import 'package:detailsofprovider_course/screens/home/home.dart';
import 'package:detailsofprovider_course/screens/home/providers/object_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ObjectProvider(),
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}