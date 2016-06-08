CREATE TABLE hibernate_sequences (
  sequence_name VARCHAR(200) NOT NULL,
  next_val INT(11) NOT NULL,
  PRIMARY KEY (sequence_name)
);

CREATE TABLE SBI_CHECKS (
       CHECK_ID             INTEGER NOT NULL ,
       DESCR                VARCHAR(160) NULL,
       LABEL                VARCHAR(20) NOT NULL,
       VALUE_TYPE_CD        VARCHAR(20) NOT NULL,
       VALUE_TYPE_ID        INTEGER NOT NULL,
       VALUE_1              VARCHAR(400) NULL,
       VALUE_2              VARCHAR(400) NULL,
       NAME                 VARCHAR(40) NOT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,    
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),     
       UNIQUE XAK1SBI_CHECKS (LABEL, ORGANIZATION),
       PRIMARY KEY (CHECK_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_DOMAINS (
       VALUE_ID             INTEGER NOT NULL ,
       VALUE_CD             VARCHAR(100) NULL,
       VALUE_NM             VARCHAR(40) NULL,
       DOMAIN_CD            VARCHAR(20) NULL,
       DOMAIN_NM            VARCHAR(40) NULL,
       VALUE_DS             VARCHAR(160) NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),    
       UNIQUE XAK1SBI_DOMAINS (VALUE_CD,DOMAIN_CD),
       PRIMARY KEY (VALUE_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_ENGINES (
       ENGINE_ID            INTEGER NOT NULL ,
       ENCRYPT              SMALLINT NULL,
       NAME                 VARCHAR(40) NOT NULL,
       DESCR                VARCHAR(160) NULL,
       MAIN_URL             VARCHAR(400) NULL,
       SECN_URL             VARCHAR(400) NULL,
       OBJ_UPL_DIR          VARCHAR(400) NULL,
       OBJ_USE_DIR          VARCHAR(400) NULL,
       DRIVER_NM            VARCHAR(400) NULL,
       LABEL                VARCHAR(40) NOT NULL,
       ENGINE_TYPE          INTEGER NOT NULL,
       CLASS_NM             VARCHAR(400) NULL,
       BIOBJ_TYPE           INTEGER NOT NULL,
 	   USE_DATASET          BOOLEAN DEFAULT FALSE,
 	   USE_DATASOURCE       BOOLEAN  DEFAULT FALSE,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20), 	 
       UNIQUE XAK1SBI_ENGINES (LABEL, ORGANIZATION),
       PRIMARY KEY (ENGINE_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_EXT_ROLES (
       EXT_ROLE_ID          		INTEGER NOT NULL ,
       NAME                 		VARCHAR(100) NOT NULL,
       DESCR                		VARCHAR(160) NULL,
       CODE                 		VARCHAR(20) NULL,
       ROLE_TYPE_CD         		VARCHAR(20) NOT NULL,
       ROLE_TYPE_ID         		INTEGER NOT NULL,
       USER_IN              		VARCHAR(100) NOT NULL,
       USER_UP             			VARCHAR(100),
       USER_DE              		VARCHAR(100),
       TIME_IN              		TIMESTAMP NOT NULL,
       TIME_UP              		TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              		TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       		VARCHAR(10),
       SBI_VERSION_UP       		VARCHAR(10),
       SBI_VERSION_DE       		VARCHAR(10),
       META_VERSION         		VARCHAR(100),
       ORGANIZATION         		VARCHAR(20),       
       UNIQUE XAK1SBI_EXT_ROLES (NAME, ORGANIZATION),
       PRIMARY KEY (EXT_ROLE_ID)   
) ENGINE=InnoDB;


CREATE TABLE SBI_FUNC_ROLE (
       ROLE_ID              INTEGER NOT NULL,
       FUNCT_ID             INTEGER NOT NULL,
       STATE_CD             VARCHAR(20) NULL,
       STATE_ID             INTEGER NOT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),      
       PRIMARY KEY (FUNCT_ID, STATE_ID, ROLE_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_FUNCTIONS (
       FUNCT_ID             INTEGER NOT NULL ,
       FUNCT_TYPE_CD        VARCHAR(20) NOT NULL,
       PARENT_FUNCT_ID      INTEGER NULL,
       NAME                 VARCHAR(40) NULL,
       DESCR                VARCHAR(160) NULL,
       PATH                 VARCHAR(400) NULL,
       CODE                 VARCHAR(40) NOT NULL,
       PROG 				INTEGER NOT NULL,
       FUNCT_TYPE_ID        INTEGER NOT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),    
       UNIQUE XAK1SBI_FUNCTIONS (CODE, ORGANIZATION),
       PRIMARY KEY (FUNCT_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_LOV (
       LOV_ID               INTEGER NOT NULL ,
       DESCR                VARCHAR(160) NULL,
       LABEL                VARCHAR(20) NOT NULL,
       INPUT_TYPE_CD        VARCHAR(20) NOT NULL,
       DEFAULT_VAL          VARCHAR(40) NULL,
       LOV_PROVIDER         TEXT NULL,
       INPUT_TYPE_ID        INTEGER NOT NULL,
       PROFILE_ATTR         VARCHAR(20) NULL,
       NAME                 VARCHAR(40) NOT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20), 
	   DATASET_ID			INT(11),
       UNIQUE XAK1SBI_LOV (LABEL, ORGANIZATION),
       PRIMARY KEY (LOV_ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_OBJ_FUNC (
       BIOBJ_ID             INTEGER NOT NULL,
       FUNCT_ID             INTEGER NOT NULL,
       PROG                 INTEGER NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),       
       PRIMARY KEY (BIOBJ_ID, FUNCT_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_OBJ_PAR (
       OBJ_PAR_ID           INTEGER NOT NULL ,
       PAR_ID               INTEGER NOT NULL,
       BIOBJ_ID             INTEGER NOT NULL,
       LABEL                VARCHAR(40) NOT NULL,
       REQ_FL               SMALLINT NULL,
       MOD_FL               SMALLINT NULL,
       VIEW_FL              SMALLINT NULL,
       MULT_FL              SMALLINT NULL,
       PROG                 INTEGER NOT NULL,
       PARURL_NM            VARCHAR(20) NULL,
       PRIORITY             INTEGER NULL,
       COL_SPAN             INTEGER NULL DEFAULT 1,
       THICK_PERC           INTEGER NULL DEFAULT 0,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),     
       PRIMARY KEY (OBJ_PAR_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_OBJ_STATE (
       BIOBJ_ID             INTEGER NOT NULL,
       STATE_ID             INTEGER NOT NULL,
       END_DT               DATE NULL,
       START_DT             DATE NOT NULL,
       NOTE                 VARCHAR(300) NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),      
       PRIMARY KEY (BIOBJ_ID, STATE_ID, START_DT)
) ENGINE=InnoDB;


CREATE TABLE SBI_OBJECTS (
       BIOBJ_ID             INTEGER NOT NULL ,
       ENGINE_ID            INTEGER NOT NULL,
       DESCR                VARCHAR(400) NULL,
       LABEL                VARCHAR(100) NOT NULL,
       ENCRYPT              SMALLINT NULL,
       PATH                 VARCHAR(400) NULL,
       REL_NAME             VARCHAR(400) NULL,
       STATE_ID             INTEGER NOT NULL,
       STATE_CD             VARCHAR(20) NOT NULL,
       BIOBJ_TYPE_CD        VARCHAR(20) NOT NULL,
       BIOBJ_TYPE_ID        INTEGER NOT NULL,
       SCHED_FL             SMALLINT NULL,
       EXEC_MODE_ID         INTEGER NULL,
       STATE_CONS_ID        INTEGER NULL,
       EXEC_MODE_CD         VARCHAR(20) NULL,
       STATE_CONS_CD        VARCHAR(20) NULL,
       NAME                 VARCHAR(200) NOT NULL,
       VISIBLE              SMALLINT NOT NULL,
       UUID                 VARCHAR(40) NOT NULL,
       DATA_SOURCE_ID 		INTEGER,
       CREATION_DATE        TIMESTAMP NOT NULL,
       CREATION_USER        VARCHAR(45) NOT NULL,
       REFRESH_SECONDS      INTEGER,
       PROF_VISIBILITY      VARCHAR(400) NULL,
       PREVIEW_FILE			VARCHAR(100) NULL,
       PARAMETERS_REGION    VARCHAR(20) NULL, 
       LOCKED_BY_USER       VARCHAR(100) NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),    
       UNIQUE XAK1SBI_OBJECTS (LABEL, ORGANIZATION),
       PRIMARY KEY (BIOBJ_ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_OBJECTS_RATING (
	   USER_ID 				VARCHAR(127) NOT NULL,
	   OBJ_ID 				INTEGER NOT NULL,
	   RATING 				INTEGER NOT NULL,
	   USER_IN              VARCHAR(100) NOT NULL,
	   USER_UP              VARCHAR(100),
	   USER_DE              VARCHAR(100),
	   TIME_IN              TIMESTAMP NOT NULL,
	   TIME_UP              TIMESTAMP NULL DEFAULT NULL,
	   TIME_DE              TIMESTAMP NULL DEFAULT NULL,
	   SBI_VERSION_IN       VARCHAR(10),
	   SBI_VERSION_UP       VARCHAR(10),
	   SBI_VERSION_DE       VARCHAR(10),
	   META_VERSION         VARCHAR(100),
	   ORGANIZATION         VARCHAR(20), 
	 PRIMARY KEY (USER_ID, OBJ_ID)
) ENGINE=InnoDB; 


CREATE TABLE SBI_PARAMETERS (
       PAR_ID               INTEGER NOT NULL ,
       DESCR                VARCHAR(160) NULL,
       LENGTH               SMALLINT NOT NULL,
       LABEL                VARCHAR(20) NOT NULL,
       PAR_TYPE_CD          VARCHAR(20) NOT NULL,
       MASK                 VARCHAR(20) NULL,
       PAR_TYPE_ID          INTEGER NOT NULL,
       NAME                 VARCHAR(40) NOT NULL,
       FUNCTIONAL_FLAG		SMALLINT NOT NULL DEFAULT 1,
       TEMPORAL_FLAG		SMALLINT NOT NULL DEFAULT 0,
       VALUE_SELECTION 		VARCHAR(20),
       SELECTED_LAYER 		VARCHAR(100),
       SELECTED_LAYER_PROP 	VARCHAR(40),
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),   
       UNIQUE XAK1SBI_PARAMETERS (LABEL, ORGANIZATION),
       PRIMARY KEY (PAR_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_PARUSE (
       USE_ID               INTEGER NOT NULL ,
       LOV_ID               INTEGER NULL,
       DEFAULT_LOV_ID       INTEGER NULL,
       DEFAULT_FORMULA      VARCHAR(4000) NULL,
       LABEL                VARCHAR(20) NOT NULL,
       DESCR                VARCHAR(160) NULL,
       PAR_ID               INTEGER NOT NULL,
       NAME                 VARCHAR(40) NOT NULL,
       MAN_IN               INTEGER NOT NULL,
       MAXIMIZER_ENABLED	BOOLEAN DEFAULT FALSE,
       SELECTION_TYPE  		VARCHAR(20) DEFAULT 'LIST',
       MULTIVALUE_FLAG  	INTEGER DEFAULT 0,
       VALUE_SELECTION 		VARCHAR(20),
       SELECTED_LAYER 		VARCHAR(100),
       SELECTED_LAYER_PROP 	VARCHAR(40),
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),    
       UNIQUE XAK1SBI_PARUSE (PAR_ID,LABEL),
       PRIMARY KEY (USE_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_PARUSE_CK (
       CHECK_ID             INTEGER NOT NULL,
       USE_ID               INTEGER NOT NULL,
       PROG                 INTEGER NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),       
       PRIMARY KEY (USE_ID, CHECK_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_PARUSE_DET (
       EXT_ROLE_ID          INTEGER NOT NULL,
       PROG                 INTEGER NULL,
       USE_ID               INTEGER NOT NULL,
       HIDDEN_FL            SMALLINT NULL,
       DEFAULT_VAL          VARCHAR(40) NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),       
       PRIMARY KEY (USE_ID, EXT_ROLE_ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_SUBREPORTS (
       MASTER_RPT_ID        INTEGER NOT NULL,
       SUB_RPT_ID           INTEGER NOT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),      
       PRIMARY KEY (MASTER_RPT_ID, SUB_RPT_ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_OBJ_PARUSE (
		OBJ_PAR_ID          INTEGER NOT NULL,
		USE_ID              INTEGER NOT NULL,
		OBJ_PAR_FATHER_ID   INTEGER NOT NULL,
		FILTER_OPERATION    VARCHAR(20) NOT NULL,
		PROG 				INTEGER NOT NULL,
		FILTER_COLUMN       VARCHAR(30) NOT NULL,
		PRE_CONDITION 		VARCHAR(10),
	    POST_CONDITION 		VARCHAR(10),
	    LOGIC_OPERATOR 		VARCHAR(10),
        USER_IN             VARCHAR(100) NOT NULL,
        USER_UP             VARCHAR(100),
        USER_DE             VARCHAR(100),
        TIME_IN             TIMESTAMP NOT NULL,
        TIME_UP             TIMESTAMP NULL DEFAULT NULL,
        TIME_DE             TIMESTAMP NULL DEFAULT NULL,
        SBI_VERSION_IN      VARCHAR(10),
        SBI_VERSION_UP      VARCHAR(10),
        SBI_VERSION_DE      VARCHAR(10),
        META_VERSION        VARCHAR(100),
        ORGANIZATION        VARCHAR(20),    
	    PRIMARY KEY(OBJ_PAR_ID,USE_ID,OBJ_PAR_FATHER_ID,FILTER_OPERATION)
) ENGINE=InnoDB;


CREATE TABLE SBI_EVENTS (
	   ID                   INTEGER NOT NULL ,
  	   USER_EVENT           VARCHAR(40) NOT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),  
       PRIMARY KEY(ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_EVENTS_LOG (
		ID                   INTEGER NOT NULL ,
		USER_EVENT           VARCHAR(40) NOT NULL,
		EVENT_DATE           TIMESTAMP DEFAULT NOW() NOT NULL,
		DESCR                TEXT NOT NULL,
		PARAMS               VARCHAR(1000),
		HANDLER 			 VARCHAR(400) NOT NULL DEFAULT 'it.eng.spagobi.events.handlers.DefaultEventPresentationHandler',
        USER_IN              VARCHAR(100) NOT NULL,
        USER_UP              VARCHAR(100),
        USER_DE              VARCHAR(100),
        TIME_IN              TIMESTAMP NOT NULL,
        TIME_UP              TIMESTAMP NULL DEFAULT NULL,
        TIME_DE              TIMESTAMP NULL DEFAULT NULL,
        SBI_VERSION_IN       VARCHAR(10),
        SBI_VERSION_UP       VARCHAR(10),
        SBI_VERSION_DE       VARCHAR(10),
        META_VERSION         VARCHAR(100),
        ORGANIZATION         VARCHAR(20), 	
        PRIMARY KEY(ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_EVENTS_ROLES (
       EVENT_ID            INTEGER NOT NULL,
       ROLE_ID             INTEGER NOT NULL,      
       PRIMARY KEY (EVENT_ID, ROLE_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_AUDIT ( 
		ID 					INTEGER NOT NULL ,
		USERNAME 			VARCHAR(40) NOT NULL,
		USERGROUP 			VARCHAR(100),
		DOC_REF 			INTEGER,
		DOC_ID 				INTEGER,
		DOC_LABEL 			VARCHAR(200) NOT NULL,
		DOC_NAME 			VARCHAR(200) NOT NULL,
		DOC_TYPE 			VARCHAR(20) NOT NULL,
		DOC_STATE 			VARCHAR(20) NOT NULL,
		DOC_PARAMETERS 		TEXT,
		SUBOBJ_REF			INTEGER,
		SUBOBJ_ID			INTEGER,
		SUBOBJ_NAME         VARCHAR(50),
		SUBOBJ_OWNER 	    VARCHAR(50),
		SUBOBJ_ISPUBLIC 	SMALLINT NULL,
		ENGINE_REF 			INTEGER,
		ENGINE_ID 			INTEGER,
		ENGINE_LABEL 		VARCHAR(40) NOT NULL,
		ENGINE_NAME 		VARCHAR(40) NOT NULL,
		ENGINE_TYPE 		VARCHAR(20) NOT NULL,
		ENGINE_URL 			VARCHAR(400),
		ENGINE_DRIVER 		VARCHAR(400),
		ENGINE_CLASS 		VARCHAR(400),
		REQUEST_TIME 		TIMESTAMP NOT NULL,
		EXECUTION_START 	TIMESTAMP NULL DEFAULT NULL,
		EXECUTION_END 		TIMESTAMP NULL DEFAULT NULL,
		EXECUTION_TIME		INTEGER,
		EXECUTION_STATE 	VARCHAR(20),
		ERROR				SMALLINT,
		ERROR_MESSAGE 		VARCHAR(400),
		ERROR_CODE 			VARCHAR(20),
		EXECUTION_MODALITY 	VARCHAR(40),
        USER_IN             VARCHAR(100) NOT NULL,
        USER_UP             VARCHAR(100),
        USER_DE             VARCHAR(100),
        TIME_IN             TIMESTAMP NOT NULL,
        TIME_UP             TIMESTAMP NULL DEFAULT NULL,
        TIME_DE             TIMESTAMP NULL DEFAULT NULL,
        SBI_VERSION_IN      VARCHAR(10),
        SBI_VERSION_UP      VARCHAR(10),
        SBI_VERSION_DE      VARCHAR(10),
        META_VERSION        VARCHAR(100),
        ORGANIZATION        VARCHAR(20), 		
		PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_ACTIVITY_MONITORING (
	  ID 					INTEGER UNSIGNED NOT NULL ,
	  ACTION_TIME   		TIMESTAMP,
	  USERNAME 	 			VARCHAR(40) NOT NULL,
	  USERGROUP				VARCHAR(400),
	  LOG_LEVEL 			VARCHAR(10) ,
	  ACTION_CODE 			VARCHAR(45) NOT NULL,
	  INFO 					VARCHAR(400),
	  PRIMARY KEY (ID)
) ENGINE=InnoDB;

-- TODO: DD REMOVE IF NOT REQUIRED
CREATE TABLE SBI_GEO_MAPS (
       MAP_ID               INTEGER NOT NULL ,       
       NAME                 VARCHAR(40) NOT NULL,
       DESCR                VARCHAR(160) NULL,
       URL					VARCHAR(400) NULL,
       FORMAT 				VARCHAR(40) NULL,       
	   BIN_ID               INTEGER NOT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),   
       UNIQUE XAK1SBI_GEO_MAPS (NAME, ORGANIZATION),
       PRIMARY KEY (MAP_ID)
) ENGINE=InnoDB;

-- TODO: DD REMOVE IF NOT REQUIRED
CREATE TABLE SBI_GEO_FEATURES (
       FEATURE_ID           INTEGER NOT NULL ,       
       NAME                 VARCHAR(40) NOT NULL,
       DESCR                VARCHAR(160) NULL,
       TYPE					VARCHAR(40)  NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),     
       UNIQUE XAK1SBI_GEO_FEATURES (NAME, ORGANIZATION),
       PRIMARY KEY (FEATURE_ID)
) ENGINE=InnoDB;

-- TODO: DD REMOVE IF NOT REQUIRED
CREATE TABLE SBI_GEO_MAP_FEATURES (
       MAP_ID               INTEGER NOT NULL,
       FEATURE_ID           INTEGER NOT NULL,
       SVG_GROUP            VARCHAR(40),
       VISIBLE_FLAG		    VARCHAR(1),
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),     
       PRIMARY KEY (MAP_ID, FEATURE_ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_VIEWPOINTS (
		VP_ID 				 INTEGER NOT NULL ,
		BIOBJ_ID 			 INTEGER NOT NULL, 
		VP_NAME 			 VARCHAR(40) NOT NULL,
    	VP_OWNER 			 VARCHAR(40),
		VP_DESC 			 VARCHAR(160),
		VP_SCOPE 			 VARCHAR (20) NOT NULL, 
		VP_VALUE_PARAMS 	 TEXT, 
		VP_CREATION_DATE 	 TIMESTAMP NOT NULL,
        USER_IN              VARCHAR(100) NOT NULL,
        USER_UP              VARCHAR(100),
        USER_DE              VARCHAR(100),
        TIME_IN              TIMESTAMP NOT NULL,
        TIME_UP              TIMESTAMP NULL DEFAULT NULL,
        TIME_DE              TIMESTAMP NULL DEFAULT NULL,
        SBI_VERSION_IN       VARCHAR(10),
        SBI_VERSION_UP       VARCHAR(10),
        SBI_VERSION_DE       VARCHAR(10),
        META_VERSION         VARCHAR(100),
        ORGANIZATION         VARCHAR(20),   
        PRIMARY KEY (VP_ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_DATA_SOURCE (
		DS_ID 				 INTEGER NOT NULL ,
		DESCR 				 VARCHAR(160), 
		LABEL	 			 VARCHAR(50) NOT NULL,
    	JNDI	 			 VARCHAR(50),
		URL_CONNECTION		 VARCHAR(500),
		USERNAME 			 VARCHAR(50), 
		PWD				 	 VARCHAR(50), 
		DRIVER			 	 VARCHAR(160),
		DIALECT_ID			 INTEGER NOT NULL,
	    MULTI_SCHEMA         TINYINT(1) NOT NULL DEFAULT '0',
	    ATTR_SCHEMA    		 VARCHAR(45) DEFAULT NULL,
	    READ_ONLY            BOOLEAN DEFAULT FALSE,
	    WRITE_DEFAULT        BOOLEAN DEFAULT FALSE,
        USER_IN              VARCHAR(100) NOT NULL,
        USER_UP              VARCHAR(100),
        USER_DE              VARCHAR(100),
        TIME_IN              TIMESTAMP NOT NULL,
        TIME_UP              TIMESTAMP,
        TIME_DE              TIMESTAMP,
        SBI_VERSION_IN       VARCHAR(10),
        SBI_VERSION_UP       VARCHAR(10),
        SBI_VERSION_DE       VARCHAR(10),
        META_VERSION         VARCHAR(100),
        ORGANIZATION         VARCHAR(20),   
        UNIQUE XAK1SBI_DATA_SOURCE (LABEL, ORGANIZATION),
        PRIMARY KEY (DS_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_BINARY_CONTENTS (
	   BIN_ID 				INTEGER NOT NULL ,
	   BIN_CONTENT 			MEDIUMBLOB NOT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),
       PRIMARY KEY (BIN_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_OBJECT_TEMPLATES (
		OBJ_TEMP_ID 		 INTEGER NOT NULL ,
		BIOBJ_ID 	         INTEGER,
	    BIN_ID 	             INTEGER,
	    NAME 	             VARCHAR(50),  
	    PROG 	             INTEGER, 
	    DIMENSION            VARCHAR(20),  
		CREATION_DATE 		 DATETIME, 
	    CREATION_USER        VARCHAR(45) NOT NULL, 
	    ACTIVE 	             BOOLEAN,  
        USER_IN              VARCHAR(100) NOT NULL,
        USER_UP              VARCHAR(100),
        USER_DE              VARCHAR(100),
        TIME_IN              TIMESTAMP NOT NULL,
        TIME_UP              TIMESTAMP NULL DEFAULT NULL,
        TIME_DE              TIMESTAMP NULL DEFAULT NULL,
        SBI_VERSION_IN       VARCHAR(10),
        SBI_VERSION_UP       VARCHAR(10),
        SBI_VERSION_DE       VARCHAR(10),
        META_VERSION         VARCHAR(100),
        ORGANIZATION         VARCHAR(20),
        PRIMARY KEY (OBJ_TEMP_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_OBJECT_NOTES (
	   OBJ_NOTE_ID 			INTEGER NOT NULL ,
	   BIOBJ_ID 	        INTEGER,
       BIN_ID 	            INTEGER,
       EXEC_REQ 	        VARCHAR(500),
       OWNER 	            VARCHAR(50),
       ISPUBLIC 	        BOOLEAN,  
       CREATION_DATE 	    TIMESTAMP NOT NULL,  
       LAST_CHANGE_DATE     TIMESTAMP NOT NULL, 
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),
       PRIMARY KEY (OBJ_NOTE_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_SUBOBJECTS (
	   SUBOBJ_ID 			INTEGER NOT NULL ,
	   BIOBJ_ID 	        INTEGER,
       BIN_ID 	            INTEGER,
       NAME 	            VARCHAR(50) NOT NULL,
       DESCRIPTION 	        VARCHAR(100), 
       OWNER 	            VARCHAR(50),
       ISPUBLIC 	        BOOLEAN,  
       CREATION_DATE 	    TIMESTAMP NOT NULL,  
       LAST_CHANGE_DATE 	TIMESTAMP NOT NULL,   
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),
       PRIMARY KEY (SUBOBJ_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_SNAPSHOTS (
	   SNAP_ID 				INTEGER NOT NULL ,
	   BIOBJ_ID 	        INTEGER,
       BIN_ID 	            INTEGER,
       NAME 	            VARCHAR(100),
       DESCRIPTION 	        VARCHAR(1000),
       CREATION_DATE 	    TIMESTAMP NOT NULL,  
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),
       CONTENT_TYPE         VARCHAR(300) DEFAULT NULL,
       PRIMARY KEY (SNAP_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_USER_FUNC (
	   USER_FUNCT_ID 		INTEGER NOT NULL ,
	   NAME 	            VARCHAR(50),  
       DESCRIPTION 	        VARCHAR(100),
       PRODUCT_TYPE_ID 		INT(11) NOT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),
       PRIMARY KEY (USER_FUNCT_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_ROLE_TYPE_USER_FUNC (
		ROLE_TYPE_ID 		INTEGER NOT NULL,
		USER_FUNCT_ID 	    INTEGER NOT NULL,
        PRIMARY KEY (ROLE_TYPE_ID,USER_FUNCT_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_DIST_LIST (
       DL_ID 				INTEGER NOT NULL ,
       NAME 				VARCHAR(40) NOT NULL,
       DESCR				VARCHAR(160),
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),     
       UNIQUE XAK1SBI_SBI_DIST_LIST (NAME, ORGANIZATION), 
       PRIMARY KEY (DL_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_DIST_LIST_USER (
	   DLU_ID				INTEGER NOT NULL ,
       LIST_ID 				INTEGER NOT NULL,
       USER_ID 				VARCHAR(40) NOT NULL,
       E_MAIL				VARCHAR(70) NOT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),
       UNIQUE XAK1SBI_DL_USER (LIST_ID, USER_ID),
	   PRIMARY KEY (DLU_ID)       
) ENGINE=InnoDB;

CREATE TABLE SBI_DIST_LIST_OBJECTS (
	   REL_ID				INTEGER NOT NULL ,
       DOC_ID 				INTEGER NOT NULL,
       DL_ID 				INTEGER NOT NULL,
       XML					VARCHAR(5000) NOT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),
	   PRIMARY KEY (REL_ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_REMEMBER_ME (
       ID               	INTEGER NOT NULL ,
       NAME 				VARCHAR(50) NOT NULL,
       DESCRIPTION      	TEXT,
       USERNAME				VARCHAR(40) NOT NULL,
       BIOBJ_ID         	INTEGER NOT NULL,
       SUBOBJ_ID        	INTEGER NULL,
       PARAMETERS       	TEXT,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),
       PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_DATA_SET (
	   DS_ID 		   		  INTEGER NOT NULL ,
	   VERSION_NUM	   		  INTEGER NOT NULL,
	   ACTIVE		   		  BOOLEAN NOT NULL,
	   DESCR 		   		  VARCHAR(160), 
	   LABEL	 	   		  VARCHAR(50) NOT NULL,
	   NAME	   	   			  VARCHAR(50) NOT NULL,   	   
	   OBJECT_TYPE   		  VARCHAR(50),
	   DS_METADATA    		  TEXT,
	   PARAMS         		  VARCHAR(4000),
	   CATEGORY_ID    		  INTEGER,
	   TRANSFORMER_ID 		  INTEGER,
       PIVOT_COLUMN   		  VARCHAR(50),
	   PIVOT_ROW      		  VARCHAR(50),
	   PIVOT_VALUE   		  VARCHAR(50),
	   NUM_ROWS	   		 	  BOOLEAN DEFAULT FALSE,	
	   IS_PERSISTED  		  BOOLEAN DEFAULT FALSE,
	   PERSIST_TABLE_NAME     VARCHAR(50),
	   CONFIGURATION          TEXT NULL,    
	   FEDERATION_ID			INTEGER, 
	   OWNER 				  VARCHAR(50),
	   IS_PUBLIC 			  BOOLEAN DEFAULT FALSE,
	   USER_IN                VARCHAR(100) NOT NULL,
	   USER_UP                VARCHAR(100),
	   USER_DE                VARCHAR(100),
	   TIME_IN                TIMESTAMP NOT NULL,
	   TIME_UP                TIMESTAMP NULL DEFAULT NULL,
	   TIME_DE                TIMESTAMP NULL DEFAULT NULL,
	   SBI_VERSION_IN         VARCHAR(10),
	   SBI_VERSION_UP         VARCHAR(10),
	   SBI_VERSION_DE         VARCHAR(10),
	   META_VERSION           VARCHAR(100),
	   ORGANIZATION           VARCHAR(20) NOT NULL,
	   SCOPE_ID 			  INT(11) NULL DEFAULT NULL,
     UNIQUE XAK1SBI_DATA_SET (LABEL, VERSION_NUM, ORGANIZATION),     
     PRIMARY KEY (DS_ID, VERSION_NUM, ORGANIZATION)
) ENGINE=InnoDB;

CREATE TABLE SBI_MENU (
		MENU_ID 			 INTEGER  NOT NULL ,
		NAME 				 VARCHAR(50), 
		DESCR 				 VARCHAR(2000),
		PARENT_ID 			 INTEGER DEFAULT 0, 
		BIOBJ_ID 			 INTEGER,
		VIEW_ICONS 			 BOOLEAN,
		HIDE_TOOLBAR 		 BOOLEAN, 
		HIDE_SLIDERS 		 BOOLEAN,
		STATIC_PAGE			 VARCHAR(45),
		BIOBJ_PARAMETERS 	 TEXT NULL,
		SUBOBJ_NAME 		 VARCHAR(50) NULL,
		SNAPSHOT_NAME 		 VARCHAR(100) NULL,
		SNAPSHOT_HISTORY 	 INTEGER NULL,
		FUNCTIONALITY 		 VARCHAR(50) NULL,
		INITIAL_PATH 		 VARCHAR(400) NULL,
		EXT_APP_URL 		 VARCHAR(1000) NULL,
		PROG 				 INTEGER NOT NULL DEFAULT 1,
        USER_IN              VARCHAR(100) NOT NULL,
        USER_UP              VARCHAR(100),
        USER_DE              VARCHAR(100),
        TIME_IN              TIMESTAMP NOT NULL,
        TIME_UP              TIMESTAMP NULL DEFAULT NULL,
        TIME_DE              TIMESTAMP NULL DEFAULT NULL,
        SBI_VERSION_IN       VARCHAR(10),
        SBI_VERSION_UP       VARCHAR(10),
        SBI_VERSION_DE       VARCHAR(10),
        META_VERSION         VARCHAR(100),
        ORGANIZATION         VARCHAR(20),     	
        PRIMARY KEY (MENU_ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_MENU_ROLE (
       MENU_ID 				INTEGER NOT NULL, 
       EXT_ROLE_ID 			INTEGER NOT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),            
       PRIMARY KEY (MENU_ID, EXT_ROLE_ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_EXPORTERS (
	  ENGINE_ID INTEGER NOT NULL,
	  DOMAIN_ID INTEGER NOT NULL,
	  DEFAULT_VALUE BOOLEAN,
	  UNIQUE XAK1SBI_EXPORTERS( ENGINE_ID, DOMAIN_ID),
	  PRIMARY KEY (ENGINE_ID, DOMAIN_ID)
) ENGINE = InnoDB;


CREATE TABLE SBI_OBJ_METADATA (
	   OBJ_META_ID 			INTEGER NOT NULL ,
       LABEL	 	        VARCHAR(20) NOT NULL,
       NAME 	            VARCHAR(40) NOT NULL,
       DESCR		        VARCHAR(100),  
       DATA_TYPE_ID			INTEGER NOT NULL,
       CREATION_DATE 	    TIMESTAMP NOT NULL, 
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),  
       UNIQUE XAK1SBI_OBJ_METADATA (LABEL, ORGANIZATION),
       PRIMARY KEY (OBJ_META_ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_OBJ_METACONTENTS (
       OBJ_METACONTENT_ID 	INTEGER  NOT NULL ,
       OBJMETA_ID 		 	INTEGER  NOT NULL ,
       BIOBJ_ID 			INTEGER  NOT NULL,
       SUBOBJ_ID 		 	INTEGER,
       BIN_ID 			 	INTEGER,
       CREATION_DATE 	 	TIMESTAMP NOT NULL,   
       LAST_CHANGE_DATE   	TIMESTAMP NOT NULL,  
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),  
       UNIQUE XAK1SBI_OBJ_METACONTENTS (OBJMETA_ID,BIOBJ_ID,SUBOBJ_ID),
       PRIMARY KEY (OBJ_METACONTENT_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_CONFIG (
	   ID 					INTEGER  NOT NULL ,
	   LABEL				VARCHAR(100) NOT NULL,
	   NAME					VARCHAR(100) NULL,
	   DESCRIPTION 			VARCHAR(500) NULL,
	   IS_ACTIVE 			BOOLEAN DEFAULT TRUE,
	   VALUE_CHECK 			VARCHAR(1000) NULL,
	   VALUE_TYPE_ID 		INTEGER NULL, 
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),
       CATEGORY             VARCHAR(50),
       UNIQUE XAK1SBI_CONFIG (LABEL),
 	PRIMARY KEY (ID)
) ENGINE=InnoDB;

 CREATE TABLE SBI_USER (
	   USER_ID 				CHAR(100) NOT NULL,
	   PASSWORD 			VARCHAR(150),
	   FULL_NAME 			VARCHAR(255),
	   ID 					INT NOT NULL,
	   DT_PWD_BEGIN 		DATETIME,
	   DT_PWD_END 			DATETIME,
	   FLG_PWD_BLOCKED 		BOOLEAN,
	   DT_LAST_ACCESS 		DATETIME,
	   IS_SUPERADMIN 		TINYINT(1) DEFAULT 0,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),     
       UNIQUE XAK1SBI_USER (USER_ID),
 	   PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_ATTRIBUTE (
	   ATTRIBUTE_NAME 		VARCHAR(255) NOT NULL,
	   DESCRIPTION 			VARCHAR(500) NOT NULL,
	   ATTRIBUTE_ID 		INT NOT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),  
       UNIQUE XAK1SBI_USER ( ATTRIBUTE_NAME, ORGANIZATION ),
 	   PRIMARY KEY (ATTRIBUTE_ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_USER_ATTRIBUTES (
	   ID 					INT NOT NULL,
	   ATTRIBUTE_ID 		INT NOT NULL,
	   ATTRIBUTE_VALUE 		VARCHAR(500),
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),     
 	   PRIMARY KEY (ID,ATTRIBUTE_ID)
) ENGINE=InnoDB;


CREATE TABLE SBI_EXT_USER_ROLES (
	   ID 					INT NOT NULL,
	   EXT_ROLE_ID 			INT NOT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),     	
 	   PRIMARY KEY (ID,EXT_ROLE_ID)
) ENGINE=InnoDB;



CREATE TABLE SBI_UDP (
	   UDP_ID	        	INTEGER  NOT NULL ,
	   TYPE_ID				INTEGER NOT NULL,
	   FAMILY_ID			INTEGER NOT NULL,
	   LABEL           		VARCHAR(20) NOT NULL,
	   NAME            		VARCHAR(40) NOT NULL,
	   DESCRIPTION     		VARCHAR(1000) NULL,
	   IS_MULTIVALUE   		BOOLEAN DEFAULT FALSE,   
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),    
       UNIQUE XAK1SBI_UDP (LABEL, ORGANIZATION),
 	   PRIMARY KEY (UDP_ID)
)ENGINE=InnoDB;
 
 
 
CREATE TABLE SBI_UDP_VALUE (
	   UDP_VALUE_ID       	INTEGER  NOT NULL ,
	   UDP_ID			   	INTEGER NOT NULL,
	   VALUE              	VARCHAR(1000) NULL,
	   PROG               	INTEGER NULL,
	   LABEL              	VARCHAR(20) NULL,
	   NAME              	VARCHAR(40) NULL,
	   FAMILY			  	VARCHAR(40) NULL,
       BEGIN_TS           	TIMESTAMP NOT NULL,
       END_TS             	TIMESTAMP NULL,
       REFERENCE_ID	   		INTEGER NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),         
 	PRIMARY KEY (UDP_VALUE_ID)
)ENGINE=InnoDB;


CREATE TABLE SBI_OBJ_PARVIEW (
  OBJ_PAR_ID INTEGER NOT NULL,
   OBJ_PAR_FATHER_ID  INTEGER NOT NULL,
   OPERATION  VARCHAR(20) NOT NULL,
   COMPARE_VALUE  VARCHAR(200) NOT NULL,
   VIEW_LABEL  VARCHAR(50),
   PROG INTEGER,
          USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),    
  PRIMARY KEY ( OBJ_PAR_ID ,  OBJ_PAR_FATHER_ID ,  OPERATION, COMPARE_VALUE )
);

CREATE TABLE SBI_I18N_MESSAGES (
  LANGUAGE_CD INTEGER NOT NULL,
  LABEL VARCHAR(200) NOT NULL,
  MESSAGE TEXT,
  USER_IN              VARCHAR(100) NOT NULL,
  USER_UP              VARCHAR(100),
  USER_DE              VARCHAR(100),
  TIME_IN              TIMESTAMP NOT NULL,
  TIME_UP              TIMESTAMP NULL DEFAULT NULL,
  TIME_DE              TIMESTAMP NULL DEFAULT NULL,
  SBI_VERSION_IN       VARCHAR(10),
  SBI_VERSION_UP       VARCHAR(10),
  SBI_VERSION_DE       VARCHAR(10),
  META_VERSION         VARCHAR(100),
  ORGANIZATION         VARCHAR(20),
  PRIMARY KEY (LANGUAGE_CD, LABEL, ORGANIZATION)
);
  
CREATE TABLE SBI_PROGRESS_THREAD (
       PROGRESS_THREAD_ID   INTEGER NOT NULL,
       USER_ID              VARCHAR(100) NOT NULL,
       PARTIAL              INTEGER,
       TOTAL        	    INTEGER,
       FUNCTION_CD         	VARCHAR(200),
       STATUS              	VARCHAR(4000),
       RANDOM_KEY			VARCHAR(4000),
       TYPE 				VARCHAR(200),	
       PRIMARY KEY (PROGRESS_THREAD_ID)
);
  
CREATE TABLE SBI_ORGANIZATIONS (
       ID     				INTEGER NOT NULL,
       NAME   				VARCHAR(200),
       THEME 				VARCHAR(100) NULL DEFAULT 'SPAGOBI.THEMES.THEME.default',
       UNIQUE XAK1SBI_ORGANIZATIONS (NAME),
       PRIMARY KEY (ID)
)ENGINE=InnoDB;

CREATE TABLE SBI_META_MODELS (
       ID                   INTEGER NOT NULL,
       NAME                 VARCHAR(100) NOT NULL,
       DESCR                VARCHAR(500) NULL,
       MODEL_LOCKED 		TINYINT(1) NULL DEFAULT NULL,
       MODEL_LOCKER			VARCHAR(100) NULL DEFAULT NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),
       CATEGORY_ID			INTEGER NULL,
       DATA_SOURCE_ID		INTEGER,
       CONSTRAINT XAK1SBI_META_MODELS UNIQUE (NAME, ORGANIZATION),
       PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_META_MODELS_VERSIONS (
        ID                   INTEGER NOT NULL,
        MODEL_ID             INTEGER NOT NULL,
        CONTENT              MEDIUMBLOB NOT NULL,
        NAME                 VARCHAR(100),  
        PROG                 INTEGER,
        CREATION_DATE        TIMESTAMP NULL DEFAULT NULL,
        CREATION_USER        VARCHAR(50) NOT NULL, 
        ACTIVE               BOOLEAN,  
        USER_IN              VARCHAR(100) NOT NULL,
        USER_UP              VARCHAR(100),
        USER_DE              VARCHAR(100),
        TIME_IN              TIMESTAMP NOT NULL,
        TIME_UP              TIMESTAMP NULL DEFAULT NULL,
        TIME_DE              TIMESTAMP NULL DEFAULT NULL,
        SBI_VERSION_IN       VARCHAR(10),
        SBI_VERSION_UP       VARCHAR(10),
        SBI_VERSION_DE       VARCHAR(10),
        META_VERSION         VARCHAR(100),
        ORGANIZATION         VARCHAR(20),
        PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_ARTIFACTS (
       ID                   INTEGER NOT NULL,
       NAME                 VARCHAR(100) NOT NULL,
       DESCR                VARCHAR(500) NULL,
       TYPE                 VARCHAR(50) NULL,
       MODEL_LOCKED         BOOLEAN NULL,
       MODEL_LOCKER         VARCHAR(100) NULL,
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),
       CONSTRAINT XAK1SBI_ARTIFACTS UNIQUE (NAME, TYPE, ORGANIZATION),
       PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_ARTIFACTS_VERSIONS (
        ID                   INTEGER NOT NULL,
        ARTIFACT_ID          INTEGER NOT NULL,
        CONTENT              MEDIUMBLOB NOT NULL,
        NAME                 VARCHAR(100),  
        PROG                 INTEGER,
        CREATION_DATE        TIMESTAMP NULL DEFAULT NULL,
        CREATION_USER        VARCHAR(50) NOT NULL, 
        ACTIVE               BOOLEAN,  
        USER_IN              VARCHAR(100) NOT NULL,
        USER_UP              VARCHAR(100),
        USER_DE              VARCHAR(100),
        TIME_IN              TIMESTAMP NOT NULL,
        TIME_UP              TIMESTAMP NULL DEFAULT NULL,
        TIME_DE              TIMESTAMP NULL DEFAULT NULL,
        SBI_VERSION_IN       VARCHAR(10),
        SBI_VERSION_UP       VARCHAR(10),
        SBI_VERSION_DE       VARCHAR(10),
        META_VERSION         VARCHAR(100),
        ORGANIZATION         VARCHAR(20),
        PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE  SBI_EXT_ROLES_CATEGORY (
  EXT_ROLE_ID 				INTEGER NOT NULL,
  CATEGORY_ID 				INTEGER NOT NULL,
  PRIMARY KEY (EXT_ROLE_ID,CATEGORY_ID),
  KEY FK_SB_EXT_ROLES_META_MODEL_CATEGORY_2 (CATEGORY_ID),
  CONSTRAINT FK_SB_EXT_ROLES_META_MODEL_CATEGORY_1 FOREIGN KEY (EXT_ROLE_ID) REFERENCES SBI_EXT_ROLES (EXT_ROLE_ID),
  CONSTRAINT FK_SB_EXT_ROLES_META_MODEL_CATEGORY_2 FOREIGN KEY (CATEGORY_ID) REFERENCES SBI_DOMAINS (VALUE_ID)
) ENGINE=InnoDB ;


CREATE TABLE  SBI_COMMUNITY(
  COMMUNITY_ID 		INT(11) NOT NULL AUTO_INCREMENT,
  NAME 				VARCHAR(200) NOT NULL,
  DESCRIPTION 		VARCHAR(350) DEFAULT NULL,
  OWNER 			CHAR(100) NOT NULL,
  FUNCT_CODE 		VARCHAR(40) DEFAULT NULL,
  CREATION_DATE 	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  LAST_CHANGE_DATE 	TIMESTAMP,
  USER_IN 			VARCHAR(100) NOT NULL,
  USER_UP 			VARCHAR(100) DEFAULT NULL,
  USER_DE 			VARCHAR(100) DEFAULT NULL,
  TIME_IN 			TIMESTAMP,
  TIME_UP 			TIMESTAMP NULL DEFAULT NULL,
  TIME_DE 			TIMESTAMP NULL DEFAULT NULL,
  SBI_VERSION_IN 	VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_UP 	VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_DE 	VARCHAR(10) DEFAULT NULL,
  META_VERSION 		VARCHAR(100) DEFAULT NULL,
  ORGANIZATION 		VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (COMMUNITY_ID)
);

CREATE TABLE SBI_COMMUNITY_USERS (
  COMMUNITY_ID 			INT(11) NOT NULL,
  USER_ID 				CHAR(100) NOT NULL,
  CREATION_DATE 		TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  LAST_CHANGE_DATE 		TIMESTAMP,
  USER_IN 				VARCHAR(100) NOT NULL,
  USER_UP 				VARCHAR(100) DEFAULT NULL,
  USER_DE 				VARCHAR(100) DEFAULT NULL,
  TIME_IN 				TIMESTAMP,
  TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
  TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
  SBI_VERSION_IN 		VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_UP 		VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_DE 		VARCHAR(10) DEFAULT NULL,
  META_VERSION		 	VARCHAR(100) DEFAULT NULL,
  ORGANIZATION 			VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (COMMUNITY_ID,USER_ID)) ;

CREATE TABLE SBI_GEO_LAYERS (
  LAYER_ID 				INT(11) NOT NULL,
  LABEL 				VARCHAR(100) NOT NULL,
  NAME 					VARCHAR(100),
  DESCR 				VARCHAR(100),
  LAYER_DEFINITION 		BLOB NOT NULL,
  TYPE 					VARCHAR(40),
  IS_BASE_LAYER 		BOOLEAN NOT NULL DEFAULT FALSE,
  GEO_CATEGORY 			INT(11),
  USER_IN 				VARCHAR(100) NOT NULL,
  USER_UP 				VARCHAR(100) DEFAULT NULL,
  USER_DE 				VARCHAR(100) DEFAULT NULL,
  TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
  TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
  SBI_VERSION_IN 		VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_UP 		VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_DE 		VARCHAR(10) DEFAULT NULL,
  META_VERSION 			VARCHAR(100) DEFAULT NULL,
  ORGANIZATION 			VARCHAR(20) DEFAULT NULL,
  UNIQUE LABEL_UNIQUE (LABEL,ORGANIZATION),
  PRIMARY KEY (LAYER_ID)
) ;

CREATE TABLE SBI_AUTHORIZATIONS (
  ID INT(11) 			NOT NULL,
  NAME 					VARCHAR(200) DEFAULT NULL,
  PRODUCT_TYPE_ID 		INT(11) NOT NULL,
  USER_IN 				VARCHAR(100) NOT NULL,
  USER_UP 				VARCHAR(100) DEFAULT NULL,
  USER_DE 				VARCHAR(100) DEFAULT NULL,
  TIME_IN 				TIMESTAMP NOT NULL,
  TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
  TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
  SBI_VERSION_IN 		VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_UP 		VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_DE 		VARCHAR(10) DEFAULT NULL,
  META_VERSION 			VARCHAR(100) DEFAULT NULL,
  ORGANIZATION 			VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (ID)
) ;

CREATE TABLE SBI_AUTHORIZATIONS_ROLES (
  AUTHORIZATION_ID 		INT(11) NOT NULL,
  ROLE_ID 				INT(11) NOT NULL,
  USER_IN 				VARCHAR(100) NOT NULL,
  USER_UP 				VARCHAR(100) DEFAULT NULL,
  USER_DE 				VARCHAR(100) DEFAULT NULL,
  TIME_IN 				TIMESTAMP NOT NULL,
  TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
  TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
  SBI_VERSION_IN		VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_UP 		VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_DE 		VARCHAR(10) DEFAULT NULL,
  META_VERSION 			VARCHAR(100) DEFAULT NULL,
  ORGANIZATION 			VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (AUTHORIZATION_ID,ROLE_ID )
  ) ;

CREATE TABLE SBI_ORGANIZATION_DATASOURCE (
  DATASOURCE_ID 		INT(11) NOT NULL,
  ORGANIZATION_ID 		INT(11) NOT NULL,
  USER_IN 				VARCHAR(100) NOT NULL,
  USER_UP 				VARCHAR(100) DEFAULT NULL,
  USER_DE 				VARCHAR(100) DEFAULT NULL,
  TIME_IN 				TIMESTAMP,
  TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
  TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
  SBI_VERSION_IN 		VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_UP 		VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_DE 		VARCHAR(10) DEFAULT NULL,
  META_VERSION 			VARCHAR(100) DEFAULT NULL,
  ORGANIZATION 			VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (DATASOURCE_ID,ORGANIZATION_ID ) 
) ;

CREATE TABLE SBI_TRIGGER_PAUSED (
	   ID 					INTEGER  NOT NULL ,
       TRIGGER_NAME	 	    VARCHAR(80) NOT NULL,
       TRIGGER_GROUP 	    VARCHAR(80) NOT NULL,
       JOB_NAME 	        VARCHAR(80) NOT NULL,
       JOB_GROUP 	        VARCHAR(80) NOT NULL,	   	   
       USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),  
       UNIQUE XAK1SBI_TRIGGER_PAUSED (TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP),
       PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_CACHE_ITEM (
	   SIGNATURE			VARCHAR(100) NOT NULL,
	   NAME					TEXT NOT NULL,
	   TABLE_NAME 			VARCHAR(100) NOT NULL,
	   DIMENSION 			NUMERIC NULL,
	   CREATION_DATE 		DATETIME NULL,
	   LAST_USED_DATE 		DATETIME NULL,
       PROPERTIES			TEXT NULL,
	   USER_IN              VARCHAR(100) NOT NULL,
       USER_UP              VARCHAR(100),
       USER_DE              VARCHAR(100),
       TIME_IN              TIMESTAMP NOT NULL,
       TIME_UP              TIMESTAMP NULL DEFAULT NULL,
       TIME_DE              TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN       VARCHAR(10),
       SBI_VERSION_UP       VARCHAR(10),
       SBI_VERSION_DE       VARCHAR(10),
       META_VERSION         VARCHAR(100),
       ORGANIZATION         VARCHAR(20),
       UNIQUE XAK1SBI_CACHE_ITEM (TABLE_NAME),
	   PRIMARY KEY (SIGNATURE)
) ENGINE=InnoDB;

CREATE TABLE SBI_OBJ_DATA_SET (
    BIOBJ_DS_ID 		INT(11) NOT NULL,
    BIOBJ_ID 			INT(11) NOT NULL,
    DS_ID 				INT(11) NOT NULL,
    IS_DETAIL 			BOOLEAN DEFAULT FALSE, 
    USER_IN 			VARCHAR(100) NOT NULL,
    USER_UP 			VARCHAR(100) DEFAULT NULL,
    USER_DE 			VARCHAR(100) DEFAULT NULL,
    TIME_IN 			TIMESTAMP,
    TIME_UP 			TIMESTAMP NULL DEFAULT NULL,
    TIME_DE 			TIMESTAMP NULL DEFAULT NULL,
    SBI_VERSION_IN 		VARCHAR(10) DEFAULT NULL,
    SBI_VERSION_UP 		VARCHAR(10) DEFAULT NULL,
    SBI_VERSION_DE 		VARCHAR(10) DEFAULT NULL,
    META_VERSION 		VARCHAR(100) DEFAULT NULL,
    ORGANIZATION 		VARCHAR(20) DEFAULT NULL,
    CONSTRAINT XAK1SBI_OBJ_DATA_SET UNIQUE (BIOBJ_ID ,DS_ID, ORGANIZATION),
  PRIMARY KEY (BIOBJ_DS_ID)
);


CREATE TABLE SBI_FEDERATION_DEFINITION (
	   FEDERATION_ID 		INTEGER NOT NULL,
  	   LABEL 				VARCHAR(100) NOT NULL,
       NAME 				VARCHAR(100) DEFAULT NULL,
       DESCRIPTION 			VARCHAR(100) DEFAULT NULL,
       RELATIONSHIPS 		TEXT,
       DEGENERATED			BOOLEAN,
       USER_IN 				VARCHAR(100) NOT NULL,
       USER_UP 				VARCHAR(100),
       USER_DE 				VARCHAR(100),
       TIME_IN 				TIMESTAMP NOT NULL,
       TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
       TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
       SBI_VERSION_IN 		VARCHAR(10),
       SBI_VERSION_UP 		VARCHAR(10),
       SBI_VERSION_DE 		VARCHAR(10),
       META_VERSION 		VARCHAR(100),
       ORGANIZATION 		VARCHAR(20),
  	   PRIMARY KEY (FEDERATION_ID)
) ;

CREATE TABLE SBI_DATA_SET_FEDERATION (
       FEDERATION_ID 		INTEGER NOT NULL,
       DS_ID 				INTEGER NOT NULL,
       VERSION_NUM 			INTEGER NOT NULL,
       ORGANIZATION 		VARCHAR(20) NOT NULL,
       PRIMARY KEY (FEDERATION_ID,DS_ID,VERSION_NUM,ORGANIZATION)       
) ;

-- tables for different knowage product types
CREATE TABLE SBI_PRODUCT_TYPE (
	PRODUCT_TYPE_ID 		INT(11) NOT NULL,
	LABEL 					VARCHAR(40) NOT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY(PRODUCT_TYPE_ID),
	UNIQUE INDEX XAK1SBI_PRODUCT_TYPE (LABEL, ORGANIZATION)
) ENGINE=InnoDB ;


-- mapping table between organizations (tenants) and product types
CREATE TABLE SBI_ORGANIZATION_PRODUCT_TYPE (
	PRODUCT_TYPE_ID 		INT(11) NOT NULL,
	ORGANIZATION_ID 		INT(11) NOT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY(PRODUCT_TYPE_ID, ORGANIZATION_ID)
) ENGINE=InnoDB ;


-- create: GLOSSARY tables
CREATE TABLE SBI_GL_WORD (
	WORD_ID 				INTEGER NOT NULL ,
	WORD 					VARCHAR (100),
	DESCR 					VARCHAR (500),
	FORMULA 				VARCHAR (500),
	STATE 					INT(11) DEFAULT NULL,
	CATEGORY 				INT(11) DEFAULT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY(WORD_ID)
) ENGINE=InnoDB ; 

CREATE TABLE SBI_GL_ATTRIBUTES (
	ATTRIBUTE_ID 			INTEGER NOT NULL ,
	ATTRIBUTE_CD 			VARCHAR (30),
	ATTRIBUTE_NM 			VARCHAR (100),
	ATTRIBUTE_DS 			VARCHAR (500),
	MANDATORY_FL 			INTEGER,
	ATTRIBUTES_TYPE 		VARCHAR (50),
	DOMAIN 					VARCHAR (500),
	FORMAT 					VARCHAR (30),
	DISPLAY_TP 				VARCHAR (30),
	ATTRIBUTES_ORDER 		VARCHAR (30),
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY(ATTRIBUTE_ID) 
) ENGINE=InnoDB ; 

CREATE TABLE SBI_GL_WORD_ATTR (
	WORD_ID 				INTEGER NOT NULL ,
	ATTRIBUTE_ID 			INTEGER NOT NULL ,
	ATTR_VALUE 				VARCHAR (500),
	ATTR_ORDER 				INTEGER,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY(WORD_ID,ATTRIBUTE_ID) 
) ENGINE=InnoDB ; 

CREATE TABLE SBI_GL_REFERENCES (
	WORD_ID					INTEGER NOT NULL ,
	REF_WORD_ID 			INTEGER NOT NULL ,
	REFERENCES_ORDER 		INTEGER,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY(WORD_ID,REF_WORD_ID) 
) ENGINE=InnoDB ; 

CREATE TABLE SBI_GL_GLOSSARY (
	GLOSSARY_ID 			INTEGER NOT NULL ,
	GLOSSARY_CD 			VARCHAR (30),
	GLOSSARY_NM 			VARCHAR (100),
	GLOSSARY_DS 			VARCHAR (500),
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY(GLOSSARY_ID) 
) ENGINE=InnoDB ; 

CREATE TABLE SBI_GL_CONTENTS (
	CONTENT_ID 				INTEGER NOT NULL ,
	GLOSSARY_ID 			INTEGER NOT NULL ,
	PARENT_ID				INTEGER,
	CONTENT_CD 				VARCHAR (30),
	CONTENT_NM 				VARCHAR (100),
	CONTENT_DS 				VARCHAR (500),
	DEPTH 					INTEGER,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY(CONTENT_ID) 
) ENGINE=InnoDB ; 


CREATE TABLE SBI_GL_WLIST (
	CONTENT_ID 				INTEGER NOT NULL ,
	WORD_ID 				INTEGER NOT NULL ,
	WORD_ORDER 				INTEGER,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY(CONTENT_ID,WORD_ID) 
) ENGINE=InnoDB ; 

CREATE TABLE SBI_PRODUCT_TYPE_ENGINE (
	PRODUCT_TYPE_ID 		INT(11) NOT NULL,
	ENGINE_ID 				INT(11) NOT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (PRODUCT_TYPE_ID, ENGINE_ID)
) ENGINE=InnoDB ; 

CREATE TABLE SBI_IMAGES (
	IMAGE_ID 				INT(11) NOT NULL,
	NAME 					VARCHAR(100) NOT NULL,
	CONTENT 				MEDIUMBLOB NOT NULL,
	CONTENT_ICO 			BLOB,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (IMAGE_ID),
	UNIQUE KEY NAME_UNIQUE (NAME)
) ENGINE=InnoDB ; 


CREATE TABLE SBI_GL_DOCWLIST (
	WORD_ID 				INT(11) NOT NULL,
	BIOBJ_ID 				INT(11) NOT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (BIOBJ_ID, WORD_ID)
) ENGINE=InnoDB ; 


CREATE TABLE SBI_GL_DATASETWLIST (
	WORD_ID 					INT(11) NOT NULL,
	DS_ID 					INT(11) NOT NULL,
	COLUMN_NAME 				VARCHAR(100) NOT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	 VERSION_NUM INT(11) DEFAULT NULL,
	 PRIMARY KEY (WORD_ID,DS_ID,COLUMN_NAME)
) ENGINE=InnoDB ; 

 
CREATE TABLE SBI_GL_BNESS_CLS_WLIST (
	WORD_ID 				INT(11) NOT NULL,
	BC_ID 					INT(11) NOT NULL,
	COLUMN_NAME 			VARCHAR(100) NOT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (BC_ID,WORD_ID,COLUMN_NAME)
) ENGINE=InnoDB ;

CREATE TABLE SBI_GL_TABLE_WLIST (
	WORD_ID 				INT(11) NOT NULL,
	TABLE_ID 				INT(11) NOT NULL,
	COLUMN_NAME				VARCHAR(100) NOT NULL,
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (TABLE_ID,WORD_ID,COLUMN_NAME)
) ENGINE=InnoDB ; 

CREATE TABLE SBI_WS_EVENT (
	ID 						INT(11) NOT NULL,
	EVENT_NAME 				VARCHAR(80) NOT NULL,
	IP_COME_FROM 			VARCHAR(15) NULL,
	INCOMING_DATE 			DATETIME NULL,
	TAKE_CHARGE_DATE 		DATETIME NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (id)
	) ENGINE=InnoDB ; 

/* CROSS NAVIGATION */
CREATE TABLE SBI_CROSS_NAVIGATION (
	ID 						INT(11) NOT NULL,
	NAME 					VARCHAR(40) NOT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (ID)
) ENGINE=InnoDB ; 

CREATE TABLE SBI_CROSS_NAVIGATION_PAR (
	ID 						INT(11) NOT NULL,
	CN_ID 					INT(11) NOT NULL,
	FROM_KEY 				INT(11) NOT NULL,
	TO_KEY 					INT(11) NOT NULL,
	FROM_TYPE 				INT(11) NOT NULL,
	FIXED_VALUE 			VARCHAR(100) NULL,
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (ID)
) ENGINE=InnoDB ; 

/* OUTPUT PARAMETER*/
CREATE TABLE SBI_OUTPUT_PARAMETER (
	ID 						INT(11) NOT NULL,
	BIOBJ_ID				INT(11) NULL DEFAULT NULL,
	PAR_TYPE_ID 			INT(11) NOT NULL,
	LABEL 					VARCHAR(40) NOT NULL,
	FORMAT_CODE 			VARCHAR(20) NULL DEFAULT NULL,
	FORMAT_VALUE 			VARCHAR(20) NULL DEFAULT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (ID)
) ENGINE=InnoDB ; 
	

CREATE TABLE SBI_TIMESPAN (
	ID 						INT(11) NOT NULL,
	NAME 					VARCHAR(45) NOT NULL,
	TYPE					VARCHAR(45) NOT NULL,
	CATEGORY 				VARCHAR(45) DEFAULT NULL,
	STATIC_FILTER 			TINYINT(1) DEFAULT 0,
	DEFINITION 				VARCHAR(4000) DEFAULT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (ID)
) ENGINE=InnoDB ; 


CREATE TABLE SBI_ROLES_LAYERS (
	ID_LAYER 				INT(11) NOT NULL,
	ID_ROLE 				INT(11) NOT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (ID_LAYER,ID_ROLE)
) ENGINE=InnoDB ; 


CREATE TABLE SBI_KPI_ALIAS (
	ID 						INT(11) NOT NULL,
	NAME 					VARCHAR(40) NOT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (ID)
) ENGINE=InnoDB ; 

CREATE TABLE SBI_KPI_RULE (
	ID 						INT(11) NOT NULL,
	VERSION					INT(11) NOT NULL,
	NAME 					VARCHAR(40) NOT NULL,
	DEFINITION 				VARCHAR(1024) NOT NULL,
	DATASOURCE_ID 			INT(11) NOT NULL, 
	ACTIVE                  CHAR(1) DEFAULT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (ID,VERSION)
) ENGINE=InnoDB ; 

CREATE TABLE SBI_KPI_KPI (
	ID 						INT(11) NOT NULL,
	VERSION					INT(11) NOT NULL,
	NAME 					VARCHAR(40) NOT NULL,
	DEFINITION 				VARCHAR(1024) NOT NULL,
	CARDINALITY 			VARCHAR(4000) NOT NULL,
	PLACEHOLDER 			VARCHAR(1024) NULL,
	CATEGORY_ID 			INT(11) NULL,
	THRESHOLD_ID 			INT(11) NOT NULL,
	ACTIVE                  CHAR(1) DEFAULT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (ID,VERSION)
) ENGINE=InnoDB ; 


CREATE TABLE SBI_KPI_PLACEHOLDER (
	ID 						INT(11) NOT NULL,
	NAME 					VARCHAR(40) NOT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (ID)
) ENGINE=InnoDB ; 

CREATE TABLE SBI_KPI_THRESHOLD (
	ID 						INT(11) NOT NULL,
	NAME 					VARCHAR(40) DEFAULT NULL,
	DESCRIPTION 			VARCHAR(1024),
	TYPE_ID 				INT(11) DEFAULT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (ID)
) ENGINE=InnoDB ; 

CREATE TABLE SBI_KPI_THRESHOLD_VALUE (
	ID 						INT(11) NOT NULL,
	THRESHOLD_ID 			INT(11) NOT NULL, 
	POSITION 				INT(11) DEFAULT NULL,
	LABEL 					VARCHAR(40) DEFAULT NULL,
	MIN_VALUE 				DECIMAL(22,0) DEFAULT NULL,
	INCLUDE_MIN 			CHAR(1) DEFAULT NULL,
	MAX_VALUE 				DECIMAL(22,0) DEFAULT NULL,
	INCLUDE_MAX 			CHAR(1) DEFAULT NULL,
	COLOR 					VARCHAR(20) DEFAULT NULL,
	SEVERITY_ID 			INT(11) DEFAULT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (ID)
) ENGINE=InnoDB ; 

CREATE TABLE SBI_KPI_RULE_OUTPUT (
	ID 						INT(11) NOT NULL,
	RULE_ID 				INT(11) NOT NULL,
	RULE_VERSION			INT(11) NOT NULL,
	TYPE_ID 				INT(11) NOT NULL,
	ALIAS_ID 				INT(11) NOT NULL,
	CATEGORY_ID 			INT(11) NULL,
	HIERARCHY_ID 			INT(11) NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (ID)
) ENGINE=InnoDB ; 

CREATE TABLE SBI_KPI_KPI_RULE_OUTPUT (
  KPI_ID 					INT(11) NOT NULL,
  KPI_VERSION 				INT(11) NOT NULL,
  RULE_OUTPUT_ID 			INT(11) NOT NULL,
  PRIMARY KEY (KPI_ID,KPI_VERSION,RULE_OUTPUT_ID)
) ENGINE=InnoDB ;

CREATE TABLE SBI_KPI_RULE_PLACEHOLDER (
	RULE_ID 				INT(11) NOT NULL,
	RULE_VERSION			INT(11) NOT NULL,
	PLACEHOLDER_ID 			INT(11) NOT NULL,
	
	PRIMARY KEY (RULE_ID,RULE_VERSION,PLACEHOLDER_ID)
) ENGINE=InnoDB ; 

CREATE TABLE SBI_KPI_TARGET (
	TARGET_ID				INT(11) NOT NULL,
	NAME 					VARCHAR(40),
	CATEGORY_ID 			INT(11) NULL,
	START_VALIDITY_DAY		TIMESTAMP NULL DEFAULT NULL,
	END_VALIDITY_DAY		TIMESTAMP NULL DEFAULT NULL,
	
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (TARGET_ID)
) ENGINE=InnoDB ; 

CREATE TABLE SBI_KPI_TARGET_VALUE (
	TARGET_ID			INT(11) NOT NULL,
	KPI_ID 				INT(11) NOT NULL,
	KPI_VERSION			INT(11) NOT NULL,
	TARGET_VALUE		DOUBLE,
	
	USER_IN 			VARCHAR(100) NOT NULL,
	USER_UP 			VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 			VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 			TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 			TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 			TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 		VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 		VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 		VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 		VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 		VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (TARGET_ID,KPI_ID,KPI_VERSION)
) ENGINE=InnoDB ; 

CREATE TABLE SBI_KPI_EXECUTION_KPI (
    KPI_ID                 	INT(11) NOT NULL,
    KPI_VERSION            	INT(11) NOT NULL,
    EXECUTION_ID        	INT(11) NOT NULL,
    
    PRIMARY KEY (KPI_ID, KPI_VERSION, EXECUTION_ID)
) ENGINE=INNODB ;

CREATE TABLE SBI_KPI_SCORECARD_KPI (
    KPI_ID                 INT(11) NOT NULL,
    KPI_VERSION            INT(11) NOT NULL,
    SCORECARD_ID         INT(11) NOT NULL,
    
    PRIMARY KEY (KPI_ID, KPI_VERSION, SCORECARD_ID)
) ENGINE=INNODB ;

CREATE TABLE SBI_KPI_EXECUTION_FILTER (
  	PLACEHOLDER_ID 		INT(11) NOT NULL,
  	EXECUTION_ID 		INT(11) NOT NULL,
  	KPI_ID 				INT(11) NOT NULL,
  	KPI_VERSION 		INT(11) NOT NULL,
  	TYPE_ID 			INT(11) DEFAULT NULL,
  	VALUE 				VARCHAR(40) DEFAULT NULL,
	
	USER_IN 			VARCHAR(100) NOT NULL,
	USER_UP 			VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 			VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 			TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 			TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 			TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 		VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 		VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 		VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 		VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 		VARCHAR(20) NULL DEFAULT NULL,
	
  	PRIMARY KEY (PLACEHOLDER_ID,EXECUTION_ID,KPI_ID,KPI_VERSION)
) ENGINE=INNODB ;

CREATE TABLE SBI_KPI_EXECUTION (
  	ID 					INT(11) NOT NULL,
  	NAME				VARCHAR(40) NOT NULL,
	START_DATE 			TIMESTAMP NULL DEFAULT NULL,
  	END_DATE 			TIMESTAMP NULL DEFAULT NULL,
  	DELTA 				CHAR(1) DEFAULT NULL,
	USER_IN 			VARCHAR(100) NOT NULL,
	USER_UP 			VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 			VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 			TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 			TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 			TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 		VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 		VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 		VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 		VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 		VARCHAR(20) NULL DEFAULT NULL,
	
  	PRIMARY KEY (ID)
) ENGINE=INNODB ;

CREATE TABLE SBI_KPI_SCORECARD (
  	ID 					INT(11) NOT NULL,
  	PARENT_ID 			INT(11) DEFAULT NULL,
  	NAME 				VARCHAR(40) NOT NULL,
  	CRITERION_ID 		INT(11) DEFAULT NULL,
  	OPTIONS 			VARCHAR(1000) DEFAULT NULL,
	
	USER_IN 			VARCHAR(100) NOT NULL,
	USER_UP 			VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 			VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 			TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 			TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 			TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 		VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 		VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 		VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 		VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 		VARCHAR(20) NULL DEFAULT NULL,
	
  	PRIMARY KEY (ID)
) ENGINE=INNODB;

CREATE TABLE SBI_KPI_VALUE ( 
  	ID 					INTEGER NOT NULL, 
  	KPI_ID 				INTEGER NOT NULL,
  	KPI_VERSION 		INTEGER NOT NULL,
  	LOGICAL_KEY 		VARCHAR(4096) NOT NULL,
  	TIME_RUN 			TIMESTAMP NOT NULL,
  	COMPUTED_VALUE 		DOUBLE NOT NULL,
  	MANUAL_VALUE 		DOUBLE,
    MANUAL_NOTE			VARCHAR(1000) NULL,
  	THE_DAY 			VARCHAR(3) NOT NULL,
  	THE_WEEK 			VARCHAR(3) NOT NULL,
  	THE_MONTH 			VARCHAR(3) NOT NULL,
  	THE_QUARTER 		VARCHAR(3) NOT NULL,
  	THE_YEAR 			VARCHAR(4) NOT NULL,
    STATE				CHAR(1) NOT NULL DEFAULT '0',
    
    PRIMARY KEY (ID)
) ENGINE=INNODB;

CREATE TABLE SBI_KPI_VALUE_EXEC_LOG ( 
	ID					INTEGER NOT NULL, 
	SCHEDULER_ID		INTEGER NOT NULL,
	TIME_RUN			TIMESTAMP NOT NULL,
	OUTPUT				BLOB NULL NULL,
	ERROR_COUNT			INTEGER NOT NULL,
	SUCCESS_COUNT		INTEGER NOT NULL,
	TOTAL_COUNT			INTEGER NOT NULL,
	
	PRIMARY KEY (ID)
) ENGINE=INNODB;

CREATE TABLE SBI_META_SOURCE (
	SOURCE_ID 				INT(11) NOT NULL,
	NAME 					VARCHAR(100) NOT NULL,
	TYPE 					VARCHAR(100) NOT NULL,
	URL 					VARCHAR(100) NULL,
	LOCATION 				VARCHAR(100) NULL,
	SOURCE_SCHEMA 			VARCHAR(100) NULL,
	SOURCE_CATALOGUE    	VARCHAR(100) NULL,
	ROLE                    VARCHAR(100) NULL,
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (SOURCE_ID)
) ENGINE=InnoDB ;

CREATE TABLE SBI_META_TABLE  (
	TABLE_ID 				INT(11) NOT NULL,
	SOURCE_ID 				INT(11) NOT NULL,
	NAME 					VARCHAR(100) NOT NULL,
	DELETED					BOOLEAN NOT NULL DEFAULT FALSE,
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (TABLE_ID)
) ENGINE=InnoDB ;

CREATE TABLE SBI_META_TABLE_COLUMN  (
	COLUMN_ID 				INT(11) NOT NULL,
	TABLE_ID 				INT(11) NOT NULL,
	NAME 					VARCHAR(100) NOT NULL,
	TYPE					VARCHAR(100) NOT NULL,
	DELETED					BOOLEAN NOT NULL DEFAULT FALSE,
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (COLUMN_ID)
) ENGINE=InnoDB ;

CREATE TABLE SBI_META_BC  (
	BC_ID 					INT(11) NOT NULL,
	MODEL_ID				INT(11) NOT NULL,
	NAME					VARCHAR(100) NOT NULL,
	UNIQUE_NAME				VARCHAR(100) NULL,
	DELETED					BOOLEAN NOT NULL DEFAULT FALSE,
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (BC_ID)
) ENGINE=InnoDB ;

CREATE TABLE SBI_META_BC_ATTRIBUTE  (
	ATTRIBUTE_ID 			INT(11) NOT NULL,
	BC_ID					INT(11) NULL,
	COLUMN_ID				INT(11) NULL,
	NAME					VARCHAR(100) NOT NULL,
	TYPE					VARCHAR(100) NULL,
	DELETED					BOOLEAN NOT NULL DEFAULT FALSE,
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (ATTRIBUTE_ID)
) ENGINE=InnoDB ;

CREATE TABLE SBI_META_TABLE_BC  (
	TABLE_ID 				INT(11) NOT NULL,
	BC_ID 					INT(11) NOT NULL,
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (TABLE_ID, BC_ID)
) ENGINE=InnoDB ;

CREATE TABLE SBI_META_DS_BC  (
	DS_ID 					INT(11) NOT NULL,
	VERSION_NUM				INT(11) NOT NULL,
	BC_ID 					INT(11) NOT NULL,
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20)  NOT NULL,
	
	PRIMARY KEY (DS_ID,VERSION_NUM,ORGANIZATION,BC_ID)
) ENGINE=InnoDB ;


CREATE TABLE SBI_META_OBJ_DS  (
	DS_ID 					INT(11) NOT NULL,
	VERSION_NUM				INT(11) NOT NULL,
	OBJ_ID 					INT(11) NOT NULL,
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20)  NOT NULL,
	
	PRIMARY KEY (DS_ID,VERSION_NUM,ORGANIZATION,OBJ_ID)
) ENGINE=InnoDB ;

CREATE TABLE SBI_META_JOB  (
	JOB_ID 					INT(11) NOT NULL,
	NAME					VARCHAR(100) NOT NULL,
	DELETED					BOOLEAN NOT NULL DEFAULT FALSE,
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (JOB_ID)
) ENGINE=InnoDB ;


CREATE TABLE SBI_META_JOB_SOURCE  (
	JOB_ID					INT(11) NOT NULL,
	SOURCE_ID				INT(11) NOT NULL,
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (JOB_ID, SOURCE_ID)
) ENGINE=InnoDB ;

CREATE TABLE SBI_META_JOB_TABLE  (
	JOB_ID					INT(11) NOT NULL,
	TABLE_ID				INT(11) NOT NULL,
	ROLE					VARCHAR(100) NULL,
	USER_IN 				VARCHAR(100) NOT NULL,
	USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
	USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
	TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
	TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
	SBI_VERSION_IN 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_UP 			VARCHAR(10) NULL DEFAULT NULL,
	SBI_VERSION_DE 			VARCHAR(10) NULL DEFAULT NULL,
	META_VERSION 			VARCHAR(100) NULL DEFAULT NULL,
	ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
	
	PRIMARY KEY (JOB_ID,TABLE_ID)
) ENGINE=InnoDB ;

CREATE TABLE SBI_META_DATASET_REL (
  DS_TABLE_REL_ID  		INT(11) NOT NULL,
  DATASET_ID  			INT(11) NOT NULL,
  TABLE_ID  			INT(11) NOT NULL,
  USER_IN  				VARCHAR(100) NOT NULL,
  USER_UP  				VARCHAR(100) DEFAULT NULL,
  USER_DE  				VARCHAR(100) DEFAULT NULL,
  TIME_IN  				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  TIME_UP  				TIMESTAMP NULL DEFAULT NULL,
  TIME_DE  				TIMESTAMP NULL DEFAULT NULL,
  SBI_VERSION_IN  		VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_UP 		VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_DE  		VARCHAR(10) DEFAULT NULL,
  META_VERSION  		VARCHAR(100) DEFAULT NULL,
  ORGANIZATION  		VARCHAR(20) DEFAULT NULL,
 PRIMARY KEY ( DS_TABLE_REL_ID )
) ENGINE=INNODB;

CREATE TABLE SBI_META_DOCUMENT_REL (
  DOC_TABLE_REL_ID  	INT(11) NOT NULL,
  DOCUMENT_ID  			INT(11) NOT NULL,
  TABLE_ID  			INT(11) NOT NULL,
  USER_IN  				VARCHAR(100) NOT NULL,
  USER_UP 				VARCHAR(100) DEFAULT NULL,
  USER_DE  				VARCHAR(100) DEFAULT NULL,
  TIME_IN  				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  TIME_UP  				TIMESTAMP NULL DEFAULT NULL,
  TIME_DE  				TIMESTAMP NULL DEFAULT NULL,
  SBI_VERSION_IN  		VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_UP 		VARCHAR(10) DEFAULT NULL,
  SBI_VERSION_DE  		VARCHAR(10) DEFAULT NULL,
  META_VERSION  		VARCHAR(100) DEFAULT NULL,
  ORGANIZATION  		VARCHAR(20) DEFAULT NULL,
 PRIMARY KEY ( DOC_TABLE_REL_ID )
) ENGINE=INNODB;


CREATE TABLE SBI_ALERT_ACTION (
	ID 					INT(11) NOT NULL,
    NAME 				VARCHAR(40) NOT NULL,
    CLASS_NAME 			VARCHAR(200) NOT NULL,
    TEMPLATE			VARCHAR(200) NOT NULL,
	USER_IN 			VARCHAR(100) NOT NULL,
	USER_UP 			VARCHAR(100),
	USER_DE 			VARCHAR(100),
	TIME_IN 			TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 			TIMESTAMP,
	TIME_DE 			TIMESTAMP,
	SBI_VERSION_IN 		VARCHAR(10),
	SBI_VERSION_UP 		VARCHAR(10),
	SBI_VERSION_DE 		VARCHAR(10),
	META_VERSION 		VARCHAR(100),
	ORGANIZATION 		VARCHAR(20),
	PRIMARY KEY(ID)
) ENGINE=InnoDB ;

CREATE TABLE SBI_ALERT_LISTENER (
	ID 					INT(11) NOT NULL,
    NAME 				VARCHAR(40) NOT NULL,
    CLASS_NAME 			VARCHAR(200) NOT NULL,
    TEMPLATE			VARCHAR(200) NOT NULL,
	USER_IN 			VARCHAR(100) NOT NULL,
	USER_UP 			VARCHAR(100),
	USER_DE 			VARCHAR(100),
	TIME_IN 			TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 			TIMESTAMP,
	TIME_DE 			TIMESTAMP,
	SBI_VERSION_IN 		VARCHAR(10),
	SBI_VERSION_UP 		VARCHAR(10),
	SBI_VERSION_DE 		VARCHAR(10),
	META_VERSION 		VARCHAR(100),
	ORGANIZATION 		VARCHAR(20),
	PRIMARY KEY(ID)
) ENGINE=InnoDB ;

CREATE TABLE SBI_ALERT (
	ID 					INT(11) NOT NULL,
	NAME 				VARCHAR(40) NOT NULL,
	SINGLE_EXECUTION    CHAR(1),
	EVENT_BEFORE_TRIGGER_ACTION INT(11),
	LISTENER_ID			INT(11) NOT NULL,
	LISTENER_OPTIONS    VARCHAR(4000),
	USER_IN 			VARCHAR(100) NOT NULL,
	USER_UP 			VARCHAR(100),
	USER_DE 			VARCHAR(100),
	TIME_IN 			TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 			TIMESTAMP,
	TIME_DE 			TIMESTAMP,
	SBI_VERSION_IN 		VARCHAR(10),
	SBI_VERSION_UP 		VARCHAR(10),
	SBI_VERSION_DE 		VARCHAR(10),
	META_VERSION 		VARCHAR(100),
	ORGANIZATION 		VARCHAR(20),
	PRIMARY KEY(ID)
) ENGINE=InnoDB ;

CREATE TABLE SBI_ALERT_LOG (
	ID					INT(11) NOT NULL,
    LISTENER_ID		 	INT(11) NOT NULL,
    ACTION_ID			INT(11),
    LISTENER_PARAMS		VARCHAR(4000),
    ACTION_PARAMS		VARCHAR(4000),
    DETAIL				VARCHAR(4000),
    USER_IN 			VARCHAR(100) NOT NULL,
	USER_UP 			VARCHAR(100),
	USER_DE 			VARCHAR(100),
	TIME_IN 			TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	TIME_UP 			TIMESTAMP,
	TIME_DE 			TIMESTAMP,
	SBI_VERSION_IN 		VARCHAR(10),
	SBI_VERSION_UP 		VARCHAR(10),
	SBI_VERSION_DE 		VARCHAR(10),
	META_VERSION 		VARCHAR(100),
	ORGANIZATION 		VARCHAR(20),
    PRIMARY KEY(ID)
) ENGINE=InnoDB ;


CREATE TABLE SBI_CATALOG_FUNCTION (
  FUNCTION_ID 			INTEGER NOT NULL,
  NAME 					VARCHAR(100) NOT NULL,
  DESCRIPTION 			TEXT NOT NULL,
  LANGUAGE 				VARCHAR(100) NOT NULL,
  SCRIPT 				TEXT NOT NULL,
  USER_IN 				VARCHAR(100) NOT NULL,
  USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
  USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
  TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
  TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
  SBI_VERSION_IN 		VARCHAR(10) NULL DEFAULT NULL,
  SBI_VERSION_UP 		VARCHAR(10) NULL DEFAULT NULL,
  SBI_VERSION_DE 		VARCHAR(10) NULL DEFAULT NULL,
  ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (FUNCTION_ID)
  )  ENGINE=InnoDB;
  
CREATE TABLE SBI_FUNCTION_INPUT_VARIABLE (
  FUNCTION_ID 			INTEGER NOT NULL,
  VAR_NAME 				VARCHAR(100) NOT NULL,
  VAR_VALUE 			VARCHAR(100) NOT NULL,
  USER_IN 				VARCHAR(100) NOT NULL,
  USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
  USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
  TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
  TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
  SBI_VERSION_IN 		VARCHAR(10) NULL DEFAULT NULL,
  SBI_VERSION_UP 		VARCHAR(10) NULL DEFAULT NULL,
  SBI_VERSION_DE 		VARCHAR(10) NULL DEFAULT NULL,
  ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (FUNCTION_ID,VAR_NAME)
  ) ENGINE=InnoDB;  

CREATE TABLE SBI_FUNCTION_INPUT_DATASET (
  FUNCTION_ID 			INTEGER NOT NULL,
  DS_ID 				INTEGER NOT NULL,
  USER_IN 				VARCHAR(100) NOT NULL,
  USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
  USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
  TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
  TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
  SBI_VERSION_IN 		VARCHAR(10) NULL DEFAULT NULL,
  SBI_VERSION_UP 		VARCHAR(10) NULL DEFAULT NULL,
  SBI_VERSION_DE 		VARCHAR(10) NULL DEFAULT NULL, 
  ORGANIZATION 			VARCHAR(20) NULL DEFAULT  NULL,
  PRIMARY KEY (FUNCTION_ID, DS_ID)
  ) ENGINE=InnoDB;  
  
CREATE TABLE SBI_FUNCTION_OUTPUT (
 FUNCTION_ID 			INTEGER NOT NULL,
 LABEL 					VARCHAR(100) NOT NULL,
 OUT_TYPE 				INTEGER NOT NULL,
 USER_IN 				VARCHAR(100) NOT NULL,
 USER_UP 				VARCHAR(100) NULL DEFAULT NULL,
 USER_DE 				VARCHAR(100) NULL DEFAULT NULL,
 TIME_IN 				TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 TIME_UP 				TIMESTAMP NULL DEFAULT NULL,
 TIME_DE 				TIMESTAMP NULL DEFAULT NULL,
 SBI_VERSION_IN 		VARCHAR(10) NULL DEFAULT NULL,
 SBI_VERSION_UP 		VARCHAR(10) NULL DEFAULT NULL,
 SBI_VERSION_DE 		VARCHAR(10) NULL DEFAULT NULL,
 ORGANIZATION 			VARCHAR(20) NULL DEFAULT NULL,
 PRIMARY KEY (FUNCTION_ID,LABEL)
 )  ENGINE=InnoDB;
 
 CREATE TABLE SBI_FUNCTIONS_ORGANIZER (
   FUNCT_ID             INTEGER NOT NULL ,
   PARENT_FUNCT_ID      INTEGER NULL,
   NAME                 VARCHAR(40) NULL,
   DESCR                VARCHAR(160) NULL,
   PATH                 VARCHAR(400) NULL,
   CODE                 VARCHAR(40) NOT NULL,
   PROG 				INTEGER NOT NULL,
   USER_IN              VARCHAR(100) NOT NULL,
   USER_UP              VARCHAR(100),
   USER_DE              VARCHAR(100),
   TIME_IN              TIMESTAMP NOT NULL,
   TIME_UP              TIMESTAMP NULL DEFAULT NULL,
   TIME_DE              TIMESTAMP NULL DEFAULT NULL,
   SBI_VERSION_IN       VARCHAR(10),
   SBI_VERSION_UP       VARCHAR(10),
   SBI_VERSION_DE       VARCHAR(10),
   META_VERSION         VARCHAR(100),
   ORGANIZATION         VARCHAR(20),    
   UNIQUE XAK1SBI_FUNCTIONS_ORGANIZER (CODE, USER_IN),
   PRIMARY KEY (FUNCT_ID)
) ENGINE=InnoDB;

CREATE TABLE SBI_OBJ_FUNC_ORGANIZER (
   BIOBJ_ID             INTEGER NOT NULL,
   FUNCT_ID             INTEGER NOT NULL,
   PROG                 INTEGER NULL,
   USER_IN              VARCHAR(100) NOT NULL,
   USER_UP              VARCHAR(100),
   USER_DE              VARCHAR(100),
   TIME_IN              TIMESTAMP NOT NULL,
   TIME_UP              TIMESTAMP NULL DEFAULT NULL,
   TIME_DE              TIMESTAMP NULL DEFAULT NULL,
   SBI_VERSION_IN       VARCHAR(10),
   SBI_VERSION_UP       VARCHAR(10),
   SBI_VERSION_DE       VARCHAR(10),
   META_VERSION         VARCHAR(100),
   ORGANIZATION         VARCHAR(20),       
   PRIMARY KEY (BIOBJ_ID, FUNCT_ID)
) ENGINE=InnoDB;

-- ADD CONSTRAINT
ALTER TABLE SBI_OBJ_DATA_SET 				ADD CONSTRAINT FK_SBI_OBJ_DATA_SET_1 				FOREIGN KEY (BIOBJ_ID) 				REFERENCES SBI_OBJECTS (BIOBJ_ID) 		ON DELETE  RESTRICT ON UPDATE  RESTRICT;
ALTER TABLE SBI_CHECKS 						ADD CONSTRAINT FK_SBI_CHECKS_1 						FOREIGN KEY (VALUE_TYPE_ID) 		REFERENCES SBI_DOMAINS (VALUE_ID)		ON DELETE RESTRICT;
ALTER TABLE SBI_EXT_ROLES 					ADD CONSTRAINT FK_SBI_EXT_ROLES_1 					FOREIGN KEY (ROLE_TYPE_ID) 			REFERENCES SBI_DOMAINS (VALUE_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_FUNC_ROLE 					ADD CONSTRAINT FK_SBI_FUNC_ROLE_3 					FOREIGN KEY (FUNCT_ID)				REFERENCES SBI_FUNCTIONS (FUNCT_ID) 	ON DELETE RESTRICT;
ALTER TABLE SBI_FUNC_ROLE 					ADD CONSTRAINT FK_SBI_FUNC_ROLE_1 					FOREIGN KEY (ROLE_ID) 				REFERENCES SBI_EXT_ROLES (EXT_ROLE_ID) 	ON DELETE RESTRICT;
ALTER TABLE SBI_FUNC_ROLE 					ADD CONSTRAINT FK_SBI_FUNC_ROLE_2 					FOREIGN KEY (STATE_ID) 				REFERENCES SBI_DOMAINS (VALUE_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_FUNCTIONS 					ADD CONSTRAINT FK_SBI_FUNCTIONS_1 					FOREIGN KEY (FUNCT_TYPE_ID) 		REFERENCES SBI_DOMAINS (VALUE_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_FUNCTIONS 					ADD CONSTRAINT FK_SBI_FUNCTIONS_2 					FOREIGN KEY (PARENT_FUNCT_ID) 		REFERENCES SBI_FUNCTIONS (FUNCT_ID) 	ON DELETE RESTRICT;
ALTER TABLE SBI_LOV 						ADD CONSTRAINT FK_SBI_LOV_1							FOREIGN KEY (INPUT_TYPE_ID) 		REFERENCES SBI_DOMAINS (VALUE_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_FUNC 					ADD CONSTRAINT FK_SBI_OBJ_FUNC_2 					FOREIGN KEY (BIOBJ_ID) 				REFERENCES SBI_OBJECTS (BIOBJ_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_FUNC 					ADD CONSTRAINT FK_SBI_OBJ_FUNC_1 					FOREIGN KEY (FUNCT_ID) 				REFERENCES SBI_FUNCTIONS (FUNCT_ID) 	ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_PAR 					ADD CONSTRAINT FK_SBI_OBJ_PAR_1 					FOREIGN KEY (BIOBJ_ID) 				REFERENCES SBI_OBJECTS (BIOBJ_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_PAR 					ADD CONSTRAINT FK_SBI_OBJ_PAR_2 					FOREIGN KEY (PAR_ID) 				REFERENCES SBI_PARAMETERS (PAR_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_STATE 					ADD CONSTRAINT FK_SBI_OBJ_STATE_1 					FOREIGN KEY (BIOBJ_ID) 				REFERENCES SBI_OBJECTS (BIOBJ_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_STATE 					ADD CONSTRAINT FK_SBI_OBJ_STATE_2 					FOREIGN KEY (STATE_ID) 				REFERENCES SBI_DOMAINS (VALUE_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_OBJECTS 					ADD CONSTRAINT FK_SBI_OBJECTS_2 					FOREIGN KEY (STATE_ID) 				REFERENCES SBI_DOMAINS (VALUE_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_OBJECTS 					ADD CONSTRAINT FK_SBI_OBJECTS_3 					FOREIGN KEY (BIOBJ_TYPE_ID) 		REFERENCES SBI_DOMAINS (VALUE_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_OBJECTS 					ADD CONSTRAINT FK_SBI_OBJECTS_4 					FOREIGN KEY (EXEC_MODE_ID)			REFERENCES SBI_DOMAINS (VALUE_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_OBJECTS 					ADD CONSTRAINT FK_SBI_OBJECTS_1 					FOREIGN KEY (STATE_CONS_ID) 		REFERENCES SBI_DOMAINS (VALUE_ID)		ON DELETE RESTRICT;
ALTER TABLE SBI_OBJECTS_RATING 				ADD CONSTRAINT FK_SBI_OBJECTS_RATING_1 				FOREIGN KEY (OBJ_ID) 				REFERENCES SBI_OBJECTS (BIOBJ_ID)		ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE SBI_PARAMETERS 					ADD CONSTRAINT FK_SBI_PARAMETERS_1 					FOREIGN KEY (PAR_TYPE_ID) 			REFERENCES SBI_DOMAINS (VALUE_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_PARUSE 						ADD CONSTRAINT FK_SBI_PARUSE_1 						FOREIGN KEY (PAR_ID) 				REFERENCES SBI_PARAMETERS (PAR_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_PARUSE 						ADD CONSTRAINT FK_SBI_PARUSE_2 						FOREIGN KEY (LOV_ID) 				REFERENCES SBI_LOV (LOV_ID) 			ON DELETE RESTRICT;
ALTER TABLE SBI_PARUSE 						ADD CONSTRAINT FK_SBI_PARUSE_3 						FOREIGN KEY (DEFAULT_LOV_ID) 		REFERENCES SBI_LOV (LOV_ID) 			ON DELETE RESTRICT;
ALTER TABLE SBI_PARUSE_CK 					ADD CONSTRAINT FK_SBI_PARUSE_CK_1 					FOREIGN KEY (USE_ID) 				REFERENCES SBI_PARUSE (USE_ID) 			ON DELETE RESTRICT;
ALTER TABLE SBI_PARUSE_CK 					ADD CONSTRAINT FK_SBI_PARUSE_CK_2 					FOREIGN KEY (CHECK_ID) 				REFERENCES SBI_CHECKS (CHECK_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_PARUSE_DET 					ADD CONSTRAINT FK_SBI_PARUSE_DET_1 					FOREIGN KEY (USE_ID) 				REFERENCES SBI_PARUSE (USE_ID) 			ON DELETE RESTRICT;
ALTER TABLE SBI_PARUSE_DET 					ADD CONSTRAINT FK_SBI_PARUSE_DET_2 					FOREIGN KEY (EXT_ROLE_ID) 			REFERENCES SBI_EXT_ROLES (EXT_ROLE_ID) 	ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_PARUSE					ADD CONSTRAINT FK_SBI_OBJ_PARUSE_1 					FOREIGN KEY (OBJ_PAR_ID) 			REFERENCES SBI_OBJ_PAR (OBJ_PAR_ID) 	ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_PARUSE 					ADD CONSTRAINT FK_SBI_OBJ_PARUSE_2 					FOREIGN KEY (USE_ID) 				REFERENCES SBI_PARUSE (USE_ID) 			ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_PARUSE 					ADD CONSTRAINT FK_SBI_OBJ_PARUSE_3 					FOREIGN KEY (OBJ_PAR_FATHER_ID)		REFERENCES SBI_OBJ_PAR (OBJ_PAR_ID) 	ON DELETE RESTRICT;
ALTER TABLE SBI_ENGINES 					ADD CONSTRAINT FK_SBI_ENGINES_1 					FOREIGN KEY (BIOBJ_TYPE) 			REFERENCES SBI_DOMAINS (VALUE_ID);
ALTER TABLE SBI_ENGINES 					ADD CONSTRAINT FK_SBI_ENGINES_2 					FOREIGN KEY (ENGINE_TYPE) 			REFERENCES SBI_DOMAINS (VALUE_ID);
ALTER TABLE SBI_EVENTS_ROLES 				ADD CONSTRAINT FK_SBI_EVENTS_ROLES_1 				FOREIGN KEY (ROLE_ID) 				REFERENCES SBI_EXT_ROLES (EXT_ROLE_ID);
ALTER TABLE SBI_EVENTS_ROLES 				ADD CONSTRAINT FK_SBI_EVENTS_ROLES_2 				FOREIGN KEY (EVENT_ID) 				REFERENCES SBI_EVENTS_LOG (ID);
ALTER TABLE SBI_SUBREPORTS 					ADD CONSTRAINT FK_SBI_SUBREPORTS_1 					FOREIGN KEY (MASTER_RPT_ID) 		REFERENCES SBI_OBJECTS (BIOBJ_ID);
ALTER TABLE SBI_SUBREPORTS 					ADD CONSTRAINT FK_SBI_SUBREPORTS_2 					FOREIGN KEY (SUB_RPT_ID)			REFERENCES SBI_OBJECTS (BIOBJ_ID);
ALTER TABLE SBI_AUDIT 						ADD CONSTRAINT FK_SBI_AUDIT_1 						FOREIGN KEY (DOC_REF) 				REFERENCES SBI_OBJECTS (BIOBJ_ID) 		ON DELETE SET NULL ;
ALTER TABLE SBI_AUDIT 						ADD CONSTRAINT FK_SBI_AUDIT_2 						FOREIGN KEY (ENGINE_REF) 			REFERENCES SBI_ENGINES (ENGINE_ID) 		ON DELETE SET NULL ;
ALTER TABLE SBI_AUDIT 						ADD CONSTRAINT FK_SBI_AUDIT_3 						FOREIGN KEY (SUBOBJ_REF) 			REFERENCES SBI_SUBOBJECTS (SUBOBJ_ID) 	ON DELETE SET NULL ;
ALTER TABLE SBI_GEO_MAPS 					ADD CONSTRAINT FK_SBI_GEO_MAPS_1 					FOREIGN KEY (BIN_ID) 				REFERENCES SBI_BINARY_CONTENTS(BIN_ID);
ALTER TABLE SBI_GEO_MAP_FEATURES 			ADD CONSTRAINT FK_GEO_MAP_FEATURES1 				FOREIGN KEY (MAP_ID) 				REFERENCES SBI_GEO_MAPS (MAP_ID); 
ALTER TABLE SBI_GEO_MAP_FEATURES 			ADD CONSTRAINT FK_GEO_MAP_FEATURES2					FOREIGN KEY (FEATURE_ID) 			REFERENCES SBI_GEO_FEATURES (FEATURE_ID); 
ALTER TABLE SBI_VIEWPOINTS 					ADD CONSTRAINT FK_SBI_VIEWPOINTS_1 					FOREIGN KEY (BIOBJ_ID) 				REFERENCES SBI_OBJECTS (BIOBJ_ID);
ALTER TABLE SBI_OBJECT_TEMPLATES 			ADD CONSTRAINT FK_SBI_OBJECT_TEMPLATES_1 			FOREIGN KEY (BIN_ID) 				REFERENCES SBI_BINARY_CONTENTS(BIN_ID);
ALTER TABLE SBI_OBJECT_TEMPLATES 			ADD CONSTRAINT FK_SBI_OBJECT_TEMPLATES_2 			FOREIGN KEY (BIOBJ_ID) 				REFERENCES SBI_OBJECTS(BIOBJ_ID);
ALTER TABLE SBI_OBJECT_NOTES 				ADD CONSTRAINT FK_SBI_OBJECT_NOTES_1 				FOREIGN KEY (BIN_ID) 				REFERENCES SBI_BINARY_CONTENTS(BIN_ID);
ALTER TABLE SBI_OBJECT_NOTES 				ADD CONSTRAINT FK_SBI_OBJECT_NOTES_2 				FOREIGN KEY (BIOBJ_ID) 				REFERENCES SBI_OBJECTS(BIOBJ_ID);
ALTER TABLE SBI_SUBOBJECTS 					ADD CONSTRAINT FK_SBI_SUBOBJECTS_1 					FOREIGN KEY (BIN_ID) 				REFERENCES SBI_BINARY_CONTENTS(BIN_ID);
ALTER TABLE SBI_SUBOBJECTS 					ADD CONSTRAINT FK_SBI_SUBOBJECTS_2 					FOREIGN KEY (BIOBJ_ID) 				REFERENCES SBI_OBJECTS(BIOBJ_ID);
ALTER TABLE SBI_SNAPSHOTS 					ADD CONSTRAINT FK_SBI_SNAPSHOTS_1 					FOREIGN KEY (BIN_ID) 				REFERENCES SBI_BINARY_CONTENTS(BIN_ID);
ALTER TABLE SBI_SNAPSHOTS 					ADD CONSTRAINT FK_SBI_SNAPSHOTS_2 					FOREIGN KEY (BIOBJ_ID) 				REFERENCES SBI_OBJECTS(BIOBJ_ID);
ALTER TABLE SBI_ROLE_TYPE_USER_FUNC 		ADD CONSTRAINT FK_SBI_ROLE_TYPE_USER_FUNC_1 		FOREIGN KEY (ROLE_TYPE_ID) 			REFERENCES SBI_DOMAINS(VALUE_ID);
ALTER TABLE SBI_ROLE_TYPE_USER_FUNC 		ADD CONSTRAINT FK_SBI_ROLE_TYPE_USER_FUNC_2 		FOREIGN KEY (USER_FUNCT_ID) 		REFERENCES SBI_USER_FUNC(USER_FUNCT_ID);
ALTER TABLE SBI_DATA_SOURCE 				ADD CONSTRAINT FK_SBI_DATA_SOURCE_1 				FOREIGN KEY (DIALECT_ID) 			REFERENCES SBI_DOMAINS(VALUE_ID);
ALTER TABLE SBI_DIST_LIST_USER 				ADD CONSTRAINT FK_SBI_DIST_LIST_USER_1 				FOREIGN KEY (LIST_ID) 				REFERENCES SBI_DIST_LIST(DL_ID)			ON DELETE CASCADE;
ALTER TABLE SBI_DIST_LIST_OBJECTS 			ADD CONSTRAINT FK_SBI_DIST_LIST_OBJECTS_1 			FOREIGN KEY (DOC_ID) 				REFERENCES SBI_OBJECTS(BIOBJ_ID)		ON DELETE CASCADE;
ALTER TABLE SBI_DIST_LIST_OBJECTS 			ADD CONSTRAINT FK_SBI_DIST_LIST_OBJECTS_2 			FOREIGN KEY (DL_ID) 				REFERENCES SBI_DIST_LIST(DL_ID)			ON DELETE CASCADE;
ALTER TABLE SBI_REMEMBER_ME 				ADD CONSTRAINT FK_SBI_REMEMBER_ME_1 				FOREIGN KEY (BIOBJ_ID) 				REFERENCES SBI_OBJECTS(BIOBJ_ID) 		ON DELETE CASCADE;
ALTER TABLE SBI_REMEMBER_ME 				ADD CONSTRAINT FK_SBI_REMEMBER_ME_2 				FOREIGN KEY (SUBOBJ_ID) 			REFERENCES SBI_SUBOBJECTS(SUBOBJ_ID) 	ON DELETE CASCADE;
ALTER TABLE SBI_MENU_ROLE 					ADD CONSTRAINT FK_SBI_MENU_ROLE1 					FOREIGN KEY (MENU_ID) 				REFERENCES SBI_MENU (MENU_ID) 			ON DELETE CASCADE; 
ALTER TABLE SBI_MENU_ROLE 					ADD CONSTRAINT FK_SBI_MENU_ROLE2 					FOREIGN KEY (EXT_ROLE_ID) 			REFERENCES SBI_EXT_ROLES (EXT_ROLE_ID) 	ON DELETE CASCADE;
ALTER TABLE SBI_OBJ_METADATA 				ADD CONSTRAINT FK_SBI_OBJ_METADATA_1 				FOREIGN KEY (DATA_TYPE_ID) 			REFERENCES SBI_DOMAINS(VALUE_ID);
ALTER TABLE SBI_OBJ_METACONTENTS 			ADD CONSTRAINT FK_SBI_OBJ_METACONTENTS_1 			FOREIGN KEY (OBJMETA_ID) 			REFERENCES SBI_OBJ_METADATA ( OBJ_META_ID);
ALTER TABLE SBI_OBJ_METACONTENTS 			ADD CONSTRAINT FK_SBI_OBJ_METACONTENTS_2 			FOREIGN KEY (BIOBJ_ID)   			REFERENCES SBI_OBJECTS ( BIOBJ_ID);
ALTER TABLE SBI_OBJ_METACONTENTS 			ADD CONSTRAINT FK_SBI_OBJ_METACONTENTS_3 			FOREIGN KEY (SUBOBJ_ID)  			REFERENCES SBI_SUBOBJECTS ( SUBOBJ_ID) ;
ALTER TABLE SBI_OBJ_METACONTENTS 			ADD CONSTRAINT FK_SBI_OBJ_METACONTENTS_4 			FOREIGN KEY (BIN_ID)     			REFERENCES SBI_BINARY_CONTENTS(BIN_ID);
ALTER TABLE SBI_EXPORTERS  					ADD CONSTRAINT FK_SBI_EXPORTERS_1 					FOREIGN KEY (ENGINE_ID) 			REFERENCES  SBI_ENGINES  (ENGINE_ID) 	ON DELETE  RESTRICT ON UPDATE  RESTRICT;
ALTER TABLE SBI_EXPORTERS  					ADD CONSTRAINT FK_SBI_EXPORTERS_2 					FOREIGN KEY (DOMAIN_ID) 			REFERENCES  SBI_DOMAINS  (VALUE_ID) 	ON DELETE  RESTRICT ON UPDATE  RESTRICT;
ALTER TABLE SBI_CONFIG 						ADD CONSTRAINT FK_SBI_CONFIG_1 						FOREIGN KEY (VALUE_TYPE_ID) 		REFERENCES SBI_DOMAINS (VALUE_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_USER_ATTRIBUTES 			ADD CONSTRAINT FK_SBI_USER_ATTRIBUTES_1 			FOREIGN KEY (ID) 					REFERENCES SBI_USER (ID) 				ON DELETE CASCADE ON UPDATE  RESTRICT;
ALTER TABLE SBI_EXT_USER_ROLES 				ADD CONSTRAINT FK_SBI_EXT_USER_ROLES_1 				FOREIGN KEY (ID) 					REFERENCES SBI_USER (ID) 				ON DELETE CASCADE ON UPDATE  RESTRICT;
ALTER TABLE SBI_USER_ATTRIBUTES 			ADD CONSTRAINT FK_SBI_USER_ATTRIBUTES_2 			FOREIGN KEY (ATTRIBUTE_ID) 			REFERENCES SBI_ATTRIBUTE (ATTRIBUTE_ID) ON DELETE  RESTRICT ON UPDATE  RESTRICT;
ALTER TABLE SBI_EXT_USER_ROLES 				ADD CONSTRAINT FK_SBI_EXT_USER_ROLES_2 				FOREIGN KEY (EXT_ROLE_ID) 			REFERENCES SBI_EXT_ROLES (EXT_ROLE_ID) 	ON DELETE  RESTRICT ON UPDATE  RESTRICT;
ALTER TABLE SBI_UDP 						ADD CONSTRAINT FK_SBI_SBI_UDP_1 					FOREIGN KEY (TYPE_ID) 				REFERENCES SBI_DOMAINS (VALUE_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_UDP 						ADD CONSTRAINT FK_SBI_SBI_UDP_2 					FOREIGN KEY (FAMILY_ID) 			REFERENCES SBI_DOMAINS (VALUE_ID)		ON DELETE RESTRICT;
ALTER TABLE SBI_UDP_VALUE 					ADD CONSTRAINT FK_SBI_UDP_VALUE_2 					FOREIGN KEY (UDP_ID) 				REFERENCES SBI_UDP (UDP_ID) 			ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_PARVIEW 				ADD CONSTRAINT FK_SBI_OBJ_PARVIEW_1 				FOREIGN KEY (OBJ_PAR_ID) 			REFERENCES SBI_OBJ_PAR (OBJ_PAR_ID) 	ON DELETE RESTRICT;
ALTER TABLE SBI_OBJ_PARVIEW 				ADD CONSTRAINT FK_SBI_OBJ_PARVIEW_2 				FOREIGN KEY (OBJ_PAR_FATHER_ID)		REFERENCES SBI_OBJ_PAR (OBJ_PAR_ID) 	ON DELETE RESTRICT;
ALTER TABLE SBI_I18N_MESSAGES 				ADD CONSTRAINT FK_SBI_I18N_MESSAGES 				FOREIGN KEY (LANGUAGE_CD) 			REFERENCES SBI_DOMAINS(VALUE_ID) 		ON DELETE RESTRICT;
ALTER TABLE SBI_META_MODELS_VERSIONS 		ADD CONSTRAINT FK_SBI_META_MODELS_VERSIONS_1 		FOREIGN KEY (MODEL_ID) 				REFERENCES SBI_META_MODELS(ID) 			ON DELETE CASCADE;
ALTER TABLE SBI_ARTIFACTS_VERSIONS 			ADD CONSTRAINT FK_SBI_ARTIFACTS_VERSIONS_1 			FOREIGN KEY (ARTIFACT_ID) 			REFERENCES SBI_ARTIFACTS(ID) 			ON DELETE CASCADE;
ALTER TABLE SBI_COMMUNITY_USERS 			ADD CONSTRAINT FK_COMMUNITY 						FOREIGN KEY (COMMUNITY_ID) 			REFERENCES SBI_COMMUNITY (COMMUNITY_ID)	ON DELETE CASCADE;
ALTER TABLE SBI_DATA_SET 					ADD CONSTRAINT FK_DATA_SET_CATEGORY 				FOREIGN KEY (CATEGORY_ID) 			REFERENCES SBI_DOMAINS(VALUE_ID);
ALTER TABLE SBI_DATA_SET 					ADD CONSTRAINT FK_SBI_DOMAINS_2 					FOREIGN KEY (SCOPE_ID) 				REFERENCES SBI_DOMAINS(VALUE_ID) 		ON DELETE CASCADE;
ALTER TABLE SBI_META_MODELS 				ADD CONSTRAINT FK_META_MODELS_CATEGORY 				FOREIGN KEY (CATEGORY_ID) 			REFERENCES SBI_DOMAINS (VALUE_ID);
ALTER TABLE SBI_AUTHORIZATIONS_ROLES		ADD CONSTRAINT FK_ROLE1 							FOREIGN KEY (ROLE_ID) 				REFERENCES SBI_EXT_ROLES (EXT_ROLE_ID) 	ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SBI_AUTHORIZATIONS_ROLES 		ADD CONSTRAINT FK_AUTHORIZATION_1 					FOREIGN KEY (AUTHORIZATION_ID) 		REFERENCES SBI_AUTHORIZATIONS (ID) 		ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SBI_ORGANIZATION_DATASOURCE 	ADD CONSTRAINT FK_DATASOURCE_2 						FOREIGN KEY (DATASOURCE_ID)			REFERENCES SBI_DATA_SOURCE (DS_ID) 		ON UPDATE NO ACTION ON DELETE CASCADE;
ALTER TABLE SBI_ORGANIZATION_DATASOURCE 	ADD CONSTRAINT FK_ORGANIZATION_2 					FOREIGN KEY (ORGANIZATION_ID) 		REFERENCES SBI_ORGANIZATIONS (ID) 		ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SBI_DATA_SET_FEDERATION 		ADD CONSTRAINT FK_SBI_DATA_SET_FED_FD 				FOREIGN KEY (FEDERATION_ID) 		REFERENCES SBI_FEDERATION_DEFINITION (FEDERATION_ID) 
																																											ON DELETE CASCADE;
ALTER TABLE SBI_DATA_SET_FEDERATION 		ADD CONSTRAINT FK_SBI_DATA_SET_FED_DS 				FOREIGN KEY (DS_ID, VERSION_NUM, ORGANIZATION) 
																																	REFERENCES SBI_DATA_SET (DS_ID, VERSION_NUM,ORGANIZATION) 
																																											ON DELETE CASCADE;
ALTER TABLE SBI_DATA_SET 					ADD CONSTRAINT FK_SBI_FEDERATION 					FOREIGN KEY (FEDERATION_ID) 		REFERENCES SBI_FEDERATION_DEFINITION (FEDERATION_ID);
ALTER TABLE SBI_USER_FUNC 					ADD CONSTRAINT FK_PRODUCT_TYPE 						FOREIGN KEY (PRODUCT_TYPE_ID) 		REFERENCES SBI_PRODUCT_TYPE (PRODUCT_TYPE_ID);
ALTER TABLE SBI_ORGANIZATION_PRODUCT_TYPE 	ADD CONSTRAINT FK_PRODUCT_TYPE_1 					FOREIGN KEY (PRODUCT_TYPE_ID) 		REFERENCES SBI_PRODUCT_TYPE (PRODUCT_TYPE_ID);
ALTER TABLE SBI_ORGANIZATION_PRODUCT_TYPE 	ADD CONSTRAINT FK_ORGANIZATION_3 					FOREIGN KEY (ORGANIZATION_ID) 		REFERENCES SBI_ORGANIZATIONS (ID);
ALTER TABLE SBI_AUTHORIZATIONS 				ADD CONSTRAINT FK2_PRODUCT_TYPE 					FOREIGN KEY (PRODUCT_TYPE_ID)		REFERENCES SBI_PRODUCT_TYPE (PRODUCT_TYPE_ID);
ALTER TABLE SBI_GL_WORD 					ADD CONSTRAINT FK_01_SBI_GL_WORD					FOREIGN KEY (CATEGORY) 				REFERENCES SBI_DOMAINS (VALUE_ID);
ALTER TABLE SBI_GL_WORD 					ADD CONSTRAINT FK_02_SBI_GL_WORD 					FOREIGN KEY (STATE) 				REFERENCES SBI_DOMAINS (VALUE_ID);
ALTER TABLE SBI_GL_DOCWLIST 				ADD CONSTRAINT FK_01_SBI_GL_DOCWLIST 				FOREIGN KEY (WORD_ID) 				REFERENCES SBI_GL_WORD (WORD_ID);
ALTER TABLE SBI_GL_DOCWLIST 				ADD CONSTRAINT FK_02_SBI_GL_DOCWLIST 				FOREIGN KEY (BIOBJ_ID) 				REFERENCES SBI_OBJECTS (BIOBJ_ID);
ALTER TABLE SBI_GL_DATASETWLIST 			ADD CONSTRAINT FK_02_SBI_GL_DATASETWLIST 			FOREIGN KEY (WORD_ID) 				REFERENCES SBI_GL_WORD (WORD_ID);
ALTER TABLE SBI_GL_BNESS_CLS_WLIST 			ADD CONSTRAINT FK_01_SBI_GL_BNESS_CLS_WLIST 		FOREIGN KEY (BC_ID) 				REFERENCES SBI_META_BC (BC_ID);
ALTER TABLE SBI_GL_BNESS_CLS_WLIST 			ADD CONSTRAINT FK_02_SBI_GL_BNESS_CLS_WLIST 		FOREIGN KEY (WORD_ID) 				REFERENCES SBI_GL_WORD (WORD_ID);
ALTER TABLE SBI_GL_TABLE_WLIST 				ADD CONSTRAINT FK_01_SBI_GL_TABLE_WLIST 			FOREIGN KEY (TABLE_ID) 				REFERENCES SBI_META_TABLE (TABLE_ID); 
ALTER TABLE SBI_GL_TABLE_WLIST 				ADD CONSTRAINT FK_02_SBI_GL_TABLE_WLIST 			FOREIGN KEY (WORD_ID) 				REFERENCES SBI_GL_WORD (WORD_ID);
ALTER TABLE SBI_GL_WORD_ATTR 				ADD CONSTRAINT FK_01_GL_WORD_ATTR					FOREIGN KEY (WORD_ID) 				REFERENCES SBI_GL_WORD (WORD_ID);
ALTER TABLE SBI_GL_WORD_ATTR 				ADD CONSTRAINT FK_02_GL_WORD_ATTR					FOREIGN KEY (ATTRIBUTE_ID) 			REFERENCES SBI_GL_ATTRIBUTES (ATTRIBUTE_ID);
ALTER TABLE SBI_GL_REFERENCES 				ADD CONSTRAINT FK_01_GL_REFERENCES					FOREIGN KEY (WORD_ID) 				REFERENCES SBI_GL_WORD (WORD_ID);
ALTER TABLE SBI_GL_REFERENCES 				ADD CONSTRAINT FK_02_GL_REFERENCES					FOREIGN KEY (REF_WORD_ID) 			REFERENCES SBI_GL_WORD (WORD_ID);
ALTER TABLE SBI_GL_WLIST 					ADD CONSTRAINT FK_01_GL_WLIST						FOREIGN KEY (WORD_ID) 				REFERENCES SBI_GL_WORD (WORD_ID);
ALTER TABLE SBI_GL_WLIST 					ADD CONSTRAINT FK_02_GL_WLIST						FOREIGN KEY (CONTENT_ID) 			REFERENCES SBI_GL_CONTENTS (CONTENT_ID);
ALTER TABLE SBI_GL_CONTENTS 				ADD CONSTRAINT FK_01_GL_CONTENTS					FOREIGN KEY (GLOSSARY_ID) 			REFERENCES SBI_GL_GLOSSARY (GLOSSARY_ID);
ALTER TABLE SBI_GL_CONTENTS 				ADD CONSTRAINT FK_02_GL_CONTENTS					FOREIGN KEY (PARENT_ID) 			REFERENCES SBI_GL_CONTENTS (CONTENT_ID);
ALTER TABLE SBI_PRODUCT_TYPE_ENGINE 		ADD CONSTRAINT FK_PRODUCT_TYPE_2 					FOREIGN KEY (PRODUCT_TYPE_ID) 		REFERENCES SBI_PRODUCT_TYPE (PRODUCT_TYPE_ID);
ALTER TABLE SBI_PRODUCT_TYPE_ENGINE 		ADD CONSTRAINT FK_ENGINE_2 							FOREIGN KEY (ENGINE_ID)				REFERENCES SBI_ENGINES (ENGINE_ID);
ALTER TABLE SBI_OUTPUT_PARAMETER 			ADD CONSTRAINT FK_SBI_OUTPUT_PARAMETER_1 			FOREIGN KEY (BIOBJ_ID) 				REFERENCES SBI_OBJECTS (BIOBJ_ID);
ALTER TABLE SBI_OUTPUT_PARAMETER 			ADD CONSTRAINT FK_SBI_OUTPUT_PARAMETER_2 			FOREIGN KEY (PAR_TYPE_ID) 			REFERENCES SBI_DOMAINS (VALUE_ID);
ALTER TABLE SBI_CROSS_NAVIGATION_PAR 		ADD CONSTRAINT FK_SBI_CROSS_NAVIGATION_PAR_1 		FOREIGN KEY (CN_ID) 				REFERENCES SBI_CROSS_NAVIGATION (ID);
ALTER TABLE SBI_ROLES_LAYERS 				ADD CONSTRAINT FK_ID_LAYER 							FOREIGN KEY (ID_LAYER) 				REFERENCES SBI_GEO_LAYERS (LAYER_ID) 	ON DELETE CASCADE;
ALTER TABLE SBI_ROLES_LAYERS 				ADD CONSTRAINT FK_ID_ROLE 							FOREIGN KEY (ID_ROLE) 				REFERENCES SBI_EXT_ROLES (EXT_ROLE_ID) 	ON DELETE CASCADE;
ALTER TABLE SBI_KPI_EXECUTION_FILTER 		ADD CONSTRAINT FK_01_SBI_KPI_EXECUTION_FILTER 		FOREIGN KEY (EXECUTION_ID) 			REFERENCES SBI_KPI_EXECUTION (ID);
ALTER TABLE SBI_KPI_EXECUTION_FILTER 		ADD CONSTRAINT FK_02_SBI_KPI_EXECUTION_FILTER 		FOREIGN KEY (TYPE_ID) 				REFERENCES SBI_DOMAINS (VALUE_ID);
ALTER TABLE SBI_KPI_EXECUTION_FILTER 		ADD CONSTRAINT FK_03_SBI_KPI_EXECUTION_FILTER 		FOREIGN KEY (PLACEHOLDER_ID) 		REFERENCES SBI_KPI_PLACEHOLDER (ID);
ALTER TABLE SBI_KPI_SCORECARD 				ADD CONSTRAINT FK_02_SBI_KPI_SCORECARD 				FOREIGN KEY (CRITERION_ID) 			REFERENCES SBI_DOMAINS (VALUE_ID);
ALTER TABLE SBI_KPI_KPI 					ADD CONSTRAINT FK_01_SBI_KPI_KPI 					FOREIGN KEY (CATEGORY_ID) 			REFERENCES SBI_DOMAINS (VALUE_ID);
ALTER TABLE SBI_KPI_RULE					ADD CONSTRAINT FK_01_SBI_KPI_RULE					FOREIGN KEY (DATASOURCE_ID)			REFERENCES SBI_DATA_SOURCE (DS_ID);
ALTER TABLE SBI_KPI_THRESHOLD 				ADD CONSTRAINT FK_01_SBI_KPI_THRESHOLD 				FOREIGN KEY (TYPE_ID) 				REFERENCES SBI_DOMAINS (VALUE_ID);
ALTER TABLE SBI_KPI_THRESHOLD_VALUE 		ADD CONSTRAINT FK_01_SBI_KPI_THRESHOLD_VALUE 		FOREIGN KEY (SEVERITY_ID) 			REFERENCES SBI_DOMAINS (VALUE_ID);
ALTER TABLE SBI_KPI_THRESHOLD_VALUE			ADD CONSTRAINT FK_02_SBI_KPI_THRESHOLD_VALUE		FOREIGN KEY (THRESHOLD_ID)			REFERENCES SBI_KPI_THRESHOLD (ID);
ALTER TABLE SBI_KPI_RULE_OUTPUT 			ADD CONSTRAINT FK_01_SBI_KPI_RULE_OUTPUT 			FOREIGN KEY (TYPE_ID) 				REFERENCES SBI_DOMAINS (VALUE_ID);
ALTER TABLE SBI_KPI_RULE_OUTPUT 			ADD CONSTRAINT FK_02_SBI_KPI_RULE_OUTPUT 			FOREIGN KEY (RULE_ID,RULE_VERSION) 	REFERENCES SBI_KPI_RULE (ID,VERSION);
ALTER TABLE SBI_KPI_RULE_OUTPUT 			ADD CONSTRAINT FK_03_SBI_KPI_RULE_OUTPUT 			FOREIGN KEY (ALIAS_ID) 				REFERENCES SBI_KPI_ALIAS (ID);
ALTER TABLE SBI_KPI_RULE_OUTPUT 			ADD CONSTRAINT FK_04_SBI_KPI_RULE_OUTPUT 			FOREIGN KEY (CATEGORY_ID) 			REFERENCES SBI_DOMAINS (VALUE_ID);
ALTER TABLE SBI_KPI_RULE_PLACEHOLDER 		ADD CONSTRAINT FK_01_SBI_KPI_RULE_PLACEHOLDER 		FOREIGN KEY (RULE_ID,RULE_VERSION) 	REFERENCES SBI_KPI_RULE (ID,VERSION);
ALTER TABLE SBI_KPI_RULE_PLACEHOLDER 		ADD CONSTRAINT FK_02_SBI_KPI_RULE_PLACEHOLDER 		FOREIGN KEY (PLACEHOLDER_ID) 		REFERENCES SBI_KPI_PLACEHOLDER (ID);
ALTER TABLE SBI_KPI_KPI_RULE_OUTPUT         ADD CONSTRAINT FK_01_SBI_KPI_KPI_RULE_OUTPUT    	FOREIGN KEY (KPI_ID,KPI_VERSION)    REFERENCES SBI_KPI_KPI (ID,VERSION);
ALTER TABLE SBI_KPI_KPI_RULE_OUTPUT         ADD CONSTRAINT FK_02_SBI_KPI_KPI_RULE_OUTPUT    	FOREIGN KEY (RULE_OUTPUT_ID)        REFERENCES SBI_KPI_RULE_OUTPUT (ID);
ALTER TABLE SBI_KPI_TARGET_VALUE 			ADD CONSTRAINT FK_01_SBI_KPI_TARGET_VALUE 			FOREIGN KEY (TARGET_ID) 			REFERENCES SBI_KPI_TARGET (TARGET_ID);
ALTER TABLE SBI_KPI_TARGET_VALUE 			ADD CONSTRAINT FK_02_SBI_KPI_TARGET_VALUE 			FOREIGN KEY (KPI_ID,KPI_VERSION) 	REFERENCES SBI_KPI_KPI (ID,VERSION);
ALTER TABLE SBI_KPI_TARGET					ADD CONSTRAINT FK_03_SBI_KPI_TARGET 				FOREIGN KEY (CATEGORY_ID) 			REFERENCES SBI_DOMAINS (VALUE_ID);
ALTER TABLE SBI_META_TABLE 					ADD CONSTRAINT FK_SBI_META_TABLE_1 					FOREIGN KEY (SOURCE_ID) 			REFERENCES SBI_META_SOURCE (SOURCE_ID);
ALTER TABLE SBI_META_TABLE_COLUMN 			ADD CONSTRAINT FK_SBI_META_COLUMN_1 				FOREIGN KEY (TABLE_ID) 				REFERENCES SBI_META_TABLE (TABLE_ID);
ALTER TABLE SBI_META_BC 					ADD CONSTRAINT FK_SBI_META_BC_1 					FOREIGN KEY (MODEL_ID) 				REFERENCES SBI_META_MODELS(ID);
ALTER TABLE SBI_META_BC_ATTRIBUTE 			ADD CONSTRAINT FK_SBI_META_BC_ATTRIBUTE_1 			FOREIGN KEY (BC_ID) 				REFERENCES SBI_META_BC(BC_ID);
ALTER TABLE SBI_META_BC_ATTRIBUTE 			ADD CONSTRAINT FK_SBI_META_BC_ATTRIBUTE_2 			FOREIGN KEY (COLUMN_ID) 			REFERENCES SBI_META_TABLE_COLUMN(COLUMN_ID);
ALTER TABLE SBI_META_DS_BC 					ADD CONSTRAINT FK_SBI_META_DS_BC_1					FOREIGN KEY (DS_ID,VERSION_NUM,ORGANIZATION) REFERENCES SBI_DATA_SET(DS_ID,VERSION_NUM,ORGANIZATION);
ALTER TABLE SBI_META_DS_BC 					ADD CONSTRAINT FK_SBI_META_DS_BC_2 					FOREIGN KEY (BC_ID) 				REFERENCES SBI_META_BC(BC_ID);
ALTER TABLE SBI_META_TABLE_BC 				ADD CONSTRAINT FK_SBI_META_TABLE_BC_1 				FOREIGN KEY (TABLE_ID) 				REFERENCES SBI_META_TABLE(TABLE_ID);
ALTER TABLE SBI_META_TABLE_BC 				ADD CONSTRAINT FK_SBI_META_TABLE_BC_2 				FOREIGN KEY (BC_ID) 				REFERENCES SBI_META_BC(BC_ID);
ALTER TABLE SBI_META_OBJ_DS 				ADD CONSTRAINT FK_SBI_META_OBJ_DS_1 				FOREIGN KEY (DS_ID,VERSION_NUM,ORGANIZATION) REFERENCES SBI_DATA_SET(DS_ID,VERSION_NUM,ORGANIZATION);
ALTER TABLE SBI_META_OBJ_DS 				ADD CONSTRAINT FK_SBI_META_OBJ_DS_2 				FOREIGN KEY (OBJ_ID) 				REFERENCES SBI_OBJECTS(BIOBJ_ID);
ALTER TABLE SBI_META_JOB_SOURCE 			ADD CONSTRAINT FK_SBI_META_JOB_SOURCE_1 			FOREIGN KEY (JOB_ID) 				REFERENCES SBI_META_JOB(JOB_ID);
ALTER TABLE SBI_META_JOB_SOURCE 			ADD CONSTRAINT FK_SBI_META_JOB_SOURCE_2 			FOREIGN KEY (SOURCE_ID)				REFERENCES SBI_META_SOURCE(SOURCE_ID);
ALTER TABLE SBI_META_JOB_TABLE 				ADD CONSTRAINT FK_SBI_META_JOB_TABLE_1 				FOREIGN KEY (JOB_ID) 				REFERENCES SBI_META_JOB(JOB_ID);
ALTER TABLE SBI_META_JOB_TABLE 				ADD CONSTRAINT FK_SBI_META_JOB_TABLE_2 				FOREIGN KEY (TABLE_ID) 				REFERENCES SBI_META_TABLE(TABLE_ID);

ALTER TABLE SBI_ALERT 						ADD CONSTRAINT FK_01_SBI_ALERT 						FOREIGN KEY (LISTENER_ID) 			REFERENCES SBI_ALERT_LISTENER(ID);
ALTER TABLE SBI_ALERT_LOG 					ADD CONSTRAINT FK_01_SBI_ALERT_LOG 					FOREIGN KEY (LISTENER_ID) 			REFERENCES SBI_ALERT_LISTENER(ID);
ALTER TABLE SBI_ALERT_LOG 					ADD CONSTRAINT FK_02_SBI_ALERT_LOG 					FOREIGN KEY (ACTION_ID) 			REFERENCES SBI_ALERT_ACTION(ID);

ALTER TABLE SBI_FUNCTION_OUTPUT 			ADD CONSTRAINT FK_SBI_FUNCTION_OUTPUT_1 			FOREIGN KEY ( OUT_TYPE ) 			REFERENCES SBI_DOMAINS ( VALUE_ID ) 		 ON DELETE  RESTRICT ON UPDATE  RESTRICT;
ALTER TABLE SBI_FUNCTION_OUTPUT 			ADD CONSTRAINT FK_SBI_FUNCTION_OUTPUT_2 			FOREIGN KEY ( FUNCTION_ID ) 		REFERENCES SBI_CATALOG_FUNCTION(FUNCTION_ID) ON DELETE  RESTRICT ON UPDATE  RESTRICT;
ALTER TABLE SBI_FUNCTION_INPUT_DATASET 		ADD CONSTRAINT FK_FUNCTION_INPUT_DATASETS_2  		FOREIGN KEY (FUNCTION_ID) 			REFERENCES SBI_CATALOG_FUNCTION(FUNCTION_ID) ON DELETE  RESTRICT ON UPDATE  RESTRICT;
ALTER TABLE SBI_FUNCTION_INPUT_VARIABLE 	ADD CONSTRAINT FK_FUNCTION_INPUT_VARIABLES_1  		FOREIGN KEY (FUNCTION_ID) 			REFERENCES SBI_CATALOG_FUNCTION(FUNCTION_ID) ON DELETE  RESTRICT ON UPDATE  RESTRICT;

ALTER TABLE SBI_FUNCTIONS_ORGANIZER 		ADD CONSTRAINT FK_SBI_FUNCTIONS_ORGANIZER_1 		FOREIGN KEY (PARENT_FUNCT_ID) 		REFERENCES SBI_FUNCTIONS_ORGANIZER (FUNCT_ID) ON DELETE  RESTRICT;
ALTER TABLE SBI_OBJ_FUNC_ORGANIZER 			ADD CONSTRAINT FK_SBI_OBJ_FUNC_ORGANIZER_1 			FOREIGN KEY (FUNCT_ID) 				REFERENCES SBI_FUNCTIONS_ORGANIZER (FUNCT_ID) ON DELETE  RESTRICT;
ALTER TABLE SBI_OBJ_FUNC_ORGANIZER 			ADD CONSTRAINT FK_SBI_OBJ_FUNC_ORGANIZER_2 			FOREIGN KEY (BIOBJ_ID) 				REFERENCES SBI_OBJECTS (BIOBJ_ID)  			  ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE SBI_FEDERATION_DEFINITION 		ADD UNIQUE INDEX NAME_UNIQUE (NAME ASC);
ALTER TABLE SBI_FEDERATION_DEFINITION 		ADD UNIQUE INDEX LABEL_UNIQUE (LABEL ASC);
 
ALTER TABLE SBI_ORGANIZATION_PRODUCT_TYPE 	ADD INDEX IDX_ORGANIZATION 		(ORGANIZATION_ID);
ALTER TABLE SBI_GL_WORD 					ADD INDEX IDX_STATE 			(STATE);
ALTER TABLE SBI_GL_WORD 					ADD INDEX IDX_CATEGORY 			(CATEGORY);
ALTER TABLE SBI_GL_DOCWLIST 				ADD INDEX IDX_WORD_ID 			(WORD_ID ASC);
ALTER TABLE SBI_GL_DATASETWLIST 			ADD INDEX IDX_DATASET			(DS_ID);
ALTER TABLE SBI_GL_DATASETWLIST 			ADD INDEX IDX_ORGANIZATION 		(ORGANIZATION);
ALTER TABLE SBI_GL_BNESS_CLS_WLIST 			ADD INDEX IDX_WORDID 			(WORD_ID);
ALTER TABLE SBI_ROLES_LAYERS 				ADD INDEX IDX_FK_ID_ROLE_IDX	(ID_ROLE);

 
 





