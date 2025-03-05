import 'package:equatable/equatable.dart';

import 'event.dart';
import 'request.dart';

class Item extends Equatable {
	final String? name;
	final String? id;
	final Request? request;
	final List<dynamic>? response;
	final List<Event>? event;

	const Item({this.name, this.id, this.request, this.response, this.event});

	factory Item.fromJson(Map<String, dynamic> json) => Item(
				name: json['name'] as String?,
				id: json['id'] as String?,
				request: json['request'] == null
						? null
						: Request.fromJson(json['request'] as Map<String, dynamic>),
				response: json['response'] as List<dynamic>?,
				event: (json['event'] as List<dynamic>?)
						?.map((e) => Event.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'name': name,
				'id': id,
				'request': request?.toJson(),
				'response': response,
				'event': event?.map((e) => e.toJson()).toList(),
			};

	@override
	List<Object?> get props => [name, id, request, response, event];
}
