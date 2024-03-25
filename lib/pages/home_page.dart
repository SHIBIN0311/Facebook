import 'package:facebook/pages/market_place.dart';
import 'package:facebook/pages/menu.dart';
import 'package:facebook/pages/messanger.dart';
import 'package:facebook/pages/notification.dart';
import 'package:facebook/pages/video.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage('assets/addicon.png')),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage('assets/searchicon.png')),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Messanger(),
                ));
              },
              icon: const ImageIcon(AssetImage('assets/messanger.png')),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            tabs: [
              const Tab(
                icon: ImageIcon(
                  AssetImage('assets/Home.png'),
                  size: 35,
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
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      foregroundImage: AssetImage('assets/profile.png'),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const SizedBox(
                      width: 275,
                      height: 40,
                      child: SearchBar(
                        elevation: MaterialStatePropertyAll(1),
                        hintText: 'Write something here...',
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const ImageIcon(
                          color: Colors.green,
                          AssetImage('assets/imagecard.png'),
                          size: 35,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  color: Colors.grey,
                  height: 10,
                  width: double.infinity,
                ),
              ),
              SizedBox(
                  height: 250,
                  child: ListView.builder(
                    itemCount: storyImage.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    storyImage[index],
                                  ))),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.blue, width: 3),
                                  ),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.white,
                                    foregroundImage:
                                        NetworkImage(profileImage[index]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Container(
                  color: Colors.grey,
                  height: 10,
                  width: double.infinity,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                        leading: const CircleAvatar(
                          radius: 25,
                          foregroundImage: NetworkImage(
                              'https://images.news9live.com/wp-content/uploads/2023/04/cropped-vijay-8.jpg'),
                        ),
                        title: Row(
                          children: [
                            const Text(
                              'actorvijay',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Image.asset(
                              'assets/checklist.png',
                              height: 15,
                              width: 15,
                            )
                          ],
                        ),
                        subtitle: Row(
                          children: [
                            const Text('march 19'),
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/earth-globe.png',
                              width: 14,
                              height: 14,
                            ),
                          ],
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'follow',
                                  style: TextStyle(color: Colors.blue),
                                )),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_horiz),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.cancel),
                            ),
                          ],
                        )),
                    Container(
                      color: Colors.blue,
                      height: 300,
                      child: Image.network(
                          'https://th.bing.com/th/id/OIP.YwNGXcb3NMZ8mnDDuj3pzgAAAA?w=350&h=450&rs=1&pid=ImgDetMain'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<String> storyImage = [
    'https://th.bing.com/th/id/OIP.YwNGXcb3NMZ8mnDDuj3pzgAAAA?w=350&h=450&rs=1&pid=ImgDetMain'
    'https://4.bp.blogspot.com/-CCW346J8k7Y/VwgAIHGxSvI/AAAAAAAAE1o/KMFbHMkgqQkOrgJZGl8V29IYc2eNy2dAA/s1600/Shah-Rukh-Khan-HD-Wallpaper-Download.jpg',
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
  final List<String> profileImage = [
    'https://th.bing.com/th/id/OIP.yKBFSE-gboAjpF7x5UJ6yQHaEK?rs=1&pid=ImgDetMain'    
    'https://4.bp.blogspot.com/-CCW346J8k7Y/VwgAIHGxSvI/AAAAAAAAE1o/KMFbHMkgqQkOrgJZGl8V29IYc2eNy2dAA/s1600/Shah-Rukh-Khan-HD-Wallpaper-Download.jpg',
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
}
