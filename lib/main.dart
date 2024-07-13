import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Nama Nama Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: StudentListScreen(),
    );
  }
}

class Student {
  final int number;
  final String name;
  final String nim;
  final String major;
  final String className;
  final String dosenPengasuh;

  Student(this.number, this.name, this.nim, this.major, this.className,
      this.dosenPengasuh);
}

class StudentListScreen extends StatelessWidget {
  final List<Student> students = [
    Student(1, 'MOCHAMAD BAGUS PRADIKA', 'STI202203130', 'Teknik Informatika',
        'sore', 'Amin Sholeh, M.Kom'),
    Student(2, 'AFIF MUTAQIN', 'STI202102602', 'Teknik Informatika', 'sore',
        'Amin Sholeh, M.Kom'),
    Student(3, 'MOHAMAD FAIZ', 'STI202102601', 'Teknik Informatika', 'sore',
        'Amin Sholeh, M.Kom'),
    Student(4, 'BUANG APIPUDIN', 'STI202102597', 'Teknik Informatika', 'sore',
        'Amin Sholeh, M.Kom'),
    Student(5, 'MUHAMMAD ARDIANSYAH SAPUTRA', 'STI202102591',
        'Teknik Informatika', 'sore', 'Amin Sholeh, M.Kom'),
    Student(6, 'FIDELIS GULO', 'STI202102586', 'Teknik Informatika', 'sore',
        'Amin Sholeh, M.Kom'),
    Student(7, 'LOUIS ELUA ARKANANTA', 'STI202102584', 'Teknik Informatika',
        'sore', 'Amin Sholeh, M.Kom'),
    Student(8, 'YEREMIA LAURENT HUTAURUK', 'STI202102579', 'Teknik Informatika',
        'sore', 'Amin Sholeh, M.Kom'),
    Student(9, 'AKHYINA MUAZ', 'STI202102578', 'Teknik Informatika', 'sore',
        'Amin Sholeh, M.Kom'),
    Student(10, 'IMAM SAEFULLOH', 'STI202102577', 'Teknik Informatika', 'sore',
        'Amin Sholeh, M.Kom'),
    Student(11, 'ESTHER OKTAVIA HOTOROE', 'STI202102574', 'Teknik Informatika',
        'sore', 'Amin Sholeh, M.Kom'),
  ];

  final List<Color> colors = [
    Colors.red[100]!,
    Colors.green[100]!,
    Colors.blue[100]!,
    Colors.orange[100]!,
    Colors.purple[100]!,
    Colors.teal[100]!,
    Colors.amber[100]!,
    Colors.cyan[100]!,
    Colors.lime[100]!,
    Colors.pink[100]!,
    Colors.indigo[100]!,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Nama Nama Mahasiswa',
          style: TextStyle(
            fontFamily: 'Times New Roman',
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical, // Pengguliran vertikal
        itemCount: students.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            color:
                colors[index % colors.length], // Warna latar belakang berbeda
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'No: ${students[index].number}',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Nama: ${students[index].name}',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'NIM: ${students[index].nim}',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Jurusan: ${students[index].major}',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Kelas: ${students[index].className}',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'dosenPengasuh: ${students[index].dosenPengasuh}',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
