import 'package:flutter/material.dart';
import 'package:instagram_clone/product/constant.dart';

class Akis extends StatefulWidget {
  const Akis({super.key});

  @override
  State<Akis> createState() => _AkisState();
}

class _AkisState extends State<Akis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(MyImages.instagramPNG, height: 35),
        actions: appBarActionsList,
        scrolledUnderElevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 30,
                        child: Image.asset(MyImages.instagramPNG, color: Colors.white),
                      ),
                      Text(index == 0 ? "Your Story" : "Name")
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 10);
              },
            ),
          ),
          Expanded(
            flex: 15,
            child: ListView.builder(
              itemBuilder: (context, index) => const PostView(),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> get appBarActionsList {
    return [
      IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border_outlined)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.near_me_outlined))
    ];
  }
}

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
            tileColor: Colors.white,
            dense: true,
            leading: CircleAvatar(),
            title: Text("Name"),
            subtitle: Text("Location"),
            trailing: Icon(Icons.more_horiz_rounded)),
        Container(
          constraints: const BoxConstraints(maxHeight: Sizes.maxHeightPost, minHeight: Sizes.minHeightPost),
          color: Colors.red,
        ),
      ],
    );
  }
}
