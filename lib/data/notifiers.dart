//valueNotifier: hold the data
//valueListenBuilder : Listen to the data(do not need the setState)
import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> isDarkModifier = ValueNotifier(true);
