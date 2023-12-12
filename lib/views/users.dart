import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listing_detail_showcase_app/controller/usersController.dart';

class Users extends StatelessWidget {
  const Users({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Users",
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
