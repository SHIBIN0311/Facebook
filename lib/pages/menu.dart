import 'package:facebook/custom/menu_card.dart';
import 'package:facebook/custom/menu_items.dart';
import 'package:facebook/pages/home_page.dart';
import 'package:facebook/pages/market_place.dart';
import 'package:facebook/pages/notification.dart';
import 'package:facebook/pages/video.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight + 100),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TabBar(
                indicatorColor: Colors.blue,
                labelColor: Colors.blue,
                tabs: [
                  Tab(
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                            (route) => false);
                      },
                      child: const ImageIcon(
                        AssetImage('assets/Home.png'),
                        size: 35,
                      ),
                    ),
                  ),
                  Tab(
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => const VideoPlayerScreen(
                                videoUrl: 'assets/videoflutter.mp4',
                              ),
                            ),
                            (route) => false);
                      },
                      child: const ImageIcon(
                        AssetImage('assets/playbutton.png'),
                        size: 35,
                      ),
                    ),
                  ),
                  Tab(
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => const MarketPlace(),
                            ),
                            (route) => false);
                      },
                      child: const ImageIcon(
                        AssetImage('assets/marketplace.png'),
                        size: 35,
                      ),
                    ),
                  ),
                  Tab(
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => NotificationPage(),
                            ),
                            (route) => false);
                      },
                      child: const ImageIcon(
                        AssetImage('assets/notification.png'),
                        size: 35,
                      ),
                    ),
                  ),
                  const Tab(
                    icon: Icon(
                      Icons.menu,
                      size: 35,
                    ),
                  ),
                ],
              ),
              AppBar(
                title: const Text(
                  "Menu",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon:
                        const ImageIcon(AssetImage('assets/setting-gear.png')),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const ImageIcon(AssetImage('assets/searchicon.png')),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                elevation: 6.0,
                child: ExpansionTile(
                  title: Text('actorvijay'),
                  leading: CircleAvatar(
                    radius: 25,
                    foregroundImage: NetworkImage(
                        'https://images.news9live.com/wp-content/uploads/2023/04/cropped-vijay-8.jpg'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: LayoutBuilder(
                  builder: (context, constraints) => GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: constraints.maxWidth > 600 ? 4 : 2,
                      mainAxisExtent: 70,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 0.75,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) => MenuCard(
                      items: items[index],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'See more',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )),
            ),
            const SizedBox(height: 15.0),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.help),
                    ),
                    const Text('Help & Support'),
                  ],
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings),
                    ),
                    const Text('Settings & Privacy'),
                  ],
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.info),
                    ),
                    const Text('Also from Meta'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
