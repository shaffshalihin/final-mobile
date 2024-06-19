import 'package:flutter/material.dart';
import 'package:flutter_application_1/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(
//               Icons.android,
//               size: 100,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => MainScreen()),
//                 );
//               },
//               child: Text('Get Started'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MainScreen extends StatelessWidget {
//   final List<String> images = [
//     'https://4.bp.blogspot.com/-Sqy93AeAt8o/Us9TDeTZc5I/AAAAAAAAE1g/VPUFAZHNkR4/s1600/Gambar+Ikan+Clownfish-fishshare.blogspot-ikan+hias+(99).jpg',
//     'https://4.bp.blogspot.com/-t_Zwx276KNI/U1Z9LG0f_ZI/AAAAAAAAGus/XwpyJwdmt-w/s1600/gambar+ikan+mas.jpg',
//     'https://2.bp.blogspot.com/-34tXVBF_RRw/VpqJEKuLQ7I/AAAAAAAADcc/T_8lB5IeZsA/s1600/Yellow%2BTang.jpg',
//     'https://images.pexels.com/photos/1699246/pexels-photo-1699246.jpeg?cs=srgb&dl=pexels-1699246.jpg&fm=jpg',
//     'https://tse4.mm.bing.net/th?id=OIP.xMpkZMmrdy58U2axmY8LtAAAAA&pid=Api&P=0&h=180',
//     'https://4.bp.blogspot.com/-jvX2qC7CxVI/V22QRcOxxwI/AAAAAAAABSQ/MU1Jzawri-kNxJmhgQbhOHPu_03CQEBEgCLcB/s1600/Gambar-ikan-2.jpg',
//     'https://s0.bukalapak.com/uploads/content_attachment/a00e2fe630e8d7624b0135c5/original/Ikan_Cupang.jpg',
//     'http://3.bp.blogspot.com/-W0Kg3_KDyQE/U64UXHP8XfI/AAAAAAAAA70/qpUm10injQ0/s1600/ikan+cupang+hias+1.jpg',
//     'https://3.bp.blogspot.com/-AoiaQmB_Eyo/V22ROEJ7F6I/AAAAAAAABTY/5LonXyHvLXQztR26GlUQ9L50h26ugNE7wCLcB/s1600/Gambar-ikan-13.jpg',
//     'https://2.bp.blogspot.com/-bgXWxSoeCUs/Umitl4fes0I/AAAAAAAACZ8/A9JnAbFPn-A/s1600/Clownfish-fishshare.blogspot-ikan+hias+(9).jpg',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.all(8.0),
//               decoration: BoxDecoration(
//                 color: Colors.blue.shade100,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 5,
//                     blurRadius: 7,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Hi, Al Qadri H071221052',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   CircleAvatar(
//                     backgroundColor: Colors.grey,
//                     child: Icon(Icons.person),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Ikan favorit',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Expanded(
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: images.length,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     width: 200,
//                     margin: EdgeInsets.only(right: 10),
//                     decoration: BoxDecoration(
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.circular(10),
//                       image: DecorationImage(
//                         image: NetworkImage(images[index]),
//                         fit: BoxFit.cover,
//                         onError: (error, stackTrace) {
//                           print('Error loading image: $error');
//                         },
//                       ),
//                     ),
//                     child: Center(
//                       child: Image.network(
//                         images[index],
//                         fit: BoxFit.cover,
//                         loadingBuilder: (BuildContext context, Widget child,
//                             ImageChunkEvent? loadingProgress) {
//                           if (loadingProgress == null) return child;
//                           return Center(
//                             child: CircularProgressIndicator(
//                               value: loadingProgress.expectedTotalBytes != null
//                                   ? loadingProgress.cumulativeBytesLoaded /
//                                       loadingProgress.expectedTotalBytes!
//                                   : null,
//                             ),
//                           );
//                         },
//                         errorBuilder: (BuildContext context, Object error,
//                             StackTrace? stackTrace) {
//                           return Center(child: Text('Failed to load image'));
//                         },
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
