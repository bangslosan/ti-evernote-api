#import "TiUtils.h"
#import "TiThriftUtils.h"
#import "JpMasuidriveTiEvernoteapiModule.h"

@implementation JpMasuidriveTiEvernoteapiModule (LimitsConstValues)

-(id)Limits
{
	id result = [consts objectForKey:@"Limits"];
	if(!result) {
		result = [NSDictionary dictionaryWithObjectsAndKeys:
			NUMDOUBLE(1.0), @"EDAM_ATTRIBUTE_LEN_MIN",
			NUMDOUBLE(4096.0), @"EDAM_ATTRIBUTE_LEN_MAX",
			@"^[^\\p{Cc}\\p{Zl}\\p{Zp}]{1,4096}$", @"EDAM_ATTRIBUTE_REGEX",
			NUMDOUBLE(100.0), @"EDAM_ATTRIBUTE_LIST_MAX",
			NUMDOUBLE(100.0), @"EDAM_ATTRIBUTE_MAP_MAX",
			NUMDOUBLE(36.0), @"EDAM_GUID_LEN_MIN",
			NUMDOUBLE(36.0), @"EDAM_GUID_LEN_MAX",
			@"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", @"EDAM_GUID_REGEX",
			NUMDOUBLE(6.0), @"EDAM_EMAIL_LEN_MIN",
			NUMDOUBLE(255.0), @"EDAM_EMAIL_LEN_MAX",
			@"^[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(\\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*$", @"EDAM_EMAIL_LOCAL_REGEX",
			@"^[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*\\.([A-Za-z]{2,})$", @"EDAM_EMAIL_DOMAIN_REGEX",
			@"^[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(\\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*\\.([A-Za-z]{2,})$", @"EDAM_EMAIL_REGEX",
			NUMDOUBLE(1.0), @"EDAM_TIMEZONE_LEN_MIN",
			NUMDOUBLE(32.0), @"EDAM_TIMEZONE_LEN_MAX",
			@"^([A-Za-z_-]+(/[A-Za-z_-]+)*)|(GMT(-|\\+)[0-9]{1,2}(:[0-9]{2})?)$", @"EDAM_TIMEZONE_REGEX",
			NUMDOUBLE(3.0), @"EDAM_MIME_LEN_MIN",
			NUMDOUBLE(255.0), @"EDAM_MIME_LEN_MAX",
			@"^[A-Za-z]+/[A-Za-z0-9._+-]+$", @"EDAM_MIME_REGEX",
			@"image/gif", @"EDAM_MIME_TYPE_GIF",
			@"image/jpeg", @"EDAM_MIME_TYPE_JPEG",
			@"image/png", @"EDAM_MIME_TYPE_PNG",
			@"audio/wav", @"EDAM_MIME_TYPE_WAV",
			@"audio/mpeg", @"EDAM_MIME_TYPE_MP3",
			@"audio/amr", @"EDAM_MIME_TYPE_AMR",
			@"video/mp4", @"EDAM_MIME_TYPE_MP4_VIDEO",
			@"application/vnd.evernote.ink", @"EDAM_MIME_TYPE_INK",
			@"application/pdf", @"EDAM_MIME_TYPE_PDF",
			@"application/octet-stream", @"EDAM_MIME_TYPE_DEFAULT",
			[NSArray arrayWithObjects: @"image/gif", @"image/jpeg", @"image/png", @"audio/wav", @"audio/mpeg", @"audio/amr", @"application/vnd.evernote.ink", @"application/pdf", @"video/mp4", nil], @"EDAM_MIME_TYPES",
			@"Google", @"EDAM_COMMERCE_SERVICE_GOOGLE",
			@"Paypal", @"EDAM_COMMERCE_SERVICE_PAYPAL",
			@"Gift", @"EDAM_COMMERCE_SERVICE_GIFT",
			@"TrialPay", @"EDAM_COMMERCE_SERVICE_TRIALPAY",
			@"Trial", @"EDAM_COMMERCE_SERVICE_TRIAL",
			@"Group", @"EDAM_COMMERCE_SERVICE_GROUP",
			@"CYBERSRC", @"EDAM_COMMERCE_SERVICE_CYBERSOURCE",
			@"USD", @"EDAM_COMMERCE_DEFAULT_CURRENCY_COUNTRY_CODE",
			NUMDOUBLE(0.0), @"EDAM_SEARCH_QUERY_LEN_MIN",
			NUMDOUBLE(1024.0), @"EDAM_SEARCH_QUERY_LEN_MAX",
			@"^[^\\p{Cc}\\p{Zl}\\p{Zp}]{0,1024}$", @"EDAM_SEARCH_QUERY_REGEX",
			NUMDOUBLE(16.0), @"EDAM_HASH_LEN",
			NUMDOUBLE(1.0), @"EDAM_USER_USERNAME_LEN_MIN",
			NUMDOUBLE(64.0), @"EDAM_USER_USERNAME_LEN_MAX",
			@"^[a-z0-9]([a-z0-9_-]{0,62}[a-z0-9])?$", @"EDAM_USER_USERNAME_REGEX",
			NUMDOUBLE(1.0), @"EDAM_USER_NAME_LEN_MIN",
			NUMDOUBLE(255.0), @"EDAM_USER_NAME_LEN_MAX",
			@"^[^\\p{Cc}\\p{Zl}\\p{Zp}]{1,255}$", @"EDAM_USER_NAME_REGEX",
			NUMDOUBLE(1.0), @"EDAM_TAG_NAME_LEN_MIN",
			NUMDOUBLE(100.0), @"EDAM_TAG_NAME_LEN_MAX",
			@"^[^,\\p{Cc}\\p{Z}]([^,\\p{Cc}\\p{Zl}\\p{Zp}]{0,98}[^,\\p{Cc}\\p{Z}])?$", @"EDAM_TAG_NAME_REGEX",
			NUMDOUBLE(1.0), @"EDAM_NOTE_TITLE_LEN_MIN",
			NUMDOUBLE(255.0), @"EDAM_NOTE_TITLE_LEN_MAX",
			@"^[^\\p{Cc}\\p{Z}]([^\\p{Cc}\\p{Zl}\\p{Zp}]{0,253}[^\\p{Cc}\\p{Z}])?$", @"EDAM_NOTE_TITLE_REGEX",
			NUMDOUBLE(0.0), @"EDAM_NOTE_CONTENT_LEN_MIN",
			NUMDOUBLE(5242880.0), @"EDAM_NOTE_CONTENT_LEN_MAX",
			NUMDOUBLE(3.0), @"EDAM_APPLICATIONDATA_NAME_LEN_MIN",
			NUMDOUBLE(32.0), @"EDAM_APPLICATIONDATA_NAME_LEN_MAX",
			NUMDOUBLE(0.0), @"EDAM_APPLICATIONDATA_VALUE_LEN_MIN",
			NUMDOUBLE(4092.0), @"EDAM_APPLICATIONDATA_VALUE_LEN_MAX",
			NUMDOUBLE(4095.0), @"EDAM_APPLICATIONDATA_ENTRY_LEN_MAX",
			@"^[A-Za-z0-9_.-]{3,32}$", @"EDAM_APPLICATIONDATA_NAME_REGEX",
			@"^[^\\p{Cc}]{0,4092}$", @"EDAM_APPLICATIONDATA_VALUE_REGEX",
			NUMDOUBLE(1.0), @"EDAM_NOTEBOOK_NAME_LEN_MIN",
			NUMDOUBLE(100.0), @"EDAM_NOTEBOOK_NAME_LEN_MAX",
			@"^[^\\p{Cc}\\p{Z}]([^\\p{Cc}\\p{Zl}\\p{Zp}]{0,98}[^\\p{Cc}\\p{Z}])?$", @"EDAM_NOTEBOOK_NAME_REGEX",
			NUMDOUBLE(1.0), @"EDAM_NOTEBOOK_STACK_LEN_MIN",
			NUMDOUBLE(100.0), @"EDAM_NOTEBOOK_STACK_LEN_MAX",
			@"^[^\\p{Cc}\\p{Z}]([^\\p{Cc}\\p{Zl}\\p{Zp}]{0,98}[^\\p{Cc}\\p{Z}])?$", @"EDAM_NOTEBOOK_STACK_REGEX",
			NUMDOUBLE(1.0), @"EDAM_PUBLISHING_URI_LEN_MIN",
			NUMDOUBLE(255.0), @"EDAM_PUBLISHING_URI_LEN_MAX",
			@"^[a-zA-Z0-9.~_+-]{1,255}$", @"EDAM_PUBLISHING_URI_REGEX",
			[NSArray arrayWithObjects: @"..", nil], @"EDAM_PUBLISHING_URI_PROHIBITED",
			NUMDOUBLE(1.0), @"EDAM_PUBLISHING_DESCRIPTION_LEN_MIN",
			NUMDOUBLE(200.0), @"EDAM_PUBLISHING_DESCRIPTION_LEN_MAX",
			@"^[^\\p{Cc}\\p{Z}]([^\\p{Cc}\\p{Zl}\\p{Zp}]{0,198}[^\\p{Cc}\\p{Z}])?$", @"EDAM_PUBLISHING_DESCRIPTION_REGEX",
			NUMDOUBLE(1.0), @"EDAM_SAVED_SEARCH_NAME_LEN_MIN",
			NUMDOUBLE(100.0), @"EDAM_SAVED_SEARCH_NAME_LEN_MAX",
			@"^[^\\p{Cc}\\p{Z}]([^\\p{Cc}\\p{Zl}\\p{Zp}]{0,98}[^\\p{Cc}\\p{Z}])?$", @"EDAM_SAVED_SEARCH_NAME_REGEX",
			NUMDOUBLE(6.0), @"EDAM_USER_PASSWORD_LEN_MIN",
			NUMDOUBLE(64.0), @"EDAM_USER_PASSWORD_LEN_MAX",
			@"^[A-Za-z0-9!#$%&'()*+,./:;<=>?@^_`{|}~\\[\\]\\\\-]{6,64}$", @"EDAM_USER_PASSWORD_REGEX",
			NUMDOUBLE(100.0), @"EDAM_NOTE_TAGS_MAX",
			NUMDOUBLE(1000.0), @"EDAM_NOTE_RESOURCES_MAX",
			NUMDOUBLE(100000.0), @"EDAM_USER_TAGS_MAX",
			NUMDOUBLE(100.0), @"EDAM_USER_SAVED_SEARCHES_MAX",
			NUMDOUBLE(100000.0), @"EDAM_USER_NOTES_MAX",
			NUMDOUBLE(250.0), @"EDAM_USER_NOTEBOOKS_MAX",
			NUMDOUBLE(10.0), @"EDAM_USER_RECENT_MAILED_ADDRESSES_MAX",
			NUMDOUBLE(50.0), @"EDAM_USER_MAIL_LIMIT_DAILY_FREE",
			NUMDOUBLE(200.0), @"EDAM_USER_MAIL_LIMIT_DAILY_PREMIUM",
			NUMDOUBLE(62914560.0), @"EDAM_USER_UPLOAD_LIMIT_FREE",
			NUMDOUBLE(1073741824.0), @"EDAM_USER_UPLOAD_LIMIT_PREMIUM",
			NUMDOUBLE(26214400.0), @"EDAM_NOTE_SIZE_MAX_FREE",
			NUMDOUBLE(52428800.0), @"EDAM_NOTE_SIZE_MAX_PREMIUM",
			NUMDOUBLE(26214400.0), @"EDAM_RESOURCE_SIZE_MAX_FREE",
			NUMDOUBLE(52428800.0), @"EDAM_RESOURCE_SIZE_MAX_PREMIUM",
			NUMDOUBLE(100.0), @"EDAM_USER_LINKED_NOTEBOOK_MAX",
			NUMDOUBLE(250.0), @"EDAM_NOTEBOOK_SHARED_NOTEBOOK_MAX",
			NUMDOUBLE(3.0), @"EDAM_NOTE_CONTENT_CLASS_LEN_MIN",
			NUMDOUBLE(32.0), @"EDAM_NOTE_CONTENT_CLASS_LEN_MAX",
			@"evernote.hello.", @"EDAM_HELLO_APP_CONTENT_CLASS_PREFIX",
			@"evernote.food.", @"EDAM_FOOD_APP_CONTENT_CLASS_PREFIX",
			@"^[A-Za-z0-9_.-]{3,32}$", @"EDAM_NOTE_CONTENT_CLASS_REGEX",
			@"evernote.hello.encounter", @"EDAM_CONTENT_CLASS_HELLO_ENCOUNTER",
			@"evernote.hello.profile", @"EDAM_CONTENT_CLASS_HELLO_PROFILE",
			@"evernote.food.meal", @"EDAM_CONTENT_CLASS_FOOD_MEAL",
			@"evernote.skitch", @"EDAM_CONTENT_CLASS_SKITCH",
			NUMDOUBLE(1.0), @"EDAM_RELATED_PLAINTEXT_LEN_MIN",
			NUMDOUBLE(131072.0), @"EDAM_RELATED_PLAINTEXT_LEN_MAX",
			NUMDOUBLE(25.0), @"EDAM_RELATED_MAX_NOTES",
			NUMDOUBLE(1.0), @"EDAM_RELATED_MAX_NOTEBOOKS",
			NUMDOUBLE(25.0), @"EDAM_RELATED_MAX_TAGS",


			nil];
	}
	return result;
}
@end