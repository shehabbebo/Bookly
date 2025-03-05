import 'package:equatable/equatable.dart';

import 'apikey.dart';

class Auth extends Equatable {
	final String? type;
	final Apikey? apikey;

	const Auth({this.type, this.apikey});

	factory Auth.fromJson(Map<String, dynamic> json) => Auth(
				type: json['type'] as String?,
				apikey: json['apikey'] == null
						? null
						: Apikey.fromJson(json['apikey'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'type': type,
				'apikey': apikey?.toJson(),
			};

	@override
	List<Object?> get props => [type, apikey];
}
