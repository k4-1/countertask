import 'dart:async';
import 'dart:developer';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(appChallenge());
}

class appChallenge extends StatelessWidget {
  const appChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Socket IO App Challenge',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: HomeChallenge(),
    );
  }
}

void socketConnection() {
  IO.Socket socket = IO.io("ws://localhost:3000/countr",
      IO.OptionBuilder().setTransports(['websocket']).build());
  socket.onConnect((_) {
    print('connect');
  });
  socket.on('count', (count) => print('Received count:${count}'));
}

class HomeChallenge extends StatefulWidget {
  HomeChallenge({Key? key}) : super(key: key);

  @override
  State<HomeChallenge> createState() => _HomeChallengeState();
}

class _HomeChallengeState extends State<HomeChallenge> {
  int counter = 0;

  bool _primeNumber(counter) {
    for (var i = 2; i <= counter / i; ++i) {
      if (counter % i == 0) {
        return false;
      }
    }
    return true;
  }

  Color _counterChangeColor() {
    if (counter % 2 == 0)
      return Colors.green;
    else if (counter % 3 == 0)
      return Colors.yellow;
    else if (_primeNumber(counter))
      return Colors.red;
    else
      return Colors.white;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    IO.Socket socket = IO.io("ws://localhost:3000/countr",
        IO.OptionBuilder().setTransports(['websocket']).build());
    socket.onConnect((_) {
      print('connect');
    });
    socket.on('count', (count) {
      print('Received count:${count}');
      setState(() {
        counter = count;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: _counterChangeColor(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Count Received:',
              ),
              Text(
                "$counter",
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
