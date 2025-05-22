import 'package:demoapp/data/notifiers.dart';
import 'package:demoapp/views/pages/home_page.dart';
import 'package:demoapp/views/pages/profile_page.dart';
import 'package:demoapp/views/pages/settings_page.dart';
import 'package:demoapp/widgets/navbar.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Map"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              isDarkModifier.value = !isDarkModifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingPage(title: "Setting");
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
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
