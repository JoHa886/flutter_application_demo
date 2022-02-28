import 'package:flutter/material.dart';
import 'package:flutter_application_demo/providers/user_provider.dart';
import 'package:flutter_application_demo/utils/global.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _username;
  late String _password;

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text("用户登录"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(hintText: '账号'),
                        validator: (value) {
                          // RegExp reg = RegExp(r'^\d{11}$');
                          // if (!reg.hasMatch(value!)) {
                          //   return '手机号非法111';
                          // }
                          return value!.isEmpty ? "请输入账号" : null;
                        },
                        onSaved: (value) {
                          print('_username onSaved');
                          _username = value!;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(hintText: '密码'),
                        validator: (value) {
                          return value!.length < 6 ? "密码长度不够" : null;
                        },
                        onSaved: (value) {
                          print('_password onSaved');
                          _password = value!;
                        },
                      )
                    ],
                  )),
              const Padding(padding: EdgeInsets.all(10.0)),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        var res = await Global.api.user
                            .login(username: _username, password: _password);
                        if (res != false) {
                          print('登录成功');
                          userProvider.doLogin(res); // 修改用户的登录状态
                          Global.router.pop(context);
                        } else {
                          print('登录失败');
                          _formKey.currentState!.reset();
                          showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title: const Text('登录失败'),
                                    content: const Text('账号或密码错误'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'OK'),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ));
                        }
                      }
                    },
                    child: const Text('提交'),
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      _formKey.currentState!.reset();
                    },
                    child: const Text('重置'),
                  ))
                ],
              )
            ],
          ),
        ));
  }
}
