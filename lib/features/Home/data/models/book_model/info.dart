import 'package:equatable/equatable.dart';

class Info extends Equatable {
	final String? postmanId;
	final String? name;
	final String? schema;

	const Info({this.postmanId, this.name, this.schema});

	factory Info.fromJson(Map<String, dynamic> json) => Info(
				postmanId: json['_postman_id'] as String?,
				name: json['name'] as String?,
				schema: json['schema'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'_postman_id': postmanId,
				'name': name,
				'schema': schema,
			};

	@override
	List<Object?> get props => [postmanId, name, schema];
}
