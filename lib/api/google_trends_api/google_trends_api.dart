import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TrendsScreen extends StatefulWidget {
  @override
  _TrendsScreenState createState() => _TrendsScreenState();
}

class _TrendsScreenState extends State<TrendsScreen> {
  final TrendsService _trendsService = TrendsService();
  Future<List<String>>? _trendingTopics;
  final ApifyClient client = ApifyClient('apify_api_pyYlPFCAJA5sRKqr9mG2rZNlNpsmqc3B0Zny');

  @override
  void initState() {
    super.initState();
    // _trendingTopics = _trendsService.fetchTrends();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Trends'),
      ),
      body:
      Center(
        child: ElevatedButton(
          onPressed: () async {
            await client.callActor();
          },
          child: Text('Start Actor'),
        ),
      ),
    // FutureBuilder<List<String>>(
    //   future: _trendingTopics,
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return Center(child: CircularProgressIndicator());
    //     } else if (snapshot.hasError) {
    //       return Center(child: Text('Error: ${snapshot.error}'));
    //     } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
    //       return Center(child: Text('No trending topics found'));
    //     } else {
    //       final trends = snapshot.data!;
    //       return ListView.builder(
    //         itemCount: trends.length,
    //         itemBuilder: (context, index) {
    //           return ListTile(
    //             title: Text(trends[index]),
    //           );
    //         },
    //       );
    //     }
    //   },
    // ),
      // IconButton(
      //     onPressed: () => print(fetchGoogleTrendsHTML()),
      //     icon: Icon(Icons.abc_rounded),
      // ),
      // FutureBuilder<List<String>>(
      //   future: _trendingTopics,
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return Center(child: CircularProgressIndicator());
      //     } else if (snapshot.hasError) {
      //       return Center(child: Text('Error: ${snapshot.error}'));
      //     } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
      //       return Center(child: Text('No trending topics found'));
      //     } else {
      //       final trends = snapshot.data!;
      //       return ListView.builder(
      //         itemCount: trends.length,
      //         itemBuilder: (context, index) {
      //           return ListTile(
      //             title: Text(trends[index]),
      //           );
      //         },
      //       );
      //     }
      //   },
    );
  }
}

class TrendsService {

