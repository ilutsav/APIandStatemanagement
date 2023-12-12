import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/postController.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});
  @override
  Widget build(BuildContext context) {
    PostController postController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
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
    );
  }
}
