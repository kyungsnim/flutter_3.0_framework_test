import 'package:flutter/material.dart';
import 'package:framework_test/example/staggered_grid_view/staggered_view.dart';

import 'mansonry_view.dart';

class StaggeredGridViewExample extends StatefulWidget {
  @override
  State<StaggeredGridViewExample> createState() => _StaggeredGridViewExampleState();
}

class _StaggeredGridViewExampleState extends State<StaggeredGridViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const StaggeredView())
              );
            }, child: const Text('Staggered')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MansonryView())
              );
            }, child: const Text('Mansonry')),
          ],
        )
      ),
    );
  }
}
