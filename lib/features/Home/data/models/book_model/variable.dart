import 'package:equatable/equatable.dart';

class Variable extends Equatable {
	final String? id;
	final String? key;
	final String? value;

	const Variable({this.id, this.key, this.value});

	factory Variable.fromJson(Map<String, dynamic> json) => Variable(
				id: json['id'] as String?,
				key: json['key'] as String?,
				value: json['value'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'key': key,
				'value': value,
			};

	@override
	List<Object?> get props => [id, key, value];
}