  final String _baseUrl = 'http://192.168.56.1:3000';
  Future<List<String>> fetchTrends() async {
    try {
      final response = await http.get(Uri.parse('$_baseUrl/trends'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<dynamic> trends = data['default']['trendingSearchesDays'][0]['trendingSearches'];

        // Ensure we only take the top 50 trends or less if there are fewer trends available
        final List<String> topTrends = trends
            .take(2) // Take the first 50 elements
            .map((trend) => trend['title']['query'] as String)
            .toList();
        return topTrends;
      } else {
        print('Request failed with status: ${response.statusCode}');
        throw Exception('Failed to load trends');
      }
    } catch (e) {
      print('Error fetching trends: $e');
      throw Exception('Failed to connect to server');
    }
  }

  // Future<List<String>> fetchTrends() async {
  //   final response = await http.get(Uri.parse('$_baseUrl/trends'));
  //   if (response.statusCode == 200) {
  //     final data = json.decode(response.body);
  //     final List<dynamic> trends = data['default']['trendingSearchesDays'][0]['trendingSearches'];
  //     return trends.map((trend) => trend['title']['query'] as String).toList();
  //   } else {
  //     throw Exception('Failed to load trends');
  //   }
  // }

}

// class ApifyClient {
//   final String token;
//
//   ApifyClient(this.token);
//
//   Future<void> callActor() async {
//     final url = Uri.parse('https://api.apify.com/v2/acts/apify~hello-world/runs');
//
//     final headers = {
//       'Content-Type': 'application/json',
//       'Authorization': 'Bearer $token',
//     };
//
//     final body = jsonEncode({
//       "searchTerms": ["world cup"],
//       "isMultiple": false,
//       "timeRange": "",
//       "geo": "EG",
//       "skipDebugScreen": false,
//       "isPublic": false,
//       "category": "",
//       "maxItems": 0,
//       "maxConcurrency": 10,
//       "maxRequestRetries": 7,
//       "pageLoadTimeoutSecs": 180,
//     });
//
//     final response = await http.post(url, headers: headers, body: body);
//
//     if (response.statusCode == 201) {
//       final run = jsonDecode(response.body);
//       print('Actor run started: ${run['data']['id']}');
//       await fetchResults(run['data']['id']);
//     } else {
//       final errorResponse = jsonDecode(response.body);
//       print('Failed to start actor: ${errorResponse['error']['message']}');
//     }
//   }
//
//   Future<void> fetchResults(String runId) async {
//     final url = Uri.parse('https://api.apify.com/v2/datasets/$runId/items');
//
//     final response = await http.get(url, headers: {
//       'Authorization': 'Bearer $token',
//     });
//
//     if (response.statusCode == 200) {
//       final items = jsonDecode(response.body);
//       items.forEach((item) {
//         print(item);
//       });
//     } else {
//       final errorResponse = jsonDecode(response.body);
//       print('Failed to fetch results: ${errorResponse['error']['message']}');
//     }
//   }
// }


//2
// class ApifyClient {
//   final String token;
//
//   ApifyClient(this.token);
//
//   Future<void> callActor() async {
//     final url = Uri.parse('https://api.apify.com/v2/acts/apify~hello-world/runs');
//
//     final headers = {
//       'Content-Type': 'application/json',
//       'Authorization': 'Bearer $token',
//     };
//
//     final body = jsonEncode({
//       "message": "Hello from Flutter!"
//     });
//
//     final response = await http.post(url, headers: headers, body: body);
//
//     if (response.statusCode == 201) {
//       final run = jsonDecode(response.body);
//       final runId = run['data']['id'];
//       print('Actor run started: $runId');
//
//       final defaultDatasetId = run['data']['defaultDatasetId'];
//       if (defaultDatasetId != null && defaultDatasetId.isNotEmpty) {
//         await fetchResults(defaultDatasetId);
//       } else {
//         print('No default dataset ID found, waiting for dataset to be created.');
//         await waitForDatasetCreation(runId);
//       }
//     } else {
//       final errorResponse = jsonDecode(response.body);
//       print('Failed to start actor: ${errorResponse['error']['message']}');
//     }
//   }
//
//   Future<void> fetchResults(String datasetId) async {
//     final url = Uri.parse('https://api.apify.com/v2/datasets/$datasetId/items?format=json');
//
//     final response = await http.get(url, headers: {
//       'Authorization': 'Bearer $token',
//     });
//
//     if (response.statusCode == 200) {
//       final items = jsonDecode(response.body);
//       items.forEach((item) {
//         print(item);
//       });
//     } else {
//       final errorResponse = jsonDecode(response.body);
//       print('Failed to fetch results: ${errorResponse['error']['message']}');
//     }
//   }
//
//   Future<void> waitForDatasetCreation(String runId) async {
//     final url = Uri.parse('https://api.apify.com/v2/acts/apify~hello-world/runs/$runId');
//     bool datasetFound = false;
//
//     for (int i = 0; i < 10; i++) {
//       final response = await http.get(url, headers: {
//         'Authorization': 'Bearer $token',
//       });
//
//       if (response.statusCode == 200) {
//         final run = jsonDecode(response.body);
//         final defaultDatasetId = run['data']['defaultDatasetId'];
//         if (defaultDatasetId != null && defaultDatasetId.isNotEmpty) {
//           datasetFound = true;
//           await fetchResults(defaultDatasetId);
//           break;
//         }
//       }
//
//       await Future.delayed(Duration(seconds: 5));
//     }
//
//     if (!datasetFound) {
//       print('Failed to find dataset after waiting.');
//     }
//   }
// }

//3

/*
class ApifyClient {
  final String token;

  ApifyClient(this.token);

  Future<void> callActor() async {
    final url = Uri.parse('https://api.apify.com/v2/acts/apify~hello-world/runs');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    final body = jsonEncode({
      // "message": "Hello from Flutter!"
      "searchTerms": ["Egypt"],
      "isMultiple": false,
      "timeRange": "",
      "geo": "",
      "skipDebugScreen": false,
      "isPublic": false,
      "category": "",
      "maxItems": 10,
      "maxConcurrency": 10,
      "maxRequestRetries": 7,
      "pageLoadTimeoutSecs": 180,
    });

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 201) {
      final run = jsonDecode(response.body);
      final runId = run['data']['id'];
      print('Actor run started: $runId');

      final defaultDatasetId = run['data']['defaultDatasetId'];
      print(defaultDatasetId);
      if (defaultDatasetId != null && defaultDatasetId.isNotEmpty) {
        print("in condition");
        await fetchResults(defaultDatasetId);
        print("end condition");

      } else {
        print('No default dataset ID found, waiting for dataset to be created.');
        await waitForDatasetCreation(runId);
      }
    } else {
      final errorResponse = jsonDecode(response.body);
      print('Failed to start actor: ${errorResponse['error']['message']}');
    }
  }

  Future<void> fetchResults(String datasetId) async {
    final url = Uri.parse('https://api.apify.com/v2/datasets/$datasetId/items?format=json');
    print(url);
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer $token',
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      final List items = jsonDecode(response.body);
      print(jsonDecode(response.body).toString());
      // items.forEach((item) {
      //   print(item);
      // });
    } else {
      final errorResponse = jsonDecode(response.body);
      print('Failed to fetch results: ${errorResponse['error']['message']}');
    }
  }

  Future<void> waitForDatasetCreation(String runId) async {
    final url = Uri.parse('https://api.apify.com/v2/acts/apify~hello-world/runs/$runId');
    bool datasetFound = false;

    for (int i = 0; i < 20; i++) { // Increased the number of retries
      final response = await http.get(url, headers: {
        'Authorization': 'Bearer $token',
      });

      if (response.statusCode == 200) {
        final run = jsonDecode(response.body);
        final defaultDatasetId = run['data']['defaultDatasetId'];
        if (defaultDatasetId != null && defaultDatasetId.isNotEmpty) {
          datasetFound = true;
          await fetchResults(defaultDatasetId);
          break;
        }
      }

      await Future.delayed(Duration(seconds: 10)); // Increased delay between retries
      print('Attempt ${i + 1}: Checking for dataset...');
    }

    if (!datasetFound) {
      print('Failed to find dataset after waiting.');
    }
  }
}*/

class ApifyClient {
  final String token;

