
CREATE TABLE public.Event (
                event_ID VARCHAR NOT NULL,
                accident_number VARCHAR NOT NULL,
                Date DATE,
                broad_phase VARCHAR,
                weather_condition VARCHAR,
                aircraft_damage VARCHAR,
                investigation_type VARCHAR,
                injurity_severity VARCHAR,
                CONSTRAINT event_pk PRIMARY KEY (event_ID, accident_number)
);
COMMENT ON COLUMN public.Event.event_ID IS 'ID de l''accident';
COMMENT ON COLUMN public.Event.accident_number IS 'Numéro de l''acccident';
COMMENT ON COLUMN public.Event.Date IS 'Date de l''évènement';
COMMENT ON COLUMN public.Event.broad_phase IS 'Etape durant lequel l''accident a eu lieu';
COMMENT ON COLUMN public.Event.weather_condition IS 'Condition météorologique';
COMMENT ON COLUMN public.Event.aircraft_damage IS 'Etat de l''avion';
COMMENT ON COLUMN public.Event.investigation_type IS 'Le type d''investigation';
COMMENT ON COLUMN public.Event.injurity_severity IS 'Si il y a eu des morts ou non';


CREATE UNIQUE INDEX event_idx
 ON public.Event
 ( Date ASC );

CREATE TABLE public.Locations (
                Location VARCHAR NOT NULL,
                event_ID VARCHAR NOT NULL,
                accident_number VARCHAR NOT NULL,
                Latitude REAL,
                Longitude REAL,
                CONSTRAINT locations_pk PRIMARY KEY (Location, event_ID, accident_number)
);
COMMENT ON COLUMN public.Locations.event_ID IS 'ID de l''accident';
COMMENT ON COLUMN public.Locations.accident_number IS 'Numéro de l''acccident';


CREATE UNIQUE INDEX locations_idx
 ON public.Locations
 ( Location ASC );

CREATE UNIQUE INDEX locations_idx1
 ON public.Locations
 ( Location ASC );

CLUSTER locations_idx1 ON Locations;

CREATE TABLE public.Aircraft (
                registration_number VARCHAR NOT NULL,
                accident_number VARCHAR NOT NULL,
                event_ID VARCHAR NOT NULL,
                engine_type VARCHAR,
                make VARCHAR,
                aircraft_category VARCHAR,
                model VARCHAR,
                number_engine INTEGER,
                FAR VARCHAR,
                schedule VARCHAR,
                CONSTRAINT aircraft_pk PRIMARY KEY (registration_number, accident_number, event_ID)
);
COMMENT ON COLUMN public.Aircraft.accident_number IS 'Numéro de l''acccident';
COMMENT ON COLUMN public.Aircraft.event_ID IS 'ID de l''accident';
COMMENT ON COLUMN public.Aircraft.aircraft_category IS 'Type de transport aérien';
COMMENT ON COLUMN public.Aircraft.model IS 'Modèle de l''appareil';


CREATE INDEX aircraft_idx
 ON public.Aircraft
 ( aircraft_category ASC );

CLUSTER aircraft_idx ON Aircraft;

CREATE INDEX aircraft_idx1
 ON public.Aircraft
 ( aircraft_category );

CLUSTER aircraft_idx1 ON Aircraft;

CREATE TABLE public.Airport (
                Code VARCHAR NOT NULL,
                registration_number VARCHAR NOT NULL,
                accident_number VARCHAR NOT NULL,
                event_ID VARCHAR NOT NULL,
                Country VARCHAR,
                Name VARCHAR,
                CONSTRAINT airport_pk PRIMARY KEY (Code, registration_number, accident_number, event_ID)
);
COMMENT ON COLUMN public.Airport.accident_number IS 'Numéro de l''acccident';
COMMENT ON COLUMN public.Airport.event_ID IS 'ID de l''accident';


CREATE UNIQUE INDEX airport_idx
 ON public.Airport
 ( Name ASC );

CLUSTER airport_idx ON Airport;

ALTER TABLE public.Aircraft ADD CONSTRAINT event_aircraft_fk
FOREIGN KEY (event_ID, accident_number)
REFERENCES public.Event (event_ID, accident_number)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Locations ADD CONSTRAINT event_locations_fk
FOREIGN KEY (event_ID, accident_number)
REFERENCES public.Event (event_ID, accident_number)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Airport ADD CONSTRAINT aircraft_airport_fk
FOREIGN KEY (registration_number, accident_number, event_ID)
REFERENCES public.Aircraft (registration_number, accident_number, event_ID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;