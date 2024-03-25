import 'package:facebook/pages/home_page.dart';
import 'package:facebook/pages/market_place.dart';
import 'package:facebook/pages/menu.dart';
import 'package:facebook/pages/notification.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;

  const VideoPlayerScreen({super.key, required this.videoUrl});

  

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl);
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true); 
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                  const Tab(
                    icon: ImageIcon(
                      AssetImage('assets/playbutton.png'),
                      size: 35,
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
              AppBar(
                title: const Text('Video Player',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
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
        body: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (_controller.value.isPlaying) {
                _controller.pause();
              } else {
                _controller.play();
              }
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }
}
