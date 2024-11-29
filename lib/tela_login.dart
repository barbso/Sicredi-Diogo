import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'tela_principal.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final usuarioController = TextEditingController(text: 'emilys');
  final senhaController = TextEditingController(text: 'emilyspass');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color.fromRGBO(0, 200, 0, 1)),
        toolbarHeight: 90,
        flexibleSpace: Center(
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/a/a6/Logomarca_Sicredi.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: Colors.white,
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login de Usuário',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 200, 0, 1),
                    fontFamily: 'Arial',
                  ),
                ),
                const SizedBox(height: 15),
                _buildTextField(
                  controller: usuarioController,
                  label: 'Usuário',
                  icon: Icons.person_2_rounded,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  controller: senhaController,
                  label: 'Senha',
                  icon: Icons.lock_person,
                  obscureText: true,
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity, // Ocupa toda a largura
                  child: ElevatedButton(
                    onPressed: _handleLogin,
                    child: isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20.0, // Aumentando o tamanho da fonte
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(0, 200, 0, 1), // Fundo verde
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool obscureText = false,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Color.fromRGBO(0, 200, 0, 1)),
        filled: true,
        fillColor: Colors.white,
        labelStyle: const TextStyle(color: Colors.black),
        errorStyle: const TextStyle(color: Colors.red),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, insira $label';
        }
        return null;
      },
    );
  }

  Future<void> _handleLogin() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });

      final url = Uri.parse('https://dummyjson.com/auth/login');
      final response = await http.post(
        url,
        body: {
          'username': usuarioController.text,
          'password': senhaController.text,
        },
      );

      setState(() {
        isLoading = false;
      });

      if (response.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TelaPrincipal()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Row(
              children: <Widget>[
                Icon(Icons.error_outline, color: Colors.white),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Login ou Senha Inválidos',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.redAccent,
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        );
      }
    }
  }
}
