import 'package:flutter/material.dart';

import 'package:personal_finance/presentations/widgets/sidebar_icon_button.dart';

import 'package:personal_finance/presentations/pages/home_page.dart';

class NavigationController extends StatefulWidget {
  const NavigationController({super.key});

  @override
  State<NavigationController> createState() => _NavigationControllerState();
}

class _NavigationControllerState extends State<NavigationController> {
  late PageController _pageController;
  int pageIndex = 0;
  final double? sideHeight = 35;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: constraints.maxWidth,
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: sideHeight,
                    child: Center(child: Text("Top bar")),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: sideHeight,
                          height: double.infinity,
                          child: Column(
                            children: [
                              SidebarIconButton(
                                onPressed: () {
                                },
                                icon: Icons.settings,
                                selected: pageIndex == 1,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(child: Text("Im the pageivew")),
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      )
    );
  }
}
