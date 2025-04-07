import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless
//material app
// scafford

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Map'),
          centerTitle: true,
          leading: Icon(Icons.login),
          actions: [Text("End Data"), Icon(Icons.login)],
          backgroundColor: Colors.teal,
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Flutter Default App',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.indigo,
//         centerTitle: true,
//         leading: Icon(Icons.notification_add, color: Colors.white),
//       ),
//       body: Wrap(
//         children: [
//           Text(
//             "Hello worlddfssfdfkjdfjsdklfjksdlfjldkasfjklsdjfklsdjafklasdjfkljsdklfjksdljksdfjksdljfsdlj",
//           ),
//           Text("Hello world"),
//           Text("Hello world"),
//           Text("Hello world"),
//         ],
//       ),

//       // body: Container(
//       //   // padding: EdgeInsets.all(20),
//       //   child: Stack(
//       //     children: [
//       //       // Image.asset(
//       //       //   'assets/image/mountain-6086083_1280.jpg',
//       //       //   fit: BoxFit.cover,
//       //       //   height: 300,
//       //       // ),
//       //       SizedBox(
//       //         height: 300,
//       //         child: Center(
//       //           child: Text(
//       //             'Flutter',
//       //             style: TextStyle(
//       //               fontSize: 50,
//       //               fontWeight: FontWeight.bold,
//       //               color: Colors.white,
//       //             ),
//       //           ),
//       //         ),
//       //       ),
//       //       ListTile(
//       //         leading: Icon(Icons.join_full),
//       //         tileColor: Colors.blue,
//       //         trailing: Text("Tile Text"),
//       //         onTap: () {
//       //           print("Hello world");
//       //         },
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       // body: Center(
//       //   child: Container(
//       //     color: Colors.grey[300],
//       //     // padding: EdgeInsets.all(20),
//       //     // height: double.infinity,
//       //     child: Row(
//       //       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //       // crossAxisAlignment: CrossAxisAlignment.start,
//       //       mainAxisSize: MainAxisSize.min,
//       //       children: [
//       //         Container(
//       //           height: 100,
//       //           width: 150,
//       //           // margin: EdgeInsets.all(30),
//       //           padding: EdgeInsets.all(50),
//       //           decoration: BoxDecoration(
//       //             borderRadius: BorderRadius.circular(25),
//       //             color: Colors.brown[400],
//       //           ),
//       //         ),
//       //         Container(
//       //           height: 100,
//       //           width: 150,
//       //           // margin: EdgeInsets.all(30),
//       //           padding: EdgeInsets.all(50),
//       //           decoration: BoxDecoration(
//       //             borderRadius: BorderRadius.circular(25),
//       //             color: Colors.brown[400],
//       //           ),
//       //         ),
//       //       ],
//       //     ),
//       //   ),
//       //   // child: Column(
//       //   //   mainAxisAlignment: MainAxisAlignment.center,
//       //   //   children: [
//       //   //     Container(
//       //   //       height: 100,
//       //   //       width: 150,
//       //   //       // margin: EdgeInsets.all(30),
//       //   //       padding: EdgeInsets.all(50),
//       //   //       decoration: BoxDecoration(
//       //   //         borderRadius: BorderRadius.circular(25),
//       //   //         color: Colors.brown[400],
//       //   //       ),
//       //   //     ),
//       //   //     Container(
//       //   //       height: 100,
//       //   //       width: 150,
//       //   //       // margin: EdgeInsets.all(30),
//       //   //       padding: EdgeInsets.all(50),
//       //   //       decoration: BoxDecoration(
//       //   //         borderRadius: BorderRadius.circular(25),
//       //   //         color: Colors.brown[400],
//       //   //       ),
//       //   //     ),
//       //   //   ],
//       //   // ),
//       //   // child: Container(
//       //   //   height: double.infinity,
//       //   //   width: double.infinity,
//       //   //   padding: EdgeInsets.all(30),
//       //   //   margin: EdgeInsets.all(20),
//       //   //   decoration: BoxDecoration(
//       //   //     borderRadius: BorderRadius.circular(25.0),
//       //   //     color: Colors.brown[200],
//       //   //   ),
//       //   //   child: Text(
//       //   //     'Hello world',
//       //   //     style: TextStyle(
//       //   //       color: Colors.black54,
//       //   //       fontSize: 30,
//       //   //       fontWeight: FontWeight.bold,
//       //   //     ),
//       //   //   ),
//       //   // ),
//       // ),
//     );
//   }
// }
