import 'package:demoapp/data/constants.dart';
import 'package:demoapp/widgets/container_widget.dart';
import 'package:demoapp/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                HeroWidget(title: 'Peaky Blinder'),
                ...kValues.map(
                  (item) => ContainerWidget(
                    title: item.title,
                    description: item.description,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
