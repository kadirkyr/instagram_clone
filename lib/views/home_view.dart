import 'package:flutter/material.dart';
import 'package:instagram_clone/product/constant.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(MyImages.instagramPNG, height: 35),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.near_me_outlined))
        ],
        elevation: 0,
      ),
    );
  }
}
