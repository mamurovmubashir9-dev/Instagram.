import 'package:flutter/material.dart';
class SearchScreen extends StatefulWidget {
  final bool isDarkMode;
  
  const SearchScreen({Key? key, required this.isDarkMode}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  
  List<Map<String, String>> allUsers = [
    {
      'username': 'danielavillalba',
      'name': 'Daniela Villalba',
      'image': 'https://media.istockphoto.com/id/480373634/photo/the-historic-cable-car-on-san-francisco-city.jpg?s=612x612&w=0&k=20&c=AVk3RzBc8fAA5xUvbPC4tYvsnNoM0H25DvR78XfYeQg='
    },
    {
      'username': 'demisjewels',
      'name': 'Demis Jewelry and Watchmaking',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj7i9QANEADP6Wq9hpQJiQ_2xjV3JAD1SRPg&s'
    },
    {
      'username': 'gabrielcali',
      'name': 'Gabriel Cali',
      'image': 'https://images.gamebanana.com/img/ss/mods/50aa07464b940.jpg'
    },
    {
      'username': 'gabyhawryluk',
      'name': 'Gabriela Hawryluk • Following',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdDMNbi6GlLVEs1gUV6seN4tyfElymuhn_NQ&s'
    },
    {
      'username': 'gladyshawryluk',
      'name': 'Gladys Hawryluk',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeFjyE9h6PTZVB0ma4UdqWyhZu9LSbEMidRg&s'
    },
    {
      'username': 'intelinnovation',
      'name': 'Intel Innovation',
      'image': 'https://media.istockphoto.com/id/902966276/photo/kyoto-japan-in-spring.jpg?s=612x612&w=0&k=20&c=BKgo2TEXikd7oaZdFJ2o9VrKmG5NhNswI5YBXvhOwWA='
    },
    {
      'username': 'javianabeautyspa',
      'name': 'Javiana Beauty Spa',
      'image': 'https://img.freepik.com/free-photo/people-walking-japan-street-nighttime_23-2148942945.jpg?semt=ais_hybrid&w=740&q=80'
    },
    {
      'username': 'melinavillalba',
      'name': 'Melina Villalba',
      'image': 'https://media.istockphoto.com/id/1161555395/photo/osaka-tower-and-view-of-the-neon-advertisements-in-shinsekai-district-at-dusk-osaka-japan.jpg?s=612x612&w=0&k=20&c=2z2ViOxKPfKzq_rDtCE_aW7KxbROK7MUJ-ti-Oqf4KQ='
    },
    {
      'username': 'nvidia',
      'name': 'Nvidia GeForce RTX',
      'image': 'https://media.istockphoto.com/id/505797368/photo/shibuya-shopping-district-tokyo-japan.jpg?s=612x612&w=0&k=20&c=pTHiEWd4MQqU3e7lWbxA-Eb73VG4D5Uz7AvbeNYHKLg='
    },
    {
      'username': 'pablohawryluk',
      'name': 'Oscar Pablo Hawryluk',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJBpbg5fjG1r8ckJiaHsgXSzRA073AKKjnNw&s'
    },
  ];
  List<Map<String, String>> filteredUsers = [];

  @override
  void initState() {
    super.initState();
    filteredUsers = allUsers;
  }

  void _filterUsers(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredUsers = allUsers;
      } else {
        filteredUsers = allUsers
            .where((user) =>
                user['username']!.toLowerCase().contains(query.toLowerCase()) ||
                user['name']!.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = widget.isDarkMode ? Colors.black : Colors.white;
    final textColor = widget.isDarkMode ? Colors.white : Colors.black;
    final subtextColor = widget.isDarkMode ? const Color(0xFF737373) : Colors.grey;
    
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: textColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: widget.isDarkMode ? const Color(0xFF262626) : Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: _searchController,
            onChanged: _filterUsers,
            style: TextStyle(color: textColor),
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: subtextColor),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search, color: subtextColor),
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filteredUsers.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(filteredUsers[index]['image']!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(filteredUsers[index]['username']!, style: TextStyle(color: textColor, fontWeight: FontWeight.bold)),
            subtitle: Text(filteredUsers[index]['name']!, style: TextStyle(color: subtextColor, fontSize: 12)),
            trailing: IconButton(
              icon: Icon(Icons.close, color: subtextColor),
              onPressed: () {},
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: bgColor,
        selectedItemColor: textColor,
        unselectedItemColor: textColor,
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined, size: 28), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 28), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined, size: 28), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined, size: 28), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined, size: 28), label: ''),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          } else if (index == 4) {
            Navigator.pushNamed(context, '/profile');
          }
        },
      ),
    );
  }
}
