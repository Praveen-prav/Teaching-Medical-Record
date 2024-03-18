import 'package:flutter/material.dart';

class SoapDetailsPage extends StatefulWidget {
  @override
  State<SoapDetailsPage> createState() => _SoapDetailsPageState();
}

class _SoapDetailsPageState extends State<SoapDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SOAP Details'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/goatBg2.png'), // Replace with your image asset
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.8),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 10.0),
                  const Text(
                    'Subjective',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  RoundedMultilineTextField(label: 'Subjective'),
                  const SizedBox(height: 10.0),

                  // Objective Section
                  const Text(
                    'Objective',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 10.0),

                  Row(
                    children: [
                      Expanded(
                        child: const RoundedTextField(label: 'Temp'),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: const RoundedTextField(label: 'Resp'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(
                        child: const RoundedTextField(label: 'Pulse Rate'),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: const RoundedTextField(label: 'MM'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(
                        child: const RoundedTextField(label: 'CRT'),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: const RoundedTextField(label: 'Hydration'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10.0),

                  // Other Sections
                  // Text(
                  //   'Other',
                  //   style: TextStyle(
                  //     fontSize: 20.0,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  // SizedBox(height: 10.0),

                  const RoundedTextField(label: 'HEENT'),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'PLNS'),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'HL'),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'ABD'),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'UG'),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'MS'),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'Neuro'),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'Integum'),
                  const SizedBox(height: 10.0),

                  // Assessment Section
                  const Text(
                    'Assessment',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const RoundedMultilineTextField(label: 'Assessment'),
                  const SizedBox(height: 10.0),

                  const Text(
                    'P : Treatment details',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  const RoundedMultilineTextField(label: 'Treatment'),
                  const SizedBox(height: 10.0),

                  ElevatedButton(
                    onPressed: () {
                      showSubmissionSnackBar(context);
                      // Add your logic here
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void showSubmissionSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: const Text('Submitted'),
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
    ),
  );
}

class RoundedTextField extends StatelessWidget {
  final String label;

  const RoundedTextField({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        labelText: label,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class RoundedMultilineTextField extends StatelessWidget {
  final String label;

  const RoundedMultilineTextField({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: null,
      keyboardType: TextInputType.multiline,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        labelText: label,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class RoundedDropdownField extends StatelessWidget {
  final String label;
  final List<String> options;

  const RoundedDropdownField({
    required this.label,
    required this.options,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      style: TextStyle(color: Colors.black),
      items: options.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: label,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onChanged: (String? value) {
        // Add your dropdown selection logic here
      },
    );
  }
}
