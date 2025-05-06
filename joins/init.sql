CREATE TABLE public.users (
	id serial,
	"name" varchar NULL,
	CONSTRAINT users_pk PRIMARY KEY (id)
);

INSERT INTO public.users
(id, name)
VALUES (1, 'Anton'), (2, 'Ivan'), (3, 'Katya');

CREATE TABLE public.roles (
	id int4 NOT NULL,
	"name" varchar NULL,
	CONSTRAINT roles_pk PRIMARY KEY (id)
);

INSERT INTO public.roles
(id, name)
VALUES (1, 'Admin'), (2, 'User');

CREATE TABLE public.user_roles (
	id serial,
	user_id int4 NOT NULL,
	role_id int4 NOT NULL,
	CONSTRAINT user_roles_pk PRIMARY KEY (id)
);

INSERT INTO public.user_roles
(id, user_id, role_id)
VALUES (1, 1, 1), (2, 2, 2);
