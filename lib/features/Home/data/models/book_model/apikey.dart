import 'package:equatable/equatable.dart';

class Apikey extends Equatable {
	final String? value;
	final String? key;

	const Apikey({this.value, this.key});

	factory Apikey.fromJson(Map<String, dynamic> json) => Apikey(
				value: json['value'] as String?,
				key: json['key'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'value': value,
				'key': key,
			};

	@override
	List<Object?> get props => [value, key];
}
