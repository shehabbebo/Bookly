import 'package:equatable/equatable.dart';

class Query extends Equatable {
	final String? key;
	final String? value;
	final bool? disabled;

	const Query({this.key, this.value, this.disabled});

	factory Query.fromJson(Map<String, dynamic> json) => Query(
				key: json['key'] as String?,
				value: json['value'] as String?,
				disabled: json['disabled'] as bool?,
			);

	Map<String, dynamic> toJson() => {
				'key': key,
				'value': value,
				'disabled': disabled,
			};

	@override
	List<Object?> get props => [key, value, disabled];
}
