import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final bool isDarkMode;

  const HomeScreen({Key? key, required this.isDarkMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> storyImages = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGIdtbPSBIqWkF3aMqT6G0Y6D11QR_X6mUlg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtTzQe09BSrraExEiNfv6tpNToLkCtRYuWNw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh73Kz3ErgjiCpkiY9oS-EW9b2y6DeT6NIFQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL1h4ROclA5JRtblLge308mW3N43VWwhj6rQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBsfRbzaEIEW_q8fSNBK_O_ElYKetLek5wDg&s',
      'https://www.shutterstock.com/image-photo/september-2018-uzbekistan-tashkent-road-260nw-1185391825.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU1j8v6Gm65c6wEFcTyh3FZOHKLBbJlK4ZIA&s',
      'https://m.media-amazon.com/images/M/MV5BMThlOWE3MWEtZjM4Ny00M2FiLTkyMmYtZGY3ZTcyMzM5YmNlXkEyXkFqcGdeQWpnYW1i._V1_QL75_UX500_CR0,0,500,281_.jpg',
    ];

    final List<String> postImages = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQefHYBAXCmZp9dU4tr89Fyw1ACYklEelHvCg&s',
      'https://manofmany.com/wp-content/uploads/2024/03/The-Real-Thomas-Shelby-of-Peaky-Blinders-Background-on-Thomas-Shelbys-Character.jpg',
      'https://media.istockphoto.com/id/157382018/photo/suburban-street.jpg?s=612x612&w=0&k=20&c=bwPnWy93wzcQZ1W0wD6zKZ7JrNRMgyccTB0OxULjyWs=',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQN8DM3PPFVA0XWQ3adh7gTBdzPsUntVDBeg&s',
      'https://www.shutterstock.com/image-photo/charleston-south-carolina-usa-cityscape-600nw-2405705781.jpg',
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          '𝓘𝓷𝓼𝓽𝓪𝓰𝓻𝓪𝓶',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border, size: 28),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.send, size: 28),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storyImages.length,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(
                              colors: [
                                Colors.purple,
                                Colors.orange,
                                Colors.pink,
                              ],
                            ),
                            border: Border.all(color: Colors.black, width: 3),
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(storyImages[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          index == 0 ? 'Your story' : 'User $index',
                          style: const TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: postImages.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                  storyImages[index % storyImages.length],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Text(
                              'gabrielcali',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Follow',
                              style: TextStyle(
                                color: Color(0xFF0095F6),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(postImages[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.favorite_border,
                              size: 28,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.comment_outlined,
                              size: 28,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/reels');
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.send,
                              size: 28,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(
                              Icons.bookmark_border,
                              size: 28,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 28), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, size: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined, size: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, size: 28),
            label: '',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/search');
          } else if (index == 4) {
            Navigator.pushNamed(context, '/profile');
          }
        },
      ),
    );
  }
}
