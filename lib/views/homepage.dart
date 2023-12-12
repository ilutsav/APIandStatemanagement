import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:listing_detail_showcase_app/controller/homePageController.dart';
import 'package:listing_detail_showcase_app/views/posts.dart';
import 'package:listing_detail_showcase_app/views/todos.dart';
import 'package:listing_detail_showcase_app/views/users.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(title: const Text('Posts')),
          body: SafeArea(
            child: IndexedStack(
              //  index: controller.tabIndex,
              children: const [
                Posts(),
                Todos(),
                Users(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            //  currentIndex: controller.tabIndex,
            onTap: controller.changeIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.post_add),
                label: 'posts',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'users',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.today),
                label: 'todos',
              ),
            ],
          ),
        );
      },
    );
  }
}
