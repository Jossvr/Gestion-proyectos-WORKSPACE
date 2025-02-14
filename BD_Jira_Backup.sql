PGDMP  
    8                 }         
   BD_AppJira    17.2    17.2 $               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    16429 
   BD_AppJira    DATABASE        CREATE DATABASE "BD_AppJira" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "BD_AppJira";
                     postgres    false            �            1259    16470 	   auditoria    TABLE     �   CREATE TABLE public.auditoria (
    id_registro integer NOT NULL,
    "acción" character varying(255) NOT NULL,
    fecha_hora timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id_usuario integer
);
    DROP TABLE public.auditoria;
       public         heap r       postgres    false            �            1259    16469    auditoria_id_registro_seq    SEQUENCE     �   CREATE SEQUENCE public.auditoria_id_registro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.auditoria_id_registro_seq;
       public               postgres    false    224                       0    0    auditoria_id_registro_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.auditoria_id_registro_seq OWNED BY public.auditoria.id_registro;
          public               postgres    false    223            �            1259    16457    busqueda    TABLE     �   CREATE TABLE public.busqueda (
    "id_búsqueda" integer NOT NULL,
    "término" character varying(100) NOT NULL,
    fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id_usuario integer
);
    DROP TABLE public.busqueda;
       public         heap r       postgres    false            �            1259    16456    busqueda_id_búsqueda_seq    SEQUENCE     �   CREATE SEQUENCE public."busqueda_id_búsqueda_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."busqueda_id_búsqueda_seq";
       public               postgres    false    222                       0    0    busqueda_id_búsqueda_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."busqueda_id_búsqueda_seq" OWNED BY public.busqueda."id_búsqueda";
          public               postgres    false    221            �            1259    16442    proyecto    TABLE     �   CREATE TABLE public.proyecto (
    id_proyecto integer NOT NULL,
    nombre character varying(100) NOT NULL,
    "descripción" text,
    "fecha_creación" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id_usuario integer
);
    DROP TABLE public.proyecto;
       public         heap r       postgres    false            �            1259    16441    proyecto_id_proyecto_seq    SEQUENCE     �   CREATE SEQUENCE public.proyecto_id_proyecto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.proyecto_id_proyecto_seq;
       public               postgres    false    220                       0    0    proyecto_id_proyecto_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.proyecto_id_proyecto_seq OWNED BY public.proyecto.id_proyecto;
          public               postgres    false    219            �            1259    16431    usuario    TABLE       CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    correo character varying(100) NOT NULL,
    "contraseña" character varying(255) NOT NULL,
    foto_perfil bytea
);
    DROP TABLE public.usuario;
       public         heap r       postgres    false            �            1259    16430    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public               postgres    false    218                       0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
          public               postgres    false    217            k           2604    16473    auditoria id_registro    DEFAULT     ~   ALTER TABLE ONLY public.auditoria ALTER COLUMN id_registro SET DEFAULT nextval('public.auditoria_id_registro_seq'::regclass);
 D   ALTER TABLE public.auditoria ALTER COLUMN id_registro DROP DEFAULT;
       public               postgres    false    223    224    224            i           2604    16460    busqueda id_búsqueda    DEFAULT     �   ALTER TABLE ONLY public.busqueda ALTER COLUMN "id_búsqueda" SET DEFAULT nextval('public."busqueda_id_búsqueda_seq"'::regclass);
 F   ALTER TABLE public.busqueda ALTER COLUMN "id_búsqueda" DROP DEFAULT;
       public               postgres    false    221    222    222            g           2604    16445    proyecto id_proyecto    DEFAULT     |   ALTER TABLE ONLY public.proyecto ALTER COLUMN id_proyecto SET DEFAULT nextval('public.proyecto_id_proyecto_seq'::regclass);
 C   ALTER TABLE public.proyecto ALTER COLUMN id_proyecto DROP DEFAULT;
       public               postgres    false    219    220    220            f           2604    16434    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public               postgres    false    218    217    218                      0    16470 	   auditoria 
   TABLE DATA           S   COPY public.auditoria (id_registro, "acción", fecha_hora, id_usuario) FROM stdin;
    public               postgres    false    224   +                 0    16457    busqueda 
   TABLE DATA           Q   COPY public.busqueda ("id_búsqueda", "término", fecha, id_usuario) FROM stdin;
    public               postgres    false    222   1+                 0    16442    proyecto 
   TABLE DATA           f   COPY public.proyecto (id_proyecto, nombre, "descripción", "fecha_creación", id_usuario) FROM stdin;
    public               postgres    false    220   N+                 0    16431    usuario 
   TABLE DATA           c   COPY public.usuario (id_usuario, nombre, apellido, correo, "contraseña", foto_perfil) FROM stdin;
    public               postgres    false    218   k+                  0    0    auditoria_id_registro_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.auditoria_id_registro_seq', 1, false);
          public               postgres    false    223                       0    0    busqueda_id_búsqueda_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."busqueda_id_búsqueda_seq"', 1, false);
          public               postgres    false    221                       0    0    proyecto_id_proyecto_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.proyecto_id_proyecto_seq', 1, false);
          public               postgres    false    219                        0    0    usuario_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, false);
          public               postgres    false    217            v           2606    16476    auditoria auditoria_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_pkey PRIMARY KEY (id_registro);
 B   ALTER TABLE ONLY public.auditoria DROP CONSTRAINT auditoria_pkey;
       public                 postgres    false    224            t           2606    16463    busqueda busqueda_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.busqueda
    ADD CONSTRAINT busqueda_pkey PRIMARY KEY ("id_búsqueda");
 @   ALTER TABLE ONLY public.busqueda DROP CONSTRAINT busqueda_pkey;
       public                 postgres    false    222            r           2606    16450    proyecto proyecto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT proyecto_pkey PRIMARY KEY (id_proyecto);
 @   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT proyecto_pkey;
       public                 postgres    false    220            n           2606    16440    usuario usuario_correo_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_correo_key UNIQUE (correo);
 D   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_correo_key;
       public                 postgres    false    218            p           2606    16438    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public                 postgres    false    218            y           2606    16477 #   auditoria auditoria_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 M   ALTER TABLE ONLY public.auditoria DROP CONSTRAINT auditoria_id_usuario_fkey;
       public               postgres    false    4720    224    218            x           2606    16464 !   busqueda busqueda_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.busqueda
    ADD CONSTRAINT busqueda_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 K   ALTER TABLE ONLY public.busqueda DROP CONSTRAINT busqueda_id_usuario_fkey;
       public               postgres    false    4720    218    222            w           2606    16451 !   proyecto proyecto_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT proyecto_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 K   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT proyecto_id_usuario_fkey;
       public               postgres    false    4720    220    218                  x������ � �            x������ � �            x������ � �            x������ � �     