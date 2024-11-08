import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widgets/image_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: TabBarView(children: [
          MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            padding: const EdgeInsets.all(12),
            itemBuilder: (context, index){
              return ImageTile(
                index : index,
                imageSource: 'https://picsum.photos/500/500?random=$index',
                extent: (index % 2) == 0 ? 300:150,
              );
            },
          )
        ]),
      )
    );
  }
}
