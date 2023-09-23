import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: Text(
            "kadirkyr",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        leadingWidth: 120,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add_box_outlined)), const Icon(Icons.menu)],
      ),
      body: const Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(radius: 40),
            TitleWithSubtitle(index: 12, subtitle: "post"),
            TitleWithSubtitle(
              index: 200,
              subtitle: "followers",
            ),
            TitleWithSubtitle(
              index: 187,
              subtitle: "following",
            )
          ],
        )
      ]),
    );
  }
}

class TitleWithSubtitle extends StatelessWidget {
  const TitleWithSubtitle({super.key, required this.index, required this.subtitle});
  final int index;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(index.toString(), style: Theme.of(context).textTheme.titleLarge),
        Text(subtitle, style: Theme.of(context).textTheme.labelLarge)
      ],
    );
  }
}
