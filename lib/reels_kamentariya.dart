import 'package:flutter/material.dart';
class ReelsKamentariya extends StatefulWidget {
  const ReelsKamentariya({Key? key}) : super(key: key);

  @override
  State<ReelsKamentariya> createState() => _ReelsKamentariyaState();
}

class _ReelsKamentariyaState extends State<ReelsKamentariya> {
  final TextEditingController _commentController = TextEditingController();
  List<String> comments = [];

  void _addComment() {
    if (_commentController.text.isNotEmpty) {
      setState(() {
        comments.add(_commentController.text);
        _commentController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Detail', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                ),
                const SizedBox(width: 10),
                const Text('demisjewels', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                const Spacer(),
                IconButton(icon: const Icon(Icons.more_vert, color: Colors.white), onPressed: () {}),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.grey[800],
            child: const Center(child: Icon(Icons.image, size: 80, color: Colors.white54)),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: const Color(0xFF1A1A1A),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text('Comments', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            child: comments.isEmpty
                ? const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('No comments yet', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text('Start the conversation.', style: TextStyle(color: Color(0xFF737373), fontSize: 14)),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: comments.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                        ),
                        title: const Text('You', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        subtitle: Text(comments[index], style: const TextStyle(color: Colors.white)),
                      );
                    },
                  ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            color: const Color(0xFF1A1A1A),
            child: Row(
              children: [
                const Text('❤️ 🙌 🔥 👏 😢 😍 😮 😂', style: TextStyle(fontSize: 24)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            color: Colors.black,
            child: Row(
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF262626),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      controller: _commentController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: 'Add a comment...',
                        hintStyle: TextStyle(color: Color(0xFF737373)),
                        border: InputBorder.none,
                      ),
                      onSubmitted: (_) => _addComment(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Color(0xFF0095F6)),
                  onPressed: _addComment,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
