import 'package:calculatrice/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ModeSwitch extends StatefulWidget {
  const ModeSwitch({Key? key}) : super(key: key);

  @override
  _ModeSwitchState createState() => _ModeSwitchState();
}

class _ModeSwitchState extends State<ModeSwitch> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    bool isSelected = themeProvider.isDarkMode;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.40,
          height: MediaQuery.of(context).size.height * 0.09,
          decoration: BoxDecoration(
              color: (themeProvider.isDarkMode)
                  ? const Color(0xFF363e3c)
                  : const Color(0xFFdfdede),
              borderRadius: const BorderRadius.all(Radius.circular(25))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  themeProvider.toogleTheme(isOn: true);
                },
                child: SizedBox(
                  height: 40,
                  child: Image.asset(
                    'assets/bright.png',
                    color: isSelected ? Colors.grey : const Color(0xFF0F1828),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  themeProvider.toogleTheme(isOn: false);
                },
                child: SizedBox(
                  height: 35,
                  child: Image.asset(
                    'assets/sleep-mode.png',
                    color: isSelected ? Colors.white : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
