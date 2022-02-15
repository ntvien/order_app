import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsList {
  final String? title;

  final IconData? icon;
  final String? subtitle;

  SettingsList({this.title, this.icon, this.subtitle});
}

class SettingBottomList {
  final String? title;

  final IconData? icon;
  final String? subtitle;

  SettingBottomList({this.title, this.icon, this.subtitle});
}

List<SettingsList> settingsList = [
  SettingsList(
    icon: Icons.edit,
    title: 'Chỉnh sửa hồ sơ',
    subtitle: 'Thêm tên, số điện thoại, địa chỉ giao hàng và nhiều hơn nữa',
  ),
  SettingsList(
    icon: Icons.payment,
    title: 'Thanh toán',
    subtitle: 'Thêm, xóa hoặc chỉnh sửa phương thức thanh toán của bạn',
  ),
  SettingsList(
    icon: Icons.chat,
    title: 'Ví điện tử',
    subtitle: 'Gửi, nhận, thanh toán hóa đơn và nhiều hơn nữa',
  ),
  SettingsList(
    icon: Icons.notifications,
    title: 'Thiết lập thông báo',
    subtitle: 'Thông báo âm thanh và nhiều hơn nữa',
  ),
  SettingsList(
    title: 'Cài đặt chủ đề',
    icon: Icons.color_lens,
    subtitle: 'Chế độ tối, chế độ ánh sáng và nhiều hơn nữa',
  ),
];

List<SettingBottomList> settingBtmList = [
  SettingBottomList(
    icon: Icons.help,
    title: 'Trợ giúp',
    subtitle: 'Trung tâm trợ giúp',
  ),
  SettingBottomList(
    icon: Icons.info,
    title: 'Giới thiệu',
    subtitle: 'Giới thiệu về chúng tôi',
  ),
  SettingBottomList(
    icon: Icons.exit_to_app,
    title: 'Đăng xuất',
    subtitle: 'Đăng xuất',
  ),
];
