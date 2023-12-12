import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listing_detail_showcase_app/controller/todosController.dart';

class Todos extends StatelessWidget {
  const Todos({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Todos",
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
