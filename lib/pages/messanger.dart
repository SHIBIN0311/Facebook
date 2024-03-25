import 'package:facebook/pages/chat_page.dart';
import 'package:flutter/material.dart';

class Messanger extends StatefulWidget {
  const Messanger({super.key});

  @override
  State<Messanger> createState() => _MessangerState();
}

class _MessangerState extends State<Messanger> {
  List<String> activeUsers = [
    'srk',
    'vijay',
    'allu',
    'srya',
    'danush',
    'mohanlal',
    'mammootty',
    'ajith',
    'dq',
  ];

  List<String> userImages = [
    'https://4.bp.blogspot.com/-CCW346J8k7Y/VwgAIHGxSvI/AAAAAAAAE1o/KMFbHMkgqQkOrgJZGl8V29IYc2eNy2dAA/s1600/Shah-Rukh-Khan-HD-Wallpaper-Download.jpg',
    'https://th.bing.com/th/id/OIP.os0rOpkR4LShqGJKBNmXHQAAAA?rs=1&pid=ImgDetMain',
    'https://1.bp.blogspot.com/-E9BFcqb0XNg/XvNhVJH7YBI/AAAAAAABD4M/Id2OlZSIn-At29Tb7QZTqLjDIy_tE5g7gCK4BGAsYHg/s2048/allu-arjun-unseen-stills-from%2B-dj%2B%25281%2529.jpg',
    'https://th.bing.com/th/id/OIP.jnFj6yB3bi3C-EKuuv8_rwHaHX?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.2JUq1SUxNXI-iK1ncXQQFgAAAA?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.jEKmYi2ojP6lsp8AqmlLzwHaHj?w=1000&h=1020&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.S_b3v8Wf5LtjHiszY9HwhQHaIp?w=512&h=598&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.jq3-CT46TjlXQJuaeYYNbAHaHv?w=1080&h=1130&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.XDQV7wwEE4SJGZzJkjuEUwAAAA?w=204&h=204&rs=1&pid=ImgDetMain',
  ];
  List<int> lastSeen = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9, 

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Chats', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage('assets/setting-gear.png'))),
          IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage('assets/edit.png'))),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: activeUsers.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChatPage(
                        name: activeUsers[index],
                        profileImageUrl: userImages[index],
                        lastSeen: lastSeen[index],
                      ),
                    ));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(userImages[index]),
                      radius: 20,
                    ),
                    title: Text(activeUsers[index]),
                    subtitle: const Text('Active now'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
