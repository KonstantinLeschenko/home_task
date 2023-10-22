import 'package:flutter/material.dart';
import 'package:home_task/data/art_work.dart';
import 'package:home_task/screens/about_art_work.dart';
import '../widgets/my_drawer_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String title;
  late List<ArtWork> myArts;

  @override
  void initState() {
    super.initState();
    setState(() {
      title = 'Art Works';
      myArts = Artworks().arts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        drawer: Drawer(
            child: Column(
          children: [
            const DrawerHeader(child: Text('Choose a category')),
            Wrap(
              children: [
                MyDrawerTile(
                  avatarText: 'B',
                  description: 'baroque',
                  function: () {
                    setState(() {
                      title = 'Baroque';
                      setCategory(title);
                    });
                    Navigator.pop(context);
                  },
                ),
                MyDrawerTile(
                  avatarText: 'C',
                  description: 'cubism',
                  function: () {
                    setState(() {
                      title = 'Cubism';
                      setCategory(title);
                    });
                    Navigator.pop(context);
                  },
                ),
                MyDrawerTile(
                  avatarText: 'L',
                  description: 'landscape',
                  function: () {
                    setState(() {
                      title = 'Landscape';
                      setCategory(title);
                    });
                    Navigator.pop(context);
                  },
                ),
                MyDrawerTile(
                  avatarText: 'R',
                  description: 'renaissance',
                  function: () {
                    setState(() {
                      title = 'Renaissance';
                      setCategory(title);
                    });
                    Navigator.pop(context);
                  },
                ),
                MyDrawerTile(
                  avatarText: 'S',
                  description: 'surrealism',
                  function: () {
                    setState(() {
                      title = 'Surrealism';
                      setCategory(title);
                    });
                    Navigator.pop(context);
                  },
                ),
                MyDrawerTile(
                    avatarText: 'I',
                    description: 'about this app',
                    function: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: const Text('Art Galley'),
                              content:
                                  const Text('This is homework for lesson 9'),
                              backgroundColor: Colors.grey[300],
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ))),
              ],
            )
          ],
        )),
        body: MediaQuery.sizeOf(context).width > 400
            ? myGridView()
            : myListView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: Text('You are currently in directory $title'),
              action: SnackBarAction(label: 'OK', onPressed: () {}),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Icon(Icons.info_outline),
        ));
  }

  CustomScrollView myGridView() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.sizeOf(context).width <= 600 ? 2 : 3,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AboutArtWork(myArtWork: myArts[index])));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    myArts[index].assetPath,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
            childCount: myArts.length,
          ),
        ),
      ],
    );
  }

  CustomScrollView myListView() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AboutArtWork(myArtWork: myArts[index])));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  //
                  myArts[index].assetPath,
                  fit: BoxFit.scaleDown,
                  width: 250,
                  height: 250,
                ),
              ),
            );
          },
          childCount: myArts.length,
        ))
      ],
    );
  }

  void setCategory(String title) {
    myArts = Artworks()
        .arts
        .where((element) => element.category.contains(title))
        .toList();
  }
}
