import 'package:flutter/material.dart';
import 'package:jobsheet5/model/mahasiswa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: listMahasiswa.length,
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: index == 2 ? Colors.green[400] : Colors.white,
              title: Text(
                listMahasiswa[index].nama,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              subtitle: Text(
                'NIM : ${listMahasiswa[index].nim}',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.grey[700]),
              ),
            );
          },
        ),
      ),
    );
  }
}
