BEGIN TRANSACTION;
CREATE TABLE "cds_acc_links" (
  "ProdID" varchar(40) NOT NULL,
  "PProdID" varchar(40) NOT NULL,
  PRIMARY KEY ("ProdID","PProdID")
);
CREATE TABLE "cds_acc_updates" (
  "ProdID" varchar(40) NOT NULL,
  PRIMARY KEY ("ProdID")
);
CREATE TABLE "cds_acccompat" (
  "ProdID" varchar(40) NOT NULL,
  "PProductLine" varchar(10) DEFAULT NULL,
  "PModel" varchar(10) DEFAULT NULL,
  "ComplementID" int(11) DEFAULT NULL,
  "PCatID" char(2) NOT NULL,
  "PMfID" varchar(10) NOT NULL
);
CREATE TABLE "cds_acccompat_complement_de" (
  "ComplementID" int(11) NOT NULL,
  "ApplicableCondition" text,
  "Details" text,
  PRIMARY KEY ("ComplementID")
);
CREATE TABLE "cds_atr" (
  "ProdID" varchar(40) NOT NULL,
  "CatID" char(2) NOT NULL,
  "AtrID" varchar(10) NOT NULL,
  "ValID" varchar(10) NOT NULL,
  "UnitID" varchar(10) DEFAULT NULL,
  "NNV" double DEFAULT NULL,
  PRIMARY KEY ("ProdID","AtrID","ValID")
);
CREATE TABLE "cds_cat" (
  "CatID" char(2) NOT NULL,
  "AtrID" varchar(10) NOT NULL,
  PRIMARY KEY ("AtrID","CatID")
);
CREATE TABLE "cds_catalog" (
  "ProdID" varchar(40) NOT NULL,
  "StatusCode" varchar(4) NOT NULL,
  "Timestamp" varchar(10) NOT NULL,
  PRIMARY KEY ("ProdID")
);
CREATE TABLE "cds_catalog_info" (
  "ProdID" varchar(40) NOT NULL,
  "StatusCode" varchar(4) NOT NULL,
  "LastDeliveryDate" varchar(10) NULL,
  "CreationDate" varchar(10) NULL,
  "LastRequestDate" varchar(10) NULL,
  "IsPartial" TINYINT(1) NOT NULL,
  PRIMARY KEY ("ProdID")
);
CREATE TABLE "cds_cctde" (
  "ID" char(2) NOT NULL,
  "Description" varchar(80) NOT NULL,
  "DefaultImageID" varchar(10) DEFAULT NULL,
  PRIMARY KEY ("ID")
);
CREATE TABLE "cds_cctee" (
  "ID" char(2) NOT NULL,
  "Description" varchar(80) NOT NULL,
  "DefaultImageID" varchar(10) DEFAULT NULL,
  PRIMARY KEY ("ID")
);
CREATE TABLE "cds_digcontent" (
  "ContentGuid" char(36) NOT NULL,
  "MediaTypeID" int(11) NOT NULL,
  "MimeType" varchar(50) NOT NULL,
  "URL" text NOT NULL,
  "Timestamp" datetime DEFAULT NULL,
  PRIMARY KEY ("ContentGuid")
);
CREATE TABLE "cds_digcontent_meta" (
  "ContentGuid" char(36) NOT NULL,
  "MetaAtrId" int(11) NOT NULL,
  "MetaValueId" int(11) NOT NULL,
  PRIMARY KEY ("ContentGuid", "MetaAtrId", "MetaValueId")
);
CREATE TABLE "cds_digcontent_meta_atr_voc" (
  "MetaAtrId" int(11) NOT NULL,
  "LanguageCode" varchar(20) NOT NULL,
  "MetaAtrName" varchar(200) NOT NULL,
  PRIMARY KEY ("MetaAtrId", "LanguageCode")
);
CREATE TABLE "cds_digcontent_meta_value_voc" (
  "MetaValueId" int(11) NOT NULL,
  "LanguageCode" varchar(20) NOT NULL,
  "MetaValueName" text NOT NULL,
  PRIMARY KEY ("MetaValueId", "LanguageCode")
);
CREATE TABLE "cds_digcontent_lang_links" (
  "ContentGuid" char(36) NOT NULL,
  "LanguageCode" varchar(20) NOT NULL,
  PRIMARY KEY ("ContentGuid","LanguageCode")
);
CREATE TABLE "cds_digcontent_langs" (
  "LanguageCode" varchar(20) NOT NULL,
  "LanguageName" varchar(200) NOT NULL,
  PRIMARY KEY ("LanguageCode")
);
CREATE TABLE "cds_digcontent_links" (
  "ProdID" varchar(40) NOT NULL,
  "ContentGuid" char(36) NOT NULL,
  PRIMARY KEY ("ProdID","ContentGuid")
);
CREATE TABLE "cds_digcontent_media_types" (
  "MediaTypeID" int(11) NOT NULL,
  "MediaTypeDescription" text NOT NULL,
  PRIMARY KEY ("MediaTypeID")
);
CREATE TABLE "cds_digcontent_prod" (
  "ProdID" varchar(40) NOT NULL,
  PRIMARY KEY ("ProdID")
);
CREATE TABLE "cds_digcontent_region_links" (
  "ContentGuid" char(36) NOT NULL,
  "RegionCode" varchar(20) NOT NULL,
  PRIMARY KEY ("ContentGuid","RegionCode")
);
CREATE TABLE "cds_digcontent_regions" (
  "RegionCode" varchar(20) NOT NULL,
  "RegionName" varchar(200) NOT NULL,
  PRIMARY KEY ("RegionCode")
);
CREATE TABLE "cds_distivoc" (
  "ID" varchar(10) NOT NULL,
  "Name" varchar(50) NOT NULL,
  PRIMARY KEY ("ID")
);
CREATE TABLE "cds_especde" (
  "ProdID" varchar(40) NOT NULL,
  "SectID" varchar(10) NOT NULL,
  "HdrID" varchar(10) NOT NULL,
  "BodyID" varchar(10) NOT NULL,
  "DisplayOrder" int(11) NOT NULL,
  PRIMARY KEY ("ProdID","SectID","BodyID","HdrID")
);
INSERT INTO "cds_especde" VALUES('100329','H0000002','T0000019','B0000299',3);
INSERT INTO "cds_especde" VALUES('100329','H0000002','T0000018','B0000508',2);
INSERT INTO "cds_especde" VALUES('100329','H0000002','T0000020','B0000954',4);
INSERT INTO "cds_especde" VALUES('100329','H0000002','T0000094','B0214150',1);
INSERT INTO "cds_especde" VALUES('100329','H0000004','T0001685','B0000715',21);
INSERT INTO "cds_especde" VALUES('100329','H0000004','T0001680','B0417720',20);
INSERT INTO "cds_especde" VALUES('100329','H0000005','T0001713','B0000079',23);
INSERT INTO "cds_especde" VALUES('100329','H0000005','T0001712','B0001389',24);
INSERT INTO "cds_especde" VALUES('100329','H0000012','T0003907','B1291381',22);
INSERT INTO "cds_especde" VALUES('100329','H0000015','T0000113','B0000182',26);
INSERT INTO "cds_especde" VALUES('100329','H0000015','T0000112','B0000209',25);
INSERT INTO "cds_especde" VALUES('100329','H0000015','T0000114','B0001467',27);
INSERT INTO "cds_especde" VALUES('100329','H0000015','T0000205','B0164314',28);
INSERT INTO "cds_especde" VALUES('100329','H0000041','T0000048','B0000513',10);
INSERT INTO "cds_especde" VALUES('100329','H0000041','T0000006','B0000695',5);
INSERT INTO "cds_especde" VALUES('100329','H0000041','T0000152','B0001720',8);
INSERT INTO "cds_especde" VALUES('100329','H0000041','T0000176','B0150228',6);
INSERT INTO "cds_especde" VALUES('100329','H0000041','T0000521','B0186607',9);
INSERT INTO "cds_especde" VALUES('100329','H0000041','T0000096','B0417339',7);
INSERT INTO "cds_especde" VALUES('100329','H0000042','T0003389','B0000703',16);
INSERT INTO "cds_especde" VALUES('100329','H0000042','T0000194','B0000969',14);
INSERT INTO "cds_especde" VALUES('100329','H0000042','T0000195','B0000970',15);
INSERT INTO "cds_especde" VALUES('100329','H0000042','T0000185','B0031950',13);
INSERT INTO "cds_especde" VALUES('100329','H0000042','T0000184','B0146207',11);
INSERT INTO "cds_especde" VALUES('100329','H0000042','T0003936','B1325401',12);
INSERT INTO "cds_especde" VALUES('100329','H0000044','T0000203','B0000712',18);
INSERT INTO "cds_especde" VALUES('100329','H0000044','T0000357','B0003972',19);
INSERT INTO "cds_especde" VALUES('100329','H0000044','T0001888','B0005253',17);
INSERT INTO "cds_especde" VALUES('100372','H0000002','T0000223','B0001087',2);
INSERT INTO "cds_especde" VALUES('100372','H0000002','T0000094','B0005144',1);
INSERT INTO "cds_especde" VALUES('100372','H0000004','T0000127','B0003738',5);
INSERT INTO "cds_especde" VALUES('100372','H0000004','T0001680','B0012082',4);
INSERT INTO "cds_especde" VALUES('100372','H0000004','T0001685','B0088579',6);
INSERT INTO "cds_especde" VALUES('100372','H0000004','T0001678','B0103470',3);
INSERT INTO "cds_especde" VALUES('100372','H0000012','T0000074','B0000049',8);
INSERT INTO "cds_especde" VALUES('100372','H0000012','T0000466','B1007405',7);
INSERT INTO "cds_especde" VALUES('100724','H0000002','T0000020','B0000167',4);
INSERT INTO "cds_especde" VALUES('100724','H0000002','T0000018','B0000508',2);
INSERT INTO "cds_especde" VALUES('100724','H0000002','T0000019','B0000509',3);
INSERT INTO "cds_especde" VALUES('100724','H0000002','T0000021','B0000989',5);
INSERT INTO "cds_especde" VALUES('100724','H0000002','T0000094','B0214150',1);
INSERT INTO "cds_especde" VALUES('100724','H0000004','T0001685','B0103154',18);
INSERT INTO "cds_especde" VALUES('100724','H0000004','T0001680','B0718528',17);
INSERT INTO "cds_especde" VALUES('100724','H0000005','T0001713','B0000079',20);
INSERT INTO "cds_especde" VALUES('100724','H0000005','T0001712','B0001389',21);
INSERT INTO "cds_especde" VALUES('100724','H0000012','T0000048','B0663614',19);
INSERT INTO "cds_especde" VALUES('100724','H0000015','T0000113','B0000182',23);
INSERT INTO "cds_especde" VALUES('100724','H0000015','T0000112','B0000209',22);
INSERT INTO "cds_especde" VALUES('100724','H0000015','T0000205','B0164314',24);
INSERT INTO "cds_especde" VALUES('100724','H0000041','T0000152','B0000308',9);
INSERT INTO "cds_especde" VALUES('100724','H0000041','T0000048','B0000513',10);
INSERT INTO "cds_especde" VALUES('100724','H0000041','T0000176','B0014419',7);
INSERT INTO "cds_especde" VALUES('100724','H0000041','T0000006','B0103151',6);
INSERT INTO "cds_especde" VALUES('100724','H0000041','T0000096','B0680647',8);
INSERT INTO "cds_especde" VALUES('100724','H0000042','T0003389','B0000703',14);
INSERT INTO "cds_especde" VALUES('100724','H0000042','T0000195','B0000970',13);
INSERT INTO "cds_especde" VALUES('100724','H0000042','T0000185','B0016014',12);
INSERT INTO "cds_especde" VALUES('100724','H0000042','T0000184','B0640990',11);
INSERT INTO "cds_especde" VALUES('100724','H0000044','T0000204','B0000712',15);
INSERT INTO "cds_especde" VALUES('100724','H0000044','T0000357','B0003972',16);
INSERT INTO "cds_especde" VALUES('100732','H0000002','T0000020','B0000167',4);
INSERT INTO "cds_especde" VALUES('100732','H0000002','T0000018','B0000508',2);
INSERT INTO "cds_especde" VALUES('100732','H0000002','T0000019','B0000509',3);
INSERT INTO "cds_especde" VALUES('100732','H0000002','T0000021','B0000989',5);
INSERT INTO "cds_especde" VALUES('100732','H0000002','T0000094','B0214150',1);
INSERT INTO "cds_especde" VALUES('100732','H0000004','T0001685','B0103154',17);
INSERT INTO "cds_especde" VALUES('100732','H0000004','T0001680','B0417489',16);
INSERT INTO "cds_especde" VALUES('100732','H0000005','T0001713','B0000079',19);
INSERT INTO "cds_especde" VALUES('100732','H0000005','T0001712','B0001389',20);
INSERT INTO "cds_especde" VALUES('100732','H0000012','T0000048','B0663614',18);
INSERT INTO "cds_especde" VALUES('100732','H0000015','T0000113','B0000182',22);
INSERT INTO "cds_especde" VALUES('100732','H0000015','T0000112','B0000209',21);
INSERT INTO "cds_especde" VALUES('100732','H0000015','T0000205','B0164314',23);
INSERT INTO "cds_especde" VALUES('100732','H0000041','T0000152','B0000308',9);
INSERT INTO "cds_especde" VALUES('100732','H0000041','T0000048','B0000513',10);
INSERT INTO "cds_especde" VALUES('100732','H0000041','T0000176','B0094703',7);
INSERT INTO "cds_especde" VALUES('100732','H0000041','T0000006','B0103151',6);
INSERT INTO "cds_especde" VALUES('100732','H0000041','T0000096','B0417288',8);
INSERT INTO "cds_especde" VALUES('100732','H0000042','T0003389','B0000703',14);
INSERT INTO "cds_especde" VALUES('100732','H0000042','T0000195','B0000970',13);
INSERT INTO "cds_especde" VALUES('100732','H0000042','T0000184','B0007456',11);
INSERT INTO "cds_especde" VALUES('100732','H0000042','T0000185','B0016014',12);
INSERT INTO "cds_especde" VALUES('100732','H0000044','T0000204','B0000712',15);
INSERT INTO "cds_especde" VALUES('100733','H0000002','T0000019','B0001272',3);
INSERT INTO "cds_especde" VALUES('100733','H0000002','T0000018','B0005241',2);
INSERT INTO "cds_especde" VALUES('100733','H0000002','T0000021','B0074020',5);
INSERT INTO "cds_especde" VALUES('100733','H0000002','T0000094','B0214150',1);
INSERT INTO "cds_especde" VALUES('100733','H0000002','T0000020','B0304964',4);
INSERT INTO "cds_especde" VALUES('100733','H0000004','T0001685','B0124709',21);
INSERT INTO "cds_especde" VALUES('100733','H0000004','T0001680','B0164130',20);
INSERT INTO "cds_especde" VALUES('100733','H0000012','T0003907','B1291381',22);
INSERT INTO "cds_especde" VALUES('100733','H0000015','T0000112','B0000316',23);
INSERT INTO "cds_especde" VALUES('100733','H0000015','T0000113','B0000401',24);
INSERT INTO "cds_especde" VALUES('100733','H0000015','T0000114','B0001467',25);
INSERT INTO "cds_especde" VALUES('100733','H0000015','T0000059','B0044965',27);
INSERT INTO "cds_especde" VALUES('100733','H0000015','T0000205','B0950283',26);
INSERT INTO "cds_especde" VALUES('100733','H0000041','T0000048','B0000513',11);
INSERT INTO "cds_especde" VALUES('100733','H0000041','T0000152','B0001720',9);
INSERT INTO "cds_especde" VALUES('100733','H0000041','T0000006','B0124708',6);
INSERT INTO "cds_especde" VALUES('100733','H0000041','T0000096','B0140093',8);
INSERT INTO "cds_especde" VALUES('100733','H0000041','T0000176','B0150228',7);
INSERT INTO "cds_especde" VALUES('100733','H0000041','T0000521','B1227136',10);
INSERT INTO "cds_especde" VALUES('100733','H0000042','T0000194','B0005250',15);
INSERT INTO "cds_especde" VALUES('100733','H0000042','T0003389','B0005252',17);
INSERT INTO "cds_especde" VALUES('100733','H0000042','T0000195','B0007411',16);
INSERT INTO "cds_especde" VALUES('100733','H0000042','T0000185','B0022613',14);
INSERT INTO "cds_especde" VALUES('100733','H0000042','T0000184','B0164129',12);
INSERT INTO "cds_especde" VALUES('100733','H0000042','T0003936','B1322588',13);
INSERT INTO "cds_especde" VALUES('100733','H0000044','T0000203','B0000712',18);
INSERT INTO "cds_especde" VALUES('100733','H0000044','T0000357','B0374674',19);
CREATE TABLE "cds_especee" (
  "ProdID" varchar(40) NOT NULL,
  "SectID" varchar(10) NOT NULL,
  "HdrID" varchar(10) NOT NULL,
  "BodyID" varchar(10) NOT NULL,
  "DisplayOrder" int(11) NOT NULL,
  PRIMARY KEY ("ProdID","SectID","BodyID","HdrID")
);
CREATE TABLE "cds_evocde" (
  "ID" varchar(10) NOT NULL,
  "Text" text,
  PRIMARY KEY ("ID")
);
CREATE TABLE "cds_evocee" (
  "ID" varchar(10) NOT NULL,
  "Text" text,
  PRIMARY KEY ("ID")
);
CREATE TABLE "cds_metamap" (
  "ProdID" varchar(40) NOT NULL,
  "DistiSKU" varchar(40) NOT NULL,
  "DistiID" varchar(10) NOT NULL,
  PRIMARY KEY ("ProdID","DistiID","DistiSKU")
);
CREATE TABLE "cds_mktde" (
  "MktID" varchar(10) NOT NULL,
  "Description" text,
  PRIMARY KEY ("MktID")
);
INSERT INTO "cds_mktde" VALUES('D4648527','Mit den Samsung SpinPoints erhalten Anwender h�chste Speicherdichte und rasanten Datentransfer bei verbl�ffend geringer Ger�uschentwicklung - ideal f�r Multimedia-Anwendungen und grafisch aufw�ndige Computerspiele.');
INSERT INTO "cds_mktde" VALUES('D6237673','Marketingbeschreibung nicht verf�gbar.');
INSERT INTO "cds_mktde" VALUES('D6445021','Die Festplatten Maxtor DiamondMax 21 sind mit ihrer soliden Performance und den verbreiteten Speicherkapazit�ten eine ausgezeichnete Investition f�r High-Volume-Einstiegs- und -Standard-Computeranwendungen.');
INSERT INTO "cds_mktde" VALUES('D6503876','Die Festplatten Maxtor DiamondMax 21 sind mit ihrer soliden Performance und den verbreiteten Speicherkapazit�ten eine ausgezeichnete Investition f�r High-Volume-Einstiegs- und -Standard-Computeranwendungen.');
INSERT INTO "cds_mktde" VALUES('D6591974','Marketingbeschreibung nicht verf�gbar.');
CREATE TABLE "cds_mktee" (
  "MktID" varchar(10) NOT NULL,
  "Description" text,
  PRIMARY KEY ("MktID")
);
CREATE TABLE "cds_mspecde" (
  "ProdID" varchar(40) NOT NULL,
  "HdrID" varchar(10) NOT NULL,
  "BodyID" varchar(10) NOT NULL,
  "DisplayOrder" int(11) NOT NULL,
  PRIMARY KEY ("ProdID","HdrID","BodyID")
);
INSERT INTO "cds_mspecde" VALUES('100329','T0000002','B0774481',1);
INSERT INTO "cds_mspecde" VALUES('100329','T0000006','B0007931',3);
INSERT INTO "cds_mspecde" VALUES('100329','T0000010','B0000054',12);
INSERT INTO "cds_mspecde" VALUES('100329','T0000015','B0000777',4);
INSERT INTO "cds_mspecde" VALUES('100329','T0000049','B0220502',2);
INSERT INTO "cds_mspecde" VALUES('100329','T0000066','B0114975',7);
INSERT INTO "cds_mspecde" VALUES('100329','T0000092','B0452673',6);
INSERT INTO "cds_mspecde" VALUES('100329','T0000101','B0149568',5);
INSERT INTO "cds_mspecde" VALUES('100329','T0000106','B0031040',8);
INSERT INTO "cds_mspecde" VALUES('100329','T0001682','B0000613',9);
INSERT INTO "cds_mspecde" VALUES('100329','T0001757','B0001259',10);
INSERT INTO "cds_mspecde" VALUES('100329','T0001804','B1848947',11);
INSERT INTO "cds_mspecde" VALUES('100372','T0000002','B1441200',1);
INSERT INTO "cds_mspecde" VALUES('100372','T0000055','B0003801',2);
INSERT INTO "cds_mspecde" VALUES('100372','T0000135','B0000864',5);
INSERT INTO "cds_mspecde" VALUES('100372','T0000631','B0210677',3);
INSERT INTO "cds_mspecde" VALUES('100372','T0000632','B0206233',4);
INSERT INTO "cds_mspecde" VALUES('100724','T0000002','B1526501',1);
INSERT INTO "cds_mspecde" VALUES('100724','T0000006','B0222190',3);
INSERT INTO "cds_mspecde" VALUES('100724','T0000010','B0000054',12);
INSERT INTO "cds_mspecde" VALUES('100724','T0000015','B0058512',4);
INSERT INTO "cds_mspecde" VALUES('100724','T0000016','B0000789',5);
INSERT INTO "cds_mspecde" VALUES('100724','T0000049','B0220502',2);
INSERT INTO "cds_mspecde" VALUES('100724','T0000066','B0704461',8);
INSERT INTO "cds_mspecde" VALUES('100724','T0000092','B0848866',7);
INSERT INTO "cds_mspecde" VALUES('100724','T0000101','B0012107',6);
INSERT INTO "cds_mspecde" VALUES('100724','T0000106','B0005703',9);
INSERT INTO "cds_mspecde" VALUES('100724','T0001682','B0000613',10);
INSERT INTO "cds_mspecde" VALUES('100724','T0001757','B0000160',11);
INSERT INTO "cds_mspecde" VALUES('100732','T0000002','B1874154',1);
INSERT INTO "cds_mspecde" VALUES('100732','T0000006','B0222190',3);
INSERT INTO "cds_mspecde" VALUES('100732','T0000010','B0000054',12);
INSERT INTO "cds_mspecde" VALUES('100732','T0000015','B0058512',4);
INSERT INTO "cds_mspecde" VALUES('100732','T0000016','B0000789',5);
INSERT INTO "cds_mspecde" VALUES('100732','T0000049','B0220502',2);
INSERT INTO "cds_mspecde" VALUES('100732','T0000066','B0005729',8);
INSERT INTO "cds_mspecde" VALUES('100732','T0000092','B0452635',7);
INSERT INTO "cds_mspecde" VALUES('100732','T0000101','B0100762',6);
INSERT INTO "cds_mspecde" VALUES('100732','T0000106','B0005703',9);
INSERT INTO "cds_mspecde" VALUES('100732','T0001682','B0000613',10);
INSERT INTO "cds_mspecde" VALUES('100732','T0001757','B0000160',11);
INSERT INTO "cds_mspecde" VALUES('100733','T0000002','B1533344',1);
INSERT INTO "cds_mspecde" VALUES('100733','T0000006','B0220623',3);
INSERT INTO "cds_mspecde" VALUES('100733','T0000015','B0329242',4);
INSERT INTO "cds_mspecde" VALUES('100733','T0000016','B0078300',5);
INSERT INTO "cds_mspecde" VALUES('100733','T0000049','B0220502',2);
INSERT INTO "cds_mspecde" VALUES('100733','T0000066','B0147032',8);
INSERT INTO "cds_mspecde" VALUES('100733','T0000092','B0147031',7);
INSERT INTO "cds_mspecde" VALUES('100733','T0000101','B0149568',6);
INSERT INTO "cds_mspecde" VALUES('100733','T0000106','B0002213',9);
INSERT INTO "cds_mspecde" VALUES('100733','T0001682','B0003908',10);
INSERT INTO "cds_mspecde" VALUES('100733','T0001757','B0001259',11);
INSERT INTO "cds_mspecde" VALUES('100733','T0001804','B1848947',12);
CREATE TABLE "cds_mspecee" (
  "ProdID" varchar(40) NOT NULL,
  "HdrID" varchar(10) NOT NULL,
  "BodyID" varchar(10) NOT NULL,
  "DisplayOrder" int(11) NOT NULL,
  PRIMARY KEY ("ProdID","HdrID","BodyID")
);
CREATE TABLE "cds_mvocde" (
  "ID" varchar(10) NOT NULL,
  "Text" text,
  PRIMARY KEY ("ID")
);
CREATE TABLE "cds_mvocee" (
  "ID" varchar(10) NOT NULL,
  "Text" text,
  PRIMARY KEY ("ID")
);
CREATE TABLE "cds_prod" (
  "ProdID" varchar(40) NOT NULL,
  "CatID" char(2) NOT NULL,
  "MktID" varchar(10) NOT NULL,
  "ImgID" varchar(10) NOT NULL,
  "MfID" varchar(10) NOT NULL,
  "MfPN" varchar(40) NOT NULL,
  "Reserved1" varchar(1) DEFAULT NULL,
  "Reserved2" varchar(1) DEFAULT NULL,
  "Reserved3" varchar(1) DEFAULT NULL,
  "Reserved4" varchar(1) DEFAULT NULL,
  "Reserved5" varchar(1) DEFAULT NULL,
  "Reserved6" varchar(1) DEFAULT NULL,
  "Reserved7" varchar(1) DEFAULT NULL,
  "Reserved8" varchar(1) DEFAULT NULL,
  "Reserved9" varchar(1) DEFAULT NULL,
  "Reserved10" varchar(1) DEFAULT NULL,
  "Reserved11" varchar(1) DEFAULT NULL,
  "Reserved12" varchar(1) DEFAULT NULL,
  "Reserved13" varchar(1) DEFAULT NULL,
  "Reserved14" varchar(1) DEFAULT NULL,
  PRIMARY KEY ("ProdID")
);
INSERT INTO "cds_prod" VALUES('100329','CA','D4648527','I311014','F00058','SP2514N','','','','','','','','','','','','','','');
INSERT INTO "cds_prod" VALUES('100372','CG','D6237673','I517117','F00027','DA-70430','','','','','','','','','','','','','','');
INSERT INTO "cds_prod" VALUES('100724','CA','D6445021','I486654','F00046','STM380215AS','','','','','','','','','','','','','','');
INSERT INTO "cds_prod" VALUES('100732','CA','D6503876','I486654','F00046','STM3160215A','','','','','','','','','','','','','','');
INSERT INTO "cds_prod" VALUES('100733','CA','D6591974','I552213','F00058','HM250JI','','','','','','','','','','','','','','');
CREATE TABLE "cds_skustatus" (
  "StatusCode" varchar(4) NOT NULL,
  "StatusName" varchar(100) NOT NULL,
  PRIMARY KEY ("StatusCode")
);
CREATE TABLE "cds_stdnde" (
  "ProdID" varchar(40) NOT NULL,
  "Description" text NOT NULL,
  PRIMARY KEY ("ProdID")
);
INSERT INTO "cds_stdnde" VALUES('100329','Samsung SpinPoint P120 SP2514N - Festplatte - 250 GB - intern - 3.5" - ATA-133 - 7200 rpm - Puffer: 8 MB');
INSERT INTO "cds_stdnde" VALUES('100372','DIGITUS DA-70430 - Speichereinschubadapter');
INSERT INTO "cds_stdnde" VALUES('100724','Maxtor DiamondMax 21 - Festplatte - 80 GB - intern - 3.5" - SATA-300 - 7200 rpm - Puffer: 2 MB');
INSERT INTO "cds_stdnde" VALUES('100732','Maxtor DiamondMax 21 - Festplatte - 160 GB - intern - 3.5" - ATA-100 - 7200 rpm - Puffer: 2 MB');
INSERT INTO "cds_stdnde" VALUES('100733','Samsung SpinPoint M5S HM250JI - Festplatte - 250 GB - intern - 2.5" - SATA-150 - 5400 rpm - Puffer: 8 MB');
CREATE TABLE "cds_stdnee" (
  "ProdID" varchar(40) NOT NULL,
  "Description" text NOT NULL,
  PRIMARY KEY ("ProdID")
);
CREATE TABLE "cds_unspsc" (
  "ProdID" varchar(40) NOT NULL,
  "CommodityCode" varchar(8) NOT NULL,
  PRIMARY KEY ("ProdID","CommodityCode")
);
CREATE TABLE "cds_unspsc_versioned_commodities" (
  "CommodityCode" varchar(8) NOT NULL,
  "CommodityName" varchar(255) NOT NULL,
  "UNSPSCVersionID" int(11) NOT NULL,
  PRIMARY KEY ("UNSPSCVersionID","CommodityCode")
);
CREATE TABLE "cds_unspsc_versioned_links" (
  "ProdID" varchar(40) NOT NULL,
  "CommodityCode" varchar(8) NOT NULL,
  "UNSPSCVersionID" int(11) NOT NULL,
  "IsDefault" tinyint(1) NOT NULL,
  PRIMARY KEY ("UNSPSCVersionID","ProdID","CommodityCode")
);
CREATE TABLE "cds_unspsc_versions" (
  "UNSPSCVersionID" int(11) NOT NULL,
  "UNSPSCVersion" varchar(80) NOT NULL,
  "IsLatest" tinyint(1) NOT NULL,
  PRIMARY KEY ("UNSPSCVersionID")
);
CREATE TABLE "cds_unspsccommodity" (
  "CommodityCode" varchar(8) NOT NULL,
  "CommodityName" varchar(255) NOT NULL,
  PRIMARY KEY ("CommodityCode")
);
CREATE TABLE "cds_unspscversion" (
  "UNSPSCVersion" varchar(10) NOT NULL,
  PRIMARY KEY ("UNSPSCVersion")
);
CREATE TABLE "cds_vocde" (
  "ID" varchar(10) NOT NULL,
  "Text" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("ID")
);
CREATE TABLE "cds_vocee" (
  "ID" varchar(10) NOT NULL,
  "Text" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("ID")
);
CREATE INDEX "idx_cds_AccCompat1" ON cds_acccompat ("ProdID");
CREATE INDEX "idx_cds_AccCompat2" ON cds_acccompat ("ComplementID");
CREATE INDEX "idx_cds_Atr1" ON cds_atr ("CatID");
CREATE INDEX "idx_cds_Atr2" ON cds_atr ("AtrID");
CREATE INDEX "idx_cds_Atr3" ON cds_atr ("ValID");
CREATE INDEX "idx_cds_Atr4" ON cds_atr ("UnitID");
CREATE INDEX "idx_cds_Cat1" ON cds_cat ("CatID");
CREATE INDEX "idx_cds_Catalog1" ON cds_catalog ("StatusCode");
CREATE INDEX "idx_cds_catalog_info1" ON cds_catalog_info ("StatusCode");
CREATE INDEX "idx_cds_DigContent1" ON cds_digcontent ("MediaTypeID");
CREATE INDEX "idx_cds_digcontent_meta_atr_voc1" ON cds_digcontent_meta_atr_voc ("LanguageCode");
CREATE INDEX "idx_cds_digcontent_meta_value_voc" ON cds_digcontent_meta_value_voc ("LanguageCode");
CREATE INDEX "idx_cds_DigContent_Lang_Links1" ON cds_digcontent_lang_links ("LanguageCode");
CREATE INDEX "idx_cds_DigContent_Links1" ON cds_digcontent_links ("ContentGuid");
CREATE INDEX "idx_cds_DigContent_Region_Links1" ON cds_digcontent_region_links ("RegionCode");
CREATE INDEX "idx_cds_Especde1" ON cds_especde ("BodyID");
CREATE INDEX "idx_cds_Especde2" ON cds_especde ("HdrID");
CREATE INDEX "idx_cds_Especde3" ON cds_especde ("SectID");
CREATE INDEX "idx_cds_Especee1" ON cds_especee ("BodyID");
CREATE INDEX "idx_cds_Especee2" ON cds_especee ("HdrID");
CREATE INDEX "idx_cds_Especee3" ON cds_especee ("SectID");
CREATE INDEX "idx_cds_Metamap1" ON cds_metamap ("DistiID");
CREATE INDEX "idx_cds_Mspecde1" ON cds_mspecde ("BodyID");
CREATE INDEX "idx_cds_Mspecde2" ON cds_mspecde ("HdrID");
CREATE INDEX "idx_cds_Mspecee1" ON cds_mspecee ("BodyID");
CREATE INDEX "idx_cds_Mspecee2" ON cds_mspecee ("HdrID");
CREATE INDEX "idx_cds_Prod1" ON cds_prod ("CatID");
CREATE INDEX "idx_cds_Prod2" ON cds_prod ("MktID");
CREATE INDEX "idx_cds_Prod3" ON cds_prod ("MfID");
CREATE INDEX "idx_cds_UNSPSC1" ON cds_unspsc ("CommodityCode");
CREATE INDEX "idx_cds_UNSPSC_Versioned_Links1" ON cds_unspsc_versioned_links ("ProdID");
CREATE INDEX "idx_cds_UNSPSC_Versioned_Links2" ON cds_unspsc_versioned_links ("CommodityCode");
COMMIT;
