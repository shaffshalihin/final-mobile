import 'package:flutter/material.dart';


class MainScreen extends StatelessWidget {
  final List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTnFs3vQLWQvKeLauwRWCQAA3pQPrUXQeVMA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReKrCak1DbHXH-S1U0gv3SWs4ze0mgg8YWcw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5MeASzLcjO8d-jUR5JvIMA-iGSUMvVbnh6Q&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMxiFeq7APeWkbuUcCF2n5Z9L8SeZ_vWnU2g&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyHL0Tx1EKslHBllGg07aDIwnPC16veQ3Bmg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4H1pKhvK3Sao7lQoQgGuuFKcJjFo7dq6BgA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_v81QJrO86xN-MTmLdPPNy9JJHN_h1pbPjQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6A2-a2E2CFM9NxdLBlpHcizAeUvcCetW-Mg&s'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'shaff H071221093',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Ikan favorit',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(images[index]),
                        fit: BoxFit.cover,
                        onError: (error, stackTrace) {
                          print('Error loading image: $error');
                        },
                      ),
                    ),
                    child: Center(
                      child: Image.network(
                        images[index],
                        fit: BoxFit.cover,
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          );
                        },
                        errorBuilder: (BuildContext context, Object error,
                            StackTrace? stackTrace) {
                          return Center(child: Text('Failed to load image'));
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
