import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: Center(
        child: Text(
          "Posts",
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}

     //body: screens[index],
        //  Obx(
        //   () => ListView.builder(
        //     itemCount: postController.postList.length,
        //     itemBuilder: (context, index) {
        //       return ListTile(
        //         title: Text(postController.postList[index].title),
        //         subtitle: Text(postController.postList[index].body),
        //       );
        //     },
        //   ),
        // ),
