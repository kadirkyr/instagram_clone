import 'package:flutter/material.dart';
import 'package:instagram_clone/views/akis.dart';
import 'package:instagram_clone/views/profile_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;
  void _handleTabSelection(int index) {
    setState(() {
      _selectedIndex = index; // Seçilen sekmenin indeksini güncelleyin
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: TabBar(
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Colors.black,
          dividerColor: Colors.transparent,
          labelColor: Colors.black,
          padding: const EdgeInsets.only(bottom: 25),
          onTap: _handleTabSelection,
          controller: _tabController,
          tabs: tabBarList,
        ),
      ),
      body: TabBarView(
        controller: _tabController, // TabBarView'ın kontrolcüsünü belirtin.
        children: TabList().tabViewList,
      ),
    );
  }

  List<Widget> get tabBarList {
    return [
      _TabIconWidget(icon: _selectedIndex == TabEnum.home.index ? Icons.home_rounded : Icons.home_outlined),
      _TabIconWidget(icon: _selectedIndex == TabEnum.search.index ? Icons.search_rounded : Icons.search_outlined),
      _TabIconWidget(icon: _selectedIndex == TabEnum.postAdd.index ? Icons.add_box_rounded : Icons.add_box_outlined),
      _TabIconWidget(icon: _selectedIndex == TabEnum.shop.index ? Icons.local_mall_rounded : Icons.local_mall_outlined),
      _TabIconWidget(icon: _selectedIndex == TabEnum.profile.index ? Icons.person_2_rounded : Icons.person_2_outlined),
    ];
  }
}

enum TabEnum { home, search, postAdd, shop, profile }

class TabList {
  List<Widget> tabViewList = [
    const Akis(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
    const ProfileView(),
  ];
}

class _TabIconWidget extends StatelessWidget {
  const _TabIconWidget({required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Tab(icon: Icon(icon, size: 30));
  }
}
