import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class ApiDemo extends StatefulWidget {
  @override
  _ApiDemoState createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  final Dio _dio = Dio();
  List<dynamic> _data = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    const String url = "http://10.0.2.2:5253/api/Values/GetAll";

    try {
      // Make the GET request
      Response response = await _dio.get(url);

      // Update the UI with the fetched data
      if (response.statusCode == 200) {
        setState(() {
          _data = response.data;
        });
      } else {
        print("Error: ${response.statusMessage}");
      }
    } on DioException catch (e) {
      print("Dio error: $e");
    } catch (e) {
      print("Unexpected error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dio API Demo"),
      ),
      body: _data.isEmpty
          ? Center(child: Text('No Data'))
          : ListView.builder(
              itemCount: _data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_data[index].toString()),
                );
              },
            ),
    );
  }
}

void main() => runApp(MaterialApp(home: ApiDemo()));
