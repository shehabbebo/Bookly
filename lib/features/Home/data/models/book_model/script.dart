import 'package:equatable/equatable.dart';

class Script extends Equatable {
	final String? type;
	final List<String>? exec;

	const Script({this.type, this.exec});

	factory Script.fromJson(Map<String, dynamic> json) => Script(
				type: json['type'] as String?,
				exec: json['exec'] as List<String>?,
			);

	Map<String, dynamic> toJson() => {
				'type': type,
				'exec': exec,
			};

	@override
	List<Object?> get props => [type, exec];
}
