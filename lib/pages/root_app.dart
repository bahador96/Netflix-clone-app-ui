import 'package:flutter/material.dart';
import 'package:netflix_app/json/root_app_json.dart';
import 'package:netflix_app/pages/comming_soon.dart';
import 'package:netflix_app/pages/download_page.dart';
import 'package:netflix_app/pages/home_page.dart';
import 'package:netflix_app/pages/search_page.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getFooter() {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              4,
              (index) {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = index;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          items[index]['icon'],
                          color: activeTab == index
                              ? Colors.white
                              : Colors.white.withOpacity(0.5),
                          size: 30,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          items[index]['text'],
                          style: TextStyle(
                            color: activeTab == index
                                ? Colors.white
                                : Colors.white.withOpacity(0.5),
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: const [
        HomePage(),
        ComingSoonPage(),
        SearchPage(),
        DownloadPage(),
      ],
    );
  }
}
