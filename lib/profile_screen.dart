import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final VoidCallback onToggleTheme;

  const ProfileScreen({Key? key, required this.onToggleTheme})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> storyHighlights = [
      'https://t3.ftcdn.net/jpg/06/87/15/36/360_F_687153629_sJdJGVtFJP1QCNtjWN6PbstP7MJxZFYH.jpg',
      'https://media.istockphoto.com/id/1465218654/photo/old-tram-on-the-istiklal-street-in-istanbul.jpg?s=612x612&w=0&k=20&c=q9jP_cNDm-5FJ82LLS9yza6ul3fMUavCbh53_dJLSvI=',
      'https://media.istockphoto.com/id/661841134/photo/st-thomas-usvi.jpg?s=612x612&w=0&k=20&c=wIMFDbmM16iVaEt6-JevZVYuTJqjW6jz8Brs5_s7j5U=',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCINazbfDAVYf03sanMMyPMs-k5ArSBje48A&s',
      'https://images.unsplash.com/photo-1502085671122-2d218cd434e6?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aXNsYW5kfGVufDB8fDB8fHww',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUymJ_alAWJrdwrjZsqXUJMPJWJdgL8s65MA&s',
    ];

    final List<String> gridImages = [
      'https://t4.ftcdn.net/jpg/05/25/54/83/360_F_525548359_RPUoxQOG03WLIehmVQu84WjGnQzZXcPb.jpg',
      'https://images.pexels.com/photos/2310835/pexels-photo-2310835.jpeg?cs=srgb&dl=pexels-jiawei-cui-1213899-2310835.jpg&fm=jpg',
      'https://upload.wikimedia.org/wikipedia/commons/7/78/The_Thirteen_Islands_of_St_Brandon_-_Images_of_%C3%8Ele_Raphael%2C_Cargados_Carajos_in_Mauritius_19.jpg',
      'https://images.theconversation.com/files/126737/original/image-20160615-14048-1pzfvsx.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=1000&fit=clip',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ0HXSVehOyzRnCnKCDrKuRw3JEiA1Zc_aOw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYPlehalcdGDtua8Kk-asQdLKHRBpipJdF_w&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx9l8lCY2ITpLok9NO8nuzAnKU9AWTEA7ovg&s',
      'https://media.istockphoto.com/id/172730312/photo/virgin-islands-beach.jpg?s=612x612&w=0&k=20&c=xXUjewkh4AYTL073g2tXkwVZK-IhDOb7aJJWDj2YrlQ=',
      'https://media.istockphoto.com/id/649503128/photo/bangkok-chinatown-traffic-at-night.jpg?s=612x612&w=0&k=20&c=1KlaHmcIdV3xR3VvBgPcMZzX194CsC0AcGh1MD2CvcM=',
      'https://media.gettyimages.com/id/1567495056/photo/dusk-in-chinatown.jpg?s=612x612&w=gi&k=20&c=SWylA5D6DYwUqxFyez6SOuO1kmmIK_aL0Rg-PZkM5Lk=',
      'https://www.shutterstock.com/image-photo/grand-palace-known-wat-phra-600nw-2517261655.jpg',
      'https://media.istockphoto.com/id/481709562/photo/panoramic-view-of-urban-landscape-in-bangkok-thailand.jpg?s=612x612&w=0&k=20&c=yjsF-TDtS2pSexuoZD2PrR0-XC_hYpNPwFTH7JAEJkY=',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsrz3zxJrcjKfon19nlC_88QuAXg_JbpsoCw&s',
      'https://media.istockphoto.com/id/540404656/photo/sheikh-zayed-road-united-arab-emirates.jpg?s=612x612&w=0&k=20&c=1EIWB7HxUg1OsaXsSqLDQrBeliLpcy72kKRx2wY-pXU=',
      'https://images.unsplash.com/photo-1546412414-8035e1776c9a?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZHViYWklMjBzdHJlZXR8ZW58MHx8MHx8fDA%3D',
      'https://media.gettyimages.com/id/507923595/photo/dubai-uae-sheikh-zayed-road-in-morning-sunlight.jpg?s=612x612&w=gi&k=20&c=6c2KC84nJIW_dakv0n_hxsJHugV6kOgUCB2OPZY4GuM=',
      'https://media.istockphoto.com/id/1140334545/photo/dubai-skyline-and-highway-at-sunset-united-arab-emirates.jpg?s=612x612&w=0&k=20&c=B4EutWJmNdpTGkRBhcRi1SNyCb3SAtw8sgj5RB72j1c=',
      'https://media.istockphoto.com/id/648055014/photo/urban-road.jpg?s=612x612&w=0&k=20&c=5PzXWAv4fya4ezLu1HWp9jgDk7VyAM4xX058JqjBf4A=',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7IXhquciQT2d0N55MVKs3vCZAergdA1iq4g&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVK2eA6iKLiPWzYgzNhgW98W5lGGDyKZk68A&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH5OrgXyHFlXgLbjP-lCGVrS8G34oKTctyXw&s',
      'https://www.shutterstock.com/image-photo/al-madinah-kingdom-saudi-arabia-260nw-1449386120.jpg',
      'https://media.istockphoto.com/id/1842477719/photo/umbrella-canopies-open-at-nabawi-masjid-medina-with-blue-beautiful-sky-and-tower-masjid-on.jpg?s=612x612&w=0&k=20&c=ZAVonQo45WQ6QV2iQhN1cdCi-kIA35iqfRSV1k4p-Tg=',
      'https://media.istockphoto.com/id/1310024086/photo/al-masjid-an-nabawi-saudi-arabia-al-haram-medina-madinah.jpg?s=612x612&w=0&k=20&c=cEZMvXjP5juiBJBtBbxfIc5xEkUIVuSkFia0pAPnJvE=',
      'https://www.shutterstock.com/image-photo/almadinah-almunawwarah-saudi-arabia-mar-260nw-2372730587.jpg',
      'https://media.istockphoto.com/id/1415122120/photo/medina-al-medina-al-munawwarah-saudi-arabia.jpg?s=612x612&w=0&k=20&c=fXSWwwpzbReHzwY-jwAV63QgMHqXr2H0bLEHwJeDNuY=',
      'https://www.shutterstock.com/image-photo/prophets-mosque-medina-landscape-view-260nw-1424053718.jpg',
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'herhanhawryluk',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box_outlined, color: Colors.white),
            onPressed: onToggleTheme,
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGIdtbPSBIqWkF3aMqT6G0Y6D11QR_X6mUlg&s',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: const [
                      Text(
                        '7',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Posts', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Column(
                    children: const [
                      Text(
                        '6',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Followers', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Column(
                    children: const [
                      Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Following', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hernan Hawryliuk',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Coding, composing and cherishing family moments.\nLearning is my hobby. 💻🎹🎻',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF262626),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Edit profile',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF262626),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Share profile',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Story Highlights',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storyHighlights.length,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(storyHighlights[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: gridImages.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(gridImages[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
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
        currentIndex: 4,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 28),
            label: '',
          ),
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
            icon: Icon(Icons.account_circle, size: 28),
            label: '',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/search');
          }
        },
      ),
    );
  }
}
