import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final bool showBackButton;

  const AppScaffold({
    required this.title,
    required this.body,
    this.showBackButton = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          leading: Visibility(
            visible: showBackButton,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
              ),
              onPressed: () {
                context.pop();
              },
            ),
          ),
        ),
        body: body,
      ),
    );
  }
}
