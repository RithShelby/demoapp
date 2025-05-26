import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:demoapp/data/constants.dart';
import 'package:demoapp/data/notifiers.dart';
import 'package:demoapp/views/pages/settings_page.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Flutter App"),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () async {
            final SharedPreferences prefs =
                await SharedPreferences.getInstance();
            await prefs.setBool(KConstants.themeModeKey, isDarkModifier.value);
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
                builder: (context) => const SettingPage(title: "Setting"),
              ),
            );
          },
          icon: const Icon(Icons.settings),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
