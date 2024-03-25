import 'package:facebook/custom/item_card.dart';
import 'package:facebook/custom/product.dart';
import 'package:facebook/pages/home_page.dart';
import 'package:facebook/pages/menu.dart';
import 'package:facebook/pages/notification.dart';
import 'package:facebook/pages/video.dart';
import 'package:flutter/material.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({super.key});

  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight + 100),
          child: Column(
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
                  const Tab(
                    icon: ImageIcon(
                      AssetImage('assets/marketplace.png'),
                      size: 35,
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
                  Tab(
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => const MenuPage(),
                            ),
                            (route) => false);
                      },
                      child: const Icon(
                        Icons.menu,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
              AppBar(
                title: const Text(
                  "Marketplace",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const ImageIcon(AssetImage('assets/user.png')),
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
        body: LayoutBuilder(
          builder: (context, constraints) => GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: constraints.maxWidth > 600 ? 4 : 2,
              mainAxisExtent: 275,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 0.75,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) => ItemCard(product: products[index]),
          ),
        ),
      ),
    );
  }
}
