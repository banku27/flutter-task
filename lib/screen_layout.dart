import 'package:flutter/material.dart';
import 'package:flutter_task/constants.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({Key? key}) : super(key: key);

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  PageController pageController = PageController();
  int currentPage = 0;

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  changePage(int page) {
    pageController.jumpToPage(page);
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: PageView(
          controller: pageController,
          children: screens,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey[400]!, width: 1),
            ),
          ),
          child: TabBar(
            indicator: const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.yellow, width: 4)),
            ),
            indicatorSize: TabBarIndicatorSize.label,
            onTap: changePage,
            tabs: [
              Tab(
                child: Image.asset(
                  AppIcons.home,
                  height: 22,
                  color: currentPage == 0 ? Colors.purple : Colors.black,
                ),
              ),
              Tab(
                child: Image.asset(
                  AppIcons.guidance,
                  height: 22,
                  color: currentPage == 1 ? Colors.purple : Colors.black,
                ),
              ),
              Tab(
                child: Image.asset(
                  AppIcons.chat,
                  height: 22,
                  color: currentPage == 2 ? Colors.purple : Colors.black,
                ),
              ),
              Tab(
                child: Image.asset(
                  AppIcons.profile,
                  height: 22,
                  color: currentPage == 3 ? Colors.purple : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
