import 'package:demoapp/data/notifiers.dart';
import 'package:demoapp/views/pages/home_page.dart';
import 'package:demoapp/views/pages/profile_page.dart';
import 'package:demoapp/widgets/appBar_widget.dart';
import 'package:demoapp/widgets/navbar.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
