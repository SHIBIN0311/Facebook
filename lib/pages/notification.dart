import 'package:facebook/pages/home_page.dart';
import 'package:facebook/pages/market_place.dart';
import 'package:facebook/pages/menu.dart';
import 'package:facebook/pages/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotificationPage extends StatelessWidget {
  final List<String> notifications = [
    'srk Smith liked your post.',
    'vijay commented on your photo.',
    'You have a new friend request.',
    'surya sent you a message.',
    'Event "Birthday Party" is tomorrow.',
    'You have a new friend request.',
    'surya sent you a message.',
    'Event "Birthday Party" is tomorrow.',
    'srk Smith liked your post.',
    'vijay commented on your photo.',
    'You have a new friend request.',
    'surya sent you a message.',
    'Event "Birthday Party" is tomorrow.',
    'surya sent you a message.',
    'Event "Birthday Party" is tomorrow.',
  ];
  final List<String> notiImage = [
    'https://4.bp.blogspot.com/-CCW346J8k7Y/VwgAIHGxSvI/AAAAAAAAE1o/KMFbHMkgqQkOrgJZGl8V29IYc2eNy2dAA/s1600/Shah-Rukh-Khan-HD-Wallpaper-Download.jpg',
    'https://th.bing.com/th/id/OIP.os0rOpkR4LShqGJKBNmXHQAAAA?rs=1&pid=ImgDetMain',
    'https://1.bp.blogspot.com/-E9BFcqb0XNg/XvNhVJH7YBI/AAAAAAABD4M/Id2OlZSIn-At29Tb7QZTqLjDIy_tE5g7gCK4BGAsYHg/s2048/allu-arjun-unseen-stills-from%2B-dj%2B%25281%2529.jpg',
    'https://th.bing.com/th/id/OIP.jnFj6yB3bi3C-EKuuv8_rwHaHX?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.2JUq1SUxNXI-iK1ncXQQFgAAAA?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.jq3-CT46TjlXQJuaeYYNbAHaHv?w=1080&h=1130&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.XDQV7wwEE4SJGZzJkjuEUwAAAA?w=204&h=204&rs=1&pid=ImgDetMain',
    'https://4.bp.blogspot.com/-CCW346J8k7Y/VwgAIHGxSvI/AAAAAAAAE1o/KMFbHMkgqQkOrgJZGl8V29IYc2eNy2dAA/s1600/Shah-Rukh-Khan-HD-Wallpaper-Download.jpg',
    'https://th.bing.com/th/id/OIP.os0rOpkR4LShqGJKBNmXHQAAAA?rs=1&pid=ImgDetMain',
    'https://1.bp.blogspot.com/-E9BFcqb0XNg/XvNhVJH7YBI/AAAAAAABD4M/Id2OlZSIn-At29Tb7QZTqLjDIy_tE5g7gCK4BGAsYHg/s2048/allu-arjun-unseen-stills-from%2B-dj%2B%25281%2529.jpg',
    'https://th.bing.com/th/id/OIP.jnFj6yB3bi3C-EKuuv8_rwHaHX?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.2JUq1SUxNXI-iK1ncXQQFgAAAA?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.jEKmYi2ojP6lsp8AqmlLzwHaHj?w=1000&h=1020&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.S_b3v8Wf5LtjHiszY9HwhQHaHv?w=512&h=598&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.jq3-CT46TjlXQJuaeYYNbAHaHv?w=1080&h=1130&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.XDQV7wwEE4SJGZzJkjuEUwAAAA?w=204&h=204&rs=1&pid=ImgDetMain',
    'https://4.bp.blogspot.com/-CCW346J8k7Y/VwgAIHGxSvI/AAAAAAAAE1o/KMFbHMkgqQkOrgJZGl8V29IYc2eNy2dAA/s1600/Shah-Rukh-Khan-HD-Wallpaper-Download.jpg',
    'https://th.bing.com/th/id/OIP.os0rOpkR4LShqGJKBNmXHQAAAA?rs=1&pid=ImgDetMain',
    'https://1.bp.blogspot.com/-E9BFcqb0XNg/XvNhVJH7YBI/AAAAAAABD4M/Id2OlZSIn-At29Tb7QZTqLjDIy_tE5g7gCK4BGAsYHg/s2048/allu-arjun-unseen-stills-from%2B-dj%2B%25281%2529.jpg',
    'https://th.bing.com/th/id/OIP.jnFj6yB3bi3C-EKuuv8_rwHaHX?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.2JUq1SUxNXI-iK1ncXQQFgAAAA?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.jEKmYi2ojP6lsp8AqmlLzwHaHj?w=1000&h=1020&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.S_b3v8Wf5LtjHiszY9HwhQHaHv?w=512&h=598&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.jq3-CT46TjlXQJuaeYYNbAHaHv?w=1080&h=1130&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.XDQV7wwEE4SJGZzJkjuEUwAAAA?w=204&h=204&rs=1&pid=ImgDetMain',
    'https://4.bp.blogspot.com/-CCW346J8k7Y/VwgAIHGxSvI/AAAAAAAAE1o/KMFbHMkgqQkOrgJZGl8V29IYc2eNy2dAA/s1600/Shah-Rukh-Khan-HD-Wallpaper-Download.jpg',
    'https://th.bing.com/th/id/OIP.os0rOpkR4LShqGJKBNmXHQAAAA?rs=1&pid=ImgDetMain',
    'https://1.bp.blogspot.com/-E9BFcqb0XNg/XvNhVJH7YBI/AAAAAAABD4M/Id2OlZSIn-At29Tb7QZTqLjDIy_tE5g7gCK4BGAsYHg/s2048/allu-arjun-unseen-stills-from%2B-dj%2B%25281%2529.jpg',
    'https://th.bing.com/th/id/OIP.jnFj6yB3bi3C-EKuuv8_rwHaHX?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.jq3-CT46TjlXQJuaeYYNbAHaHv?w=1080&h=1130&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.XDQV7wwEE4SJGZzJkjuEUwAAAA?w=204&h=204&rs=1&pid=ImgDetMain',
  ];

  NotificationPage({super.key});

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
                  const Tab(
                    icon: ImageIcon(
                      AssetImage('assets/notification.png'),
                      size: 35,
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
                    'Notifications',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon:
                          const ImageIcon(AssetImage('assets/searchicon.png')),
                    ),
                  ]),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    notiImage[index],
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(notifications[index]),
              onTap: () {
                Text('Notification tapped: ${notifications[index]}');
              },
            );
          },
        ),
      ),
    );
  }
}
