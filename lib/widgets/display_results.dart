import 'package:calculatrice/providers/theme_provider.dart';
import 'package:calculatrice/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DisplayNumber extends StatefulWidget {
  const DisplayNumber({Key? key}) : super(key: key);

  @override
  _DisplayNumberState createState() => _DisplayNumberState();
}

class _DisplayNumberState extends State<DisplayNumber> {
  final List<dynamic> buttons = [
    'AC',
    'plus_minus',
    '%',
    'diviser',
    '7',
    '8',
    '9',
    'X',
    '4',
    '5',
    '6',
    '-',
    'undo',
    '0',
    '.',
    '=',
  ];
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return MyButton(
                        color: (themeProvider.isDarkMode)
                            ? const Color(0xFF282b33)
                            : const Color(0xFFf7f7f7),
                        text: buttons[index],
                        textColor: chooseColor(
                            themeProvider.isDarkMode, buttons[index]),
                        isIcon: isIcon(buttons[index]));
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

bool isIcon(String x) {
  if (x == 'plus_minus' || x == 'diviser' || x == 'undo') {
    return true;
  } else {
    return false;
  }
}

Color chooseColor(bool x, String y) {
  if (y == 'plus_minus' || y == 'AC' || y == '%') {
    return const Color(0xFF9ae3d6);
  } else if (y == 'diviser' ||
      y == 'X' ||
      y == '-' ||
      y == '-' ||
      y == '+' ||
      y == '=') {
    return const Color(0xFFcc6e6f);
  } else if (x) {
    return const Color(0xFFf4f8fa);
  } else {
    return const Color(0xFF35383e);
  }
}
