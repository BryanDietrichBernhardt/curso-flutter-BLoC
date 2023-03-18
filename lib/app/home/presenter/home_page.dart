import 'package:bloc_app/app/home/presenter/home_page_bloc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageBloc bloc = HomePageBloc();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: bloc.valorStream,
      builder: (context, snapshot) => Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              bloc.valorSink.add(snapshot.data! + 1);
            },
            child: Text(
              snapshot.data.toString(),
              textDirection: TextDirection.ltr,
              style: const TextStyle(fontSize: 50),
            ),
          ),
        ),
      ),
    );
  }
}
