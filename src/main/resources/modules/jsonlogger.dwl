%dw 2.0
fun masker(pld,fields) = pld match {
	case a is Object -> a mapObject ((value, key, index) -> (key): if (fields contains (key as String)) "******" else masker(value,fields))
	case a is Array -> a map ((item,index) -> masker(item,fields))
	case a is String -> a
	case a is Number -> a
	else -> pld
}
---
{
	timestamp: now() >> "America/New_York",
	uuid: payload.uuid default "",
	"ip": payload.ip default "",
	"appName": payload.appName default "",
	"flow": payload.flowName default "",
	"status": payload.status default "",
	("message": masker(payload.message, payload.maskFields default[])) if (! isEmpty(payload.message))
}