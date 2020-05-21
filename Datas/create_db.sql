
CREATE TABLE public.Event (
                event_ID VARCHAR NOT NULL,
                accident_number VARCHAR NOT NULL,
                Date DATE NOT NULL,
                location VARCHAR,
                CONSTRAINT event_pk PRIMARY KEY (event_ID, accident_number)
);
COMMENT ON COLUMN public.Event.event_ID IS 'ID de l''accident';
COMMENT ON COLUMN public.Event.accident_number IS 'Numéro de l''acccident';
COMMENT ON COLUMN public.Event.Date IS 'Date de l''évènement';


CREATE INDEX event_idx
 ON public.Event
 ( Date ASC );

CLUSTER event_idx ON Event;

CREATE INDEX event_idx1
 ON public.Event
 ( Date ASC );

CLUSTER event_idx1 ON Event;

CREATE INDEX event_idx2
 ON public.Event
 ( Date ASC, location );

CLUSTER event_idx2 ON Event;

CREATE TABLE public.Event_Details (
                event_ID VARCHAR NOT NULL,
                accident_number VARCHAR NOT NULL,
                injurity_severity VARCHAR,
                investigation_type VARCHAR,
                aircraft_damage VARCHAR,
                weather_condition VARCHAR,
                broad_phase VARCHAR,
                CONSTRAINT event_details_pk PRIMARY KEY (event_ID, accident_number)
);
COMMENT ON COLUMN public.Event_Details.event_ID IS 'ID de l''accident';
COMMENT ON COLUMN public.Event_Details.accident_number IS 'Numéro de l''acccident';
COMMENT ON COLUMN public.Event_Details.injurity_severity IS 'Si il y a eu des morts ou non';
COMMENT ON COLUMN public.Event_Details.investigation_type IS 'Le type d''investigation';
COMMENT ON COLUMN public.Event_Details.aircraft_damage IS 'Etat de l''avion';
COMMENT ON COLUMN public.Event_Details.weather_condition IS 'Condition météorologique';
COMMENT ON COLUMN public.Event_Details.broad_phase IS 'Etape durant lequel l''accident a eu lieu';


CREATE TABLE public.Aircraft (
                registration_aircraft VARCHAR NOT NULL,
                accident_number VARCHAR NOT NULL,
                event_ID VARCHAR NOT NULL,
                aircraft_category VARCHAR,
                model VARCHAR,
                CONSTRAINT aircraft_pk PRIMARY KEY (registration_aircraft, accident_number, event_ID)
);
COMMENT ON COLUMN public.Aircraft.accident_number IS 'Numéro de l''acccident';
COMMENT ON COLUMN public.Aircraft.event_ID IS 'ID de l''accident';
COMMENT ON COLUMN public.Aircraft.aircraft_category IS 'Type de transport aérien';
COMMENT ON COLUMN public.Aircraft.model IS 'Modèle de l''appareil';


CREATE TABLE public.Airport (
                code VARCHAR NOT NULL,
                registration_aircraft VARCHAR NOT NULL,
                accident_number VARCHAR NOT NULL,
                event_ID VARCHAR NOT NULL,
                name VARCHAR,
                country VARCHAR,
                CONSTRAINT airport_pk PRIMARY KEY (code, registration_aircraft, accident_number, event_ID)
);
COMMENT ON COLUMN public.Airport.code IS 'Code d''identification de l''aéroport';
COMMENT ON COLUMN public.Airport.accident_number IS 'Numéro de l''acccident';
COMMENT ON COLUMN public.Airport.event_ID IS 'ID de l''accident';
COMMENT ON COLUMN public.Airport.name IS 'Nom de l''aéroport';
COMMENT ON COLUMN public.Airport.country IS 'pays dans lequel se situe l''aéroport';


CREATE UNIQUE INDEX airport_idx
 ON public.Airport
 ( name ASC, country );

CLUSTER airport_idx ON Airport;

CREATE TABLE public.Aircraft_Details (
                ID_aircraft VARCHAR NOT NULL,
                accident_number VARCHAR NOT NULL,
                event_ID VARCHAR NOT NULL,
                number_engine INTEGER,
                engine_type VARCHAR,
                make VARCHAR,
                FAR VARCHAR,
                schedule VARCHAR,
                CONSTRAINT aircraft_details_pk PRIMARY KEY (ID_aircraft, accident_number, event_ID)
);
COMMENT ON COLUMN public.Aircraft_Details.accident_number IS 'Numéro de l''acccident';
COMMENT ON COLUMN public.Aircraft_Details.event_ID IS 'ID de l''accident';
COMMENT ON COLUMN public.Aircraft_Details.number_engine IS 'Nombre de moteur';
COMMENT ON COLUMN public.Aircraft_Details.engine_type IS 'Type de moteur
';
COMMENT ON COLUMN public.Aircraft_Details.make IS 'Fabricant';
COMMENT ON COLUMN public.Aircraft_Details.FAR IS 'FAR description';


ALTER TABLE public.Event_Details ADD CONSTRAINT event_event_details_fk
FOREIGN KEY (event_ID, accident_number)
REFERENCES public.Event (event_ID, accident_number)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Aircraft ADD CONSTRAINT event_aircraft_fk
FOREIGN KEY (event_ID, accident_number)
REFERENCES public.Event (event_ID, accident_number)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Airport ADD CONSTRAINT event_airport_fk
FOREIGN KEY (event_ID, accident_number)
REFERENCES public.Event (event_ID, accident_number)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Aircraft_Details ADD CONSTRAINT aircraft_aircraft_details_fk
FOREIGN KEY (ID_aircraft, accident_number, event_ID)
REFERENCES public.Aircraft (registration_aircraft, accident_number, event_ID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Airport ADD CONSTRAINT aircraft_airport_fk
FOREIGN KEY (registration_aircraft, accident_number, event_ID)
REFERENCES public.Aircraft (registration_aircraft, accident_number, event_ID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
