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
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Column(
                        spacing: 5,
                        children: [
                          SidebarIconButton(
                            onPressed: () {
                              _pageController.jumpToPage(0);
                              setState(() {
                                pageIndex = 0;
                              });
                            },
                            icon: Icons.home,
                            selected: pageIndex == 0,
                          ),
                          SidebarIconButton(
                            onPressed: () {
                              _pageController.jumpToPage(1);
                              setState(() {
                                pageIndex = 1;
                              });
                            },
                            icon: Icons.settings,
                            selected: pageIndex == 1,
                          ),
                        ],
                      ),
                    )
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: [
                      HomePage(),
                      HomePage(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      )
    );
  }
}
