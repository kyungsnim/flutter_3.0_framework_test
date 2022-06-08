import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:math' as Math;

import 'package:framework_test/example/staggered_grid_view/staggered_grid_view_example.dart';

import 'example/sticky_header/sticky_header_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => StaggeredGridViewExample())
                );
              },
              child: const Text('StaggeredGridView'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const StickyHeaderExample())
                );
              },
              child: const Text('StickyHeader'),
            ),
          ],
        ),
      ),
    );
  }
  /// as-is
  // getBody() {
  //   return Container(
  //     padding: EdgeInsets.only(left: ResolutionService().getSize(15), right: ResolutionService().getSize(15)),
  //     child: StaggeredGridView.countBuilder(
  //         itemCount: viewModel.productDisplayCount,
  //         crossAxisCount: 2,
  //         mainAxisSpacing: ResolutionService().getSize(10),
  //         crossAxisSpacing: ResolutionService().getSize(10),
  //         shrinkWrap: true,
  //         scrollDirection: Axis.vertical,
  //         padding: const EdgeInsets.all(0),
  //         physics: ClampingScrollPhysics(),
  //         staggeredTileBuilder: (index) {
  //           return StaggeredTile.fit(1);
  //         },
  //         itemBuilder: (context, index) {
  //           final photoRatio = (210 / 158);
  //           final size = MediaQuery.of(context).size;
  //           final double imageWidth = (size.width - (ResolutionService().getSize(10) + ResolutionService().getSize(15))) / 2;
  //           final double imageHeight = imageWidth * photoRatio;
  //
  //           return HomeCommonProductElementView(
  //             viewModel.productList[index],
  //             imageHeight,
  //           );
  //         }),
  //   );
  // }
}
