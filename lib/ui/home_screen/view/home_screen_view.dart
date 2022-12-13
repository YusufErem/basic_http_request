import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/home_screen_controller.dart';

// MVC Design Pattern

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final controller =
        Provider.of<HomeScreenController>(context, listen: false);

    controller.getHomeResponseList();
  }

  @override
  Widget build(BuildContext context) {
    // HomeScreenController homeScreenController = HomeScreenController();
    final controller = Provider.of<HomeScreenController>(context, listen: true);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Home Screen'),
          centerTitle: true,
        ),
        body: controller.homeResponseList.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.separated(
                itemCount: controller.homeResponseList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      controller.homeResponseList[index].body ?? 'sads',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 10,
                    color: Colors.black,
                  );
                },
              ));
  }
}
