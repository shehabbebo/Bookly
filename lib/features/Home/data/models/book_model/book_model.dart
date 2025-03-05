import 'package:equatable/equatable.dart';

import 'auth.dart';
import 'event.dart';
import 'info.dart';
import 'item.dart';
import 'variable.dart';

class BookModel extends Equatable {
	final Info? info;
	final List<Item>? item;
	final Auth? auth;
	final List<Event>? event;
	final List<Variable>? variable;

	const BookModel({
		this.info, 
		this.item, 
		this.auth, 
		this.event, 
		this.variable, 
	});

	factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
				info: json['info'] == null
						? null
						: Info.fromJson(json['info'] as Map<String, dynamic>),
				item: (json['item'] as List<dynamic>?)
						?.map((e) => Item.fromJson(e as Map<String, dynamic>))
						.toList(),
				auth: json['auth'] == null
						? null
						: Auth.fromJson(json['auth'] as Map<String, dynamic>),
				event: (json['event'] as List<dynamic>?)
						?.map((e) => Event.fromJson(e as Map<String, dynamic>))
						.toList(),
				variable: (json['variable'] as List<dynamic>?)
						?.map((e) => Variable.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'info': info?.toJson(),
				'item': item?.map((e) => e.toJson()).toList(),
				'auth': auth?.toJson(),
				'event': event?.map((e) => e.toJson()).toList(),
				'variable': variable?.map((e) => e.toJson()).toList(),
			};

	@override
	List<Object?> get props => [info, item, auth, event, variable];
}
