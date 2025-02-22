PGDMP     7                    x         
   minimarket    12.3    12.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    26348 
   minimarket    DATABASE     �   CREATE DATABASE minimarket WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';
    DROP DATABASE minimarket;
                postgres    false            �            1259    26500    almacen_categoria    TABLE     p   CREATE TABLE public.almacen_categoria (
    id integer NOT NULL,
    "Nombre" character varying(50) NOT NULL
);
 %   DROP TABLE public.almacen_categoria;
       public         heap    postgres    false            �            1259    26498    almacen_categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.almacen_categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.almacen_categoria_id_seq;
       public          postgres    false    221            �           0    0    almacen_categoria_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.almacen_categoria_id_seq OWNED BY public.almacen_categoria.id;
          public          postgres    false    220            �            1259    26508    almacen_producto    TABLE     �   CREATE TABLE public.almacen_producto (
    id integer NOT NULL,
    "Nombre" character varying(50) NOT NULL,
    "Stock" integer NOT NULL,
    "Precio" numeric(10,2) NOT NULL,
    "Categoria_id" integer NOT NULL
);
 $   DROP TABLE public.almacen_producto;
       public         heap    postgres    false            �            1259    26506    almacen_producto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.almacen_producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.almacen_producto_id_seq;
       public          postgres    false    223            �           0    0    almacen_producto_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.almacen_producto_id_seq OWNED BY public.almacen_producto.id;
          public          postgres    false    222            �            1259    26380 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    26378    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    26390    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    26388    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    26372    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    26370    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    26398 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    26408    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    26406    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    26396    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    26416    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    26414 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    26531    cajero_cliente    TABLE     �   CREATE TABLE public.cajero_cliente (
    id integer NOT NULL,
    "Nombre" character varying(50) NOT NULL,
    "Numero_Documento" character varying(10) NOT NULL,
    "Tipo_Documento_id" integer NOT NULL
);
 "   DROP TABLE public.cajero_cliente;
       public         heap    postgres    false            �            1259    26529    cajero_cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cajero_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.cajero_cliente_id_seq;
       public          postgres    false    225            �           0    0    cajero_cliente_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.cajero_cliente_id_seq OWNED BY public.cajero_cliente.id;
          public          postgres    false    224            �            1259    26539    cajero_documento    TABLE     t   CREATE TABLE public.cajero_documento (
    id integer NOT NULL,
    "Descripcion" character varying(25) NOT NULL
);
 $   DROP TABLE public.cajero_documento;
       public         heap    postgres    false            �            1259    26537    cajero_documento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cajero_documento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cajero_documento_id_seq;
       public          postgres    false    227            �           0    0    cajero_documento_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.cajero_documento_id_seq OWNED BY public.cajero_documento.id;
          public          postgres    false    226            �            1259    26547    cajero_factura    TABLE     �   CREATE TABLE public.cajero_factura (
    id integer NOT NULL,
    "Cantidad" integer NOT NULL,
    "Fecha" timestamp with time zone NOT NULL,
    "Cliente_id" integer NOT NULL,
    "Producto_id" integer NOT NULL
);
 "   DROP TABLE public.cajero_factura;
       public         heap    postgres    false            �            1259    26545    cajero_factura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cajero_factura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.cajero_factura_id_seq;
       public          postgres    false    229            �           0    0    cajero_factura_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.cajero_factura_id_seq OWNED BY public.cajero_factura.id;
          public          postgres    false    228            �            1259    26476    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    26474    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    26362    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    26360    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    26351    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    26349    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    26571    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �
           2604    26503    almacen_categoria id    DEFAULT     |   ALTER TABLE ONLY public.almacen_categoria ALTER COLUMN id SET DEFAULT nextval('public.almacen_categoria_id_seq'::regclass);
 C   ALTER TABLE public.almacen_categoria ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �
           2604    26511    almacen_producto id    DEFAULT     z   ALTER TABLE ONLY public.almacen_producto ALTER COLUMN id SET DEFAULT nextval('public.almacen_producto_id_seq'::regclass);
 B   ALTER TABLE public.almacen_producto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �
           2604    26383    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    26393    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    26375    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    26401    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    26411    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    26419    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    26534    cajero_cliente id    DEFAULT     v   ALTER TABLE ONLY public.cajero_cliente ALTER COLUMN id SET DEFAULT nextval('public.cajero_cliente_id_seq'::regclass);
 @   ALTER TABLE public.cajero_cliente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �
           2604    26542    cajero_documento id    DEFAULT     z   ALTER TABLE ONLY public.cajero_documento ALTER COLUMN id SET DEFAULT nextval('public.cajero_documento_id_seq'::regclass);
 B   ALTER TABLE public.cajero_documento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �
           2604    26550    cajero_factura id    DEFAULT     v   ALTER TABLE ONLY public.cajero_factura ALTER COLUMN id SET DEFAULT nextval('public.cajero_factura_id_seq'::regclass);
 @   ALTER TABLE public.cajero_factura ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �
           2604    26479    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    26365    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    26354    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �          0    26500    almacen_categoria 
   TABLE DATA           9   COPY public.almacen_categoria (id, "Nombre") FROM stdin;
    public          postgres    false    221   �       �          0    26508    almacen_producto 
   TABLE DATA           [   COPY public.almacen_producto (id, "Nombre", "Stock", "Precio", "Categoria_id") FROM stdin;
    public          postgres    false    223   :�       �          0    26380 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   m�       �          0    26390    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   ��       �          0    26372    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   #�       �          0    26398 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   �       �          0    26408    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ��       �          0    26416    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   ��       �          0    26531    cajero_cliente 
   TABLE DATA           _   COPY public.cajero_cliente (id, "Nombre", "Numero_Documento", "Tipo_Documento_id") FROM stdin;
    public          postgres    false    225   
�       �          0    26539    cajero_documento 
   TABLE DATA           =   COPY public.cajero_documento (id, "Descripcion") FROM stdin;
    public          postgres    false    227   @�       �          0    26547    cajero_factura 
   TABLE DATA           ^   COPY public.cajero_factura (id, "Cantidad", "Fecha", "Cliente_id", "Producto_id") FROM stdin;
    public          postgres    false    229   c�       �          0    26476    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   ��       �          0    26362    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   u�       �          0    26351    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �       �          0    26571    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    230   ��       �           0    0    almacen_categoria_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.almacen_categoria_id_seq', 1, true);
          public          postgres    false    220            �           0    0    almacen_producto_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.almacen_producto_id_seq', 1, true);
          public          postgres    false    222            �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 25, true);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 3, true);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    cajero_cliente_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cajero_cliente_id_seq', 1, true);
          public          postgres    false    224            �           0    0    cajero_documento_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cajero_documento_id_seq', 1, true);
          public          postgres    false    226            �           0    0    cajero_factura_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cajero_factura_id_seq', 2, true);
          public          postgres    false    228            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 16, true);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          postgres    false    202                       2606    26505 (   almacen_categoria almacen_categoria_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.almacen_categoria
    ADD CONSTRAINT almacen_categoria_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.almacen_categoria DROP CONSTRAINT almacen_categoria_pkey;
       public            postgres    false    221                       2606    26513 &   almacen_producto almacen_producto_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.almacen_producto
    ADD CONSTRAINT almacen_producto_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.almacen_producto DROP CONSTRAINT almacen_producto_pkey;
       public            postgres    false    223            �
           2606    26527    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �
           2606    26432 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            �
           2606    26395 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            �
           2606    26385    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �
           2606    26423 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �
           2606    26377 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207                       2606    26413 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215                       2606    26447 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            �
           2606    26403    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213                       2606    26421 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            
           2606    26461 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            �
           2606    26521     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213                       2606    26536 "   cajero_cliente cajero_cliente_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.cajero_cliente
    ADD CONSTRAINT cajero_cliente_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.cajero_cliente DROP CONSTRAINT cajero_cliente_pkey;
       public            postgres    false    225                       2606    26544 &   cajero_documento cajero_documento_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.cajero_documento
    ADD CONSTRAINT cajero_documento_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.cajero_documento DROP CONSTRAINT cajero_documento_pkey;
       public            postgres    false    227                       2606    26552 "   cajero_factura cajero_factura_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.cajero_factura
    ADD CONSTRAINT cajero_factura_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.cajero_factura DROP CONSTRAINT cajero_factura_pkey;
       public            postgres    false    229                       2606    26485 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            �
           2606    26369 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �
           2606    26367 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �
           2606    26359 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203                       2606    26578 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    230                       1259    26519 &   almacen_producto_Categoria_id_08593ed4    INDEX     o   CREATE INDEX "almacen_producto_Categoria_id_08593ed4" ON public.almacen_producto USING btree ("Categoria_id");
 <   DROP INDEX public."almacen_producto_Categoria_id_08593ed4";
       public            postgres    false    223            �
           1259    26528    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �
           1259    26443 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            �
           1259    26444 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �
           1259    26429 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            �
           1259    26459 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215                       1259    26458 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215                       1259    26473 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217                       1259    26472 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            �
           1259    26522     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213                       1259    26570 )   cajero_cliente_Tipo_Documento_id_c0ec41d3    INDEX     u   CREATE INDEX "cajero_cliente_Tipo_Documento_id_c0ec41d3" ON public.cajero_cliente USING btree ("Tipo_Documento_id");
 ?   DROP INDEX public."cajero_cliente_Tipo_Documento_id_c0ec41d3";
       public            postgres    false    225                       1259    26568 "   cajero_factura_Cliente_id_91265d12    INDEX     g   CREATE INDEX "cajero_factura_Cliente_id_91265d12" ON public.cajero_factura USING btree ("Cliente_id");
 8   DROP INDEX public."cajero_factura_Cliente_id_91265d12";
       public            postgres    false    229                       1259    26569 #   cajero_factura_Producto_id_d2e4f17a    INDEX     i   CREATE INDEX "cajero_factura_Producto_id_d2e4f17a" ON public.cajero_factura USING btree ("Producto_id");
 9   DROP INDEX public."cajero_factura_Producto_id_d2e4f17a";
       public            postgres    false    229                       1259    26496 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219                       1259    26497 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219                       1259    26580 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    230                        1259    26579 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    230            *           2606    26514 O   almacen_producto almacen_producto_Categoria_id_08593ed4_fk_almacen_categoria_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.almacen_producto
    ADD CONSTRAINT "almacen_producto_Categoria_id_08593ed4_fk_almacen_categoria_id" FOREIGN KEY ("Categoria_id") REFERENCES public.almacen_categoria(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.almacen_producto DROP CONSTRAINT "almacen_producto_Categoria_id_08593ed4_fk_almacen_categoria_id";
       public          postgres    false    223    221    2832            #           2606    26438 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2798    207    211            "           2606    26433 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    211    209    2803            !           2606    26424 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    2793    207            %           2606    26453 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2803    209    215            $           2606    26448 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2811    215    213            '           2606    26467 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2798    217    207            &           2606    26462 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    213    2811    217            +           2606    26553 E   cajero_cliente cajero_cliente_Tipo_Documento_id_c0ec41d3_fk_cajero_do    FK CONSTRAINT     �   ALTER TABLE ONLY public.cajero_cliente
    ADD CONSTRAINT "cajero_cliente_Tipo_Documento_id_c0ec41d3_fk_cajero_do" FOREIGN KEY ("Tipo_Documento_id") REFERENCES public.cajero_documento(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.cajero_cliente DROP CONSTRAINT "cajero_cliente_Tipo_Documento_id_c0ec41d3_fk_cajero_do";
       public          postgres    false    2840    225    227            ,           2606    26558 F   cajero_factura cajero_factura_Cliente_id_91265d12_fk_cajero_cliente_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cajero_factura
    ADD CONSTRAINT "cajero_factura_Cliente_id_91265d12_fk_cajero_cliente_id" FOREIGN KEY ("Cliente_id") REFERENCES public.cajero_cliente(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.cajero_factura DROP CONSTRAINT "cajero_factura_Cliente_id_91265d12_fk_cajero_cliente_id";
       public          postgres    false    2838    229    225            -           2606    26563 I   cajero_factura cajero_factura_Producto_id_d2e4f17a_fk_almacen_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cajero_factura
    ADD CONSTRAINT "cajero_factura_Producto_id_d2e4f17a_fk_almacen_producto_id" FOREIGN KEY ("Producto_id") REFERENCES public.almacen_producto(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.cajero_factura DROP CONSTRAINT "cajero_factura_Producto_id_d2e4f17a_fk_almacen_producto_id";
       public          postgres    false    223    229    2835            (           2606    26486 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    2793    219            )           2606    26491 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2811    219    213            �      x�3�t+*-I,����� .b      �   #   x�3��M�KI,��K�4��4�35�4����� c��      �   3   x�3�L/*p��MLN��2q��R���)��y��%E�)�E\1z\\\ ���      �   c   x�ιD!Q�f�;���q�9�55�Ԍt0��J;ݜ�p��kn���T
�4�@��h��r�StˋjNמ;�r���U�r������A      �   �  x�]�[n�0E��U��j��ۨT!H)Ҕ� ��ݗq�z��sG�:μws�C�wяa�:��^Jmkb��n��RȆ���|�dj��;�?�=@�a�c05��Ҟ� V�f���p��i	s-3�M~��4ib���&LWƜ��`yV�aT�Ae��!�����%'��k�
9��f����b� �vï���ҙ#�qe��
�n�]Ѭ`앱�P�
DN�81����-��9��^Sik�|�X��*�H�Y!!�ȑ\� �~���u
�9��K��:�H� X� �y �E@4��e�%lws!Iz��ڄ|�j��-�1�����m�������6*�|ʟO�J:��@���>�K���/����{�_ t�޳e��W:���J�����Z��+�n�K�W�~�K�>��U��]�S�����Ef��x���ɯ83      �   �  x�}��o�0�������-� �%�z����3�\��"hA����r�.n}�6}�y�-�[���3L��LX��Xϙ+s3�1\%�xtd���ۃ��}˵s贱�C�������4Z��a�"�u��h�-H@	���R  +�s�Y�������'KG*A�C���3����WEg�(��=壬YA��Mφ����)O�V�L"vܕ��M�Nz����;��5J�t�GiT���D`���2b��r(�,��
�W]�u�Et]:oh����Ձ}ן>ĕ�����{Olh���s'ݱ�d�m�1����4�O~\�C,U�a���C(3Y����ȿ�j�.V�E�K���!�s����	�<�϶^\�۽���k������l7�3�É�V�T
�~}�K�	g�0E`���>����7g��xl��G��6��B��3      �      x�3�4�4�2�4�4�2�4�4����� !��      �      x������ � �      �   &   x�3�t*�L�Sp,�L,�47214237�4����� }�      �      x�3�t������� O�      �   7   x�3�4�4202�50�52U02�20�26�50�4�4�2�4F�6�26�I��qqq ��      �   �  x���Mo�0�3�
ĩ���g���*mz�R�i.x�DDNQ�{ͲJXU�z�z<����w\�Pe
�
i��dv�H>u���v���/�����7��*_�E���x��R\cLq}Ʈ�u��딈�XR� �PZ0�L���P��1��\c�"����j,�J�Q��f�ֵ+�1�QT|1UkJ�m7JL�(ܢ􂒺��"v���?W��a"a�q�� Ms5��rw>t�]
���I�&@�j�����!���DX�b"��s)�(pA�� kA"e�|y�	8	�/�f#���X���&��C?d�k|�!˿�g�ύ��Y<9���6�n�����i�%t�}��>մ����K��ܟ������x��5���[��\����pk�)�L^|��h˩�N�	)�
.2�*�*�r&�
Ls˹��J^���,M���JgO      �   �   x�M�M1�5�X���Bq����������w��A@s&�L.�Z"<����ήx�[L��$�OD�)�7z{7�P̩���X��@�_P�rj-i��*�i�x_Cob��:��J�4�޷m��?�Eb      �   �  x����n� E����h�q�e%�����j��@\'R]9/<��;3����̔�u6�!�Pe'��v /�}���+�� ��OO��%�+$�(��5�2��H���8(~��r~�>�U3����җ�>C2�]a���S�O�O���A����9�=�J�K4ڍ�7O�d�oE��"��.
�*J v��t�â�?Z���ܨI�f�������gهK&�ل��Xr(z5�O��4�W�(N���S����Zb>̨�;�  ����?b�Q�9�w��ٍqE|d8S�͵-n�M\2�5f�6����_l��ɫ�/���8��]�|hg/:��Й|P��Q��[�;�2�pr7����񼰕$6R�#��P\R���(JV��2?��VPY1r�P��9"���?�3��
)��#�^�3��@����D��e�d�U�ϧ��O�lL      �     x�=��n�0 F��)����m��b%%�R�mvÏ@kQ�ĉO/��n���;�R�|���:���n(w���n���_�	7���UA�O��"M�r���XH�2ֲ�ݣf	�n�2~z!�o+����+�y�h��@�h���+Ami}-3zV�s�*<�EW]���t�3�K���s�i�R[,�V��-�D�Q�ǭ|X�� Pۖ������&m�I[hG�
V:�	�\�$��8h��d,J\��7r o���)��c<Gp�\�'�|��y l f�     