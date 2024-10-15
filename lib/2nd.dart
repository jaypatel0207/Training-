// import 'package:flutter/material.dart';

// class SecondScreen extends StatefulWidget {
//   @override
//   _SecondScreenState createState() => _SecondScreenState();
// }

// class _SecondScreenState extends State<SecondScreen> {
//   int _currentNumber = 0;
//   @override
//   void initState() {
//     super.initState();
//     printNumbers();
//   }

//   void printNumbers() {
//     Future.delayed(Duration(seconds: 2), () {
//       setState(() {
//         _currentNumber = 1;
//       });
//       Future.delayed(Duration(seconds: 2), () {
//         setState(() {
//           _currentNumber = 2;
//         });
//         Future.delayed(Duration(seconds: 2), () {
//           setState(() {
//             _currentNumber = 3;
//           });
//         });
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Screen'),
//       ),
//       body: Center(
//         child: Text(
//           _currentNumber == 0 ? 'Waiting...' : 'Number: $_currentNumber',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {


  Stream<int> _numberStream() async* {
    await Future.delayed(Duration(seconds: 2));
    yield 1;
    await Future.delayed(Duration(seconds: 2));
    yield 2;
    await Future.delayed(Duration(seconds: 2));
    yield 3;
  }


          


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: _numberStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(
                'Number: ${snapshot.data}',
                style: TextStyle(fontSize: 24),
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}