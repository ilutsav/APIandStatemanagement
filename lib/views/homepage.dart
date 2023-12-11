import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:listing_detail_showcase_app/controller/postController.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});
  final PostController postController = Get.put(PostController());

  // List<Post>? posts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Posts')),
        body: Obx(
          () => ListView.builder(
            itemCount: postController.postList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(postController.postList[index].title),
                subtitle: Text(postController.postList[index].body),
              );
            },
          ),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            Container(child: Center(child: Text('todos'))),
            Container(child: Center(child: Text('posts'))),
            Container(child: Center(child: Text('users'))),
          ],
        ));
  }
}
