import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitch = false;
  double sliderValue = 0.05;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () => {setState(() {})},
            ),
            Text(controller.text),
            Checkbox(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile(
              tristate: true,
              title: Text("Click me!"),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch(
              value: isSwitch,
              onChanged:
                  (value) => {
                    setState(() {
                      isSwitch = value;
                    }),
                  },
            ),
            SwitchListTile(
              title: Text("Click me!"),
              value: isSwitch,
              onChanged:
                  (value) => {
                    setState(() {
                      isSwitch = value;
                    }),
                  },
            ),
            Slider(
              value: sliderValue,
              onChanged:
                  (value) => {
                    setState(() {
                      sliderValue = value;
                    }),
                  },
            ),
            InkWell(
              onTap: () => {print('Image selected!')},
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.white38,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
