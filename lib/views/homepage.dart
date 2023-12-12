import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listing_detail_showcase_app/controller/homePageController.dart';
import 'package:listing_detail_showcase_app/views/posts.dart';
import 'package:listing_detail_showcase_app/views/todos.dart';
import 'package:listing_detail_showcase_app/views/users.dart';
import '../controller/postController.dart';
import '../controller/todosController.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<PostController>(() => PostController());
    Get.lazyPut<TodosController>(() => TodosController());
    return GetBuilder<HomePageController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [Posts(), Users(), Todos()],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.tabIndex,
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
