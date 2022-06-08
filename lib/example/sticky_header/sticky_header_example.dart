import 'package:flutter/material.dart';
import 'package:framework_test/example/sticky_header/sticky_header_view.dart';

class StickyHeaderExample extends StatefulWidget {
  const StickyHeaderExample({Key? key}) : super(key: key);

  @override
  State<StickyHeaderExample> createState() => _StickyHeaderExampleState();
}

class _StickyHeaderExampleState extends State<StickyHeaderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const StickyHeaderView())
                );
              }, child: const Text('StickyHeader')),
              // ElevatedButton(onPressed: () {
              //   Navigator.of(context).push(
              //       MaterialPageRoute(builder: (context) => const MansonryView())
              //   );
              // }, child: const Text('Mansonry')),
            ],
          )
      ),
    );
  }
}
