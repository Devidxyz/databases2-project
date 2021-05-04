ALTER TABLE SHOP_ADMIN.Felhasznalo MODIFY hash VARCHAR2(60);
ALTER TABLE SHOP_ADMIN.Felhasznalo drop column so;

-- DROP SEQUENCE felhasznalo_seq;
-- DROP SEQUENCE lakcim_seq;

CREATE SEQUENCE felhasznalo_seq START WITH 31; 
ALTER TABLE SHOP_ADMIN.felhasznalo MODIFY (id DEFAULT felhasznalo_seq.NEXTVAL); 

CREATE SEQUENCE lakcim_seq START WITH 935; 
ALTER TABLE SHOP_ADMIN.lakcim MODIFY (id DEFAULT lakcim_seq.NEXTVAL); 

CREATE SEQUENCE rendeles_seq START WITH 1191; 
ALTER TABLE SHOP_ADMIN.Rendeles MODIFY (rendelesSzam DEFAULT rendeles_seq.NEXTVAL);

CREATE SEQUENCE kiszallitas_seq START WITH 1191; 
ALTER TABLE SHOP_ADMIN.Kiszallitas MODIFY (kiszallitasiSzam DEFAULT kiszallitas_seq.NEXTVAL);
