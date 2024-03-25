import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final name;
  final profileImageUrl;
  final lastSeen;
  const ChatPage(
      {super.key,
      required this.name,
      required this.profileImageUrl, 
      required this.lastSeen});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<String> _messages = [];

  TextEditingController textEditingController = TextEditingController();

  void _sendMessage(String message) {
    if (message.isNotEmpty) {
      setState(() {
        _messages.add(message);
      });
      textEditingController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: 25,
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(widget.profileImageUrl),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Last seen: ${widget.lastSeen}',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                  color: Colors.blue, AssetImage('assets/phone-call.png'))),
          IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                  color: Colors.blue, AssetImage('assets/video.png'))),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    _sendMessage(textEditingController.text);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