  ApifyClient(this.token);

  Future<void> callActor() async {
    final url = Uri.parse('https://api.apify.com/v2/acts/apify~hello-world/runs');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    final body = jsonEncode({
      "message": "world cup",
      "searchTerms": ["euro"],
      "isMultiple": false,
      "timeRange": "",
      "geo": "",
      "skipDebugScreen": false,
      "isPublic": false,
      "category": "",
      "maxItems": 0,
      "maxConcurrency": 10,
      "maxRequestRetries": 7,
      "pageLoadTimeoutSecs": 180,
    });

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 201) {
      final run = jsonDecode(response.body);
      final runId = run['data']['id'];
      print('Actor run started: $runId');

      final defaultDatasetId = run['data']['defaultDatasetId'];
      if (defaultDatasetId != null && defaultDatasetId.isNotEmpty) {
        print('Default dataset ID found: $defaultDatasetId');
        await fetchResults(defaultDatasetId);
      } else {
        print('No default dataset ID found, waiting for dataset to be created.');
        await waitForDatasetCreation(runId);
      }
    } else {
      final errorResponse = jsonDecode(response.body);
      print('Failed to start actor: ${errorResponse['error']['message']}');
    }
  }

  Future<void> fetchResults(String datasetId) async {
    final url = Uri.parse('https://api.apify.com/v2/datasets/$datasetId/items?format=json');

    final response = await http.get(url, headers: {
      'Authorization': 'Bearer $token',
    });

    print('Dataset fetch response: ${response.body}'); // Log the full response body

    if (response.statusCode == 200) {
      final items = jsonDecode(response.body);
      print('Fetched ${items.length} items from the dataset:');
      if (items.isEmpty) {
        print('Dataset is empty.');
      } else {
        items.forEach((item) {
          print(item);
        });
      }
    } else {
      final errorResponse = jsonDecode(response.body);
      print('Failed to fetch results: ${errorResponse['error']['message']}');
    }
  }

  Future<void> waitForDatasetCreation(String runId) async {
    final url = Uri.parse('https://api.apify.com/v2/acts/apify~hello-world/runs/$runId');
    bool datasetFound = false;

    for (int i = 0; i < 20; i++) { // Increased the number of retries
      final response = await http.get(url, headers: {
        'Authorization': 'Bearer $token',
      });

      if (response.statusCode == 200) {
        final run = jsonDecode(response.body);
        final defaultDatasetId = run['data']['defaultDatasetId'];
        if (defaultDatasetId != null && defaultDatasetId.isNotEmpty) {
          print('Dataset found on attempt ${i + 1}: $defaultDatasetId');
          datasetFound = true;
          await fetchResults(defaultDatasetId);
          break;
        } else {
          print('No dataset found on attempt ${i + 1}.');
        }
      } else {
        final errorResponse = jsonDecode(response.body);
        print('Failed to fetch run details on attempt ${i + 1}: ${errorResponse['error']['message']}');
      }

      await Future.delayed(Duration(seconds: 10)); // Increased delay between retries
      print('Attempt ${i + 1}: Checking for dataset...');
    }

    if (!datasetFound) {
      print('Failed to find dataset after waiting.');
    }
  }
}