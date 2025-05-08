import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_c/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const PackageB(title: 'Flutter Demo Home Page'),
    );
  }
}

class PackageB extends StatefulWidget {
  const PackageB({super.key, required this.title});

  final String title;

  @override
  State<PackageB> createState() => _PackageBState();
}

class _PackageBState extends State<PackageB> {
  void goTo() {
    Get.to(() => PackageC(title: 'Yo Package C'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This is package B'),
            TextButton(onPressed: goTo, child: Text('Go To C')),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: goTo,
      //   tooltip: 'Go',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
