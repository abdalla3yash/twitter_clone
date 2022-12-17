import 'package:twitter/utility/consts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: TwitterColor.white,
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        title: Image.asset("assets/images/icon-480.png", width: 35),
        backgroundColor: TwitterColor.white,
        leading: IconButton(
            onPressed: () {
              _key.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.supervised_user_circle_outlined,
              color: TwitterColor.woodsmoke,
            )),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.supervised_user_circle_outlined),
                ),
                10.heightBox,
                "name".text.make(),
                5.heightBox,
                "@username"
                    .text
                    .fontFamily(font3)
                    .color(TwitterColor.woodsmoke_50)
                    .make(),
                20.heightBox,
                Row(
                  children: [
                    "500".text.make(),
                    5.widthBox,
                    "Following".text.color(TwitterColor.woodsmoke_50).make(),
                    15.widthBox,
                    "200".text.make(),
                    5.widthBox,
                    "Followers".text.color(TwitterColor.woodsmoke_50).make(),
                  ],
                )
              ],
            )).box.margin(const EdgeInsets.only(left: 10)).make(),
            10.heightBox,
            ListTile(
              leading: Icon(
                Icons.person_outline,
                size: 32,
              ),
              title: const Text(
                'Profile',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.topic_rounded,
                size: 32,
              ),
              title: const Text(
                'Topics',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.bookmark_border_outlined,
                size: 32,
              ),
              title: const Text(
                'Bookmarks',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.list_alt_rounded,
                size: 32,
              ),
              title: const Text(
                'Lists',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person_add_alt_outlined,
                size: 32,
              ),
              title: const Text(
                'Twitter Circle',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'Settings & Support',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(child: Column(
        children: [
          
        ],
      )),
    );
  }
}
