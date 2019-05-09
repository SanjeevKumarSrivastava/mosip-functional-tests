-- create table section --------------------------------------------------------
-- schema 		: reg	- registration schema
-- table 		: template_type	- reg template type
-- table alias  : tmpltyp	
  
-- table section ---------------------------------------------------------------
create table reg.template_type (

	code character varying(36) not null,   	
	
	descr character varying(256) not null,
	lang_code character varying(3) not null,		-- reg.language.code
	
	is_active 	boolean not null,
	cr_by 		character varying (256) not null,
	cr_dtimes 	timestamp not null,
	upd_by  	character varying (256),
	upd_dtimes 	timestamp,
	is_deleted	boolean,
	del_dtimes 	timestamp

)
;

-- keys section ------------------------------------------------------------------
alter table reg.template_type add constraint pk_tmpltyp_code primary key (code, lang_code)
 ;



