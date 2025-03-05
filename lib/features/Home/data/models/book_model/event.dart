import 'package:equatable/equatable.dart';

import 'script.dart';

class Event extends Equatable {
	final String? listen;
	final Script? script;

	const Event({this.listen, this.script});

	factory Event.fromJson(Map<String, dynamic> json) => Event(
				listen: json['listen'] as String?,
				script: json['script'] == null
						? null
						: Script.fromJson(json['script'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'listen': listen,
				'script': script?.toJson(),
			};

	@override
	List<Object?> get props => [listen, script];
}
