PGDMP     4    7            
    x            base_conhecimento    13.0    13.0 +    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    base_conhecimento    DATABASE     q   CREATE DATABASE base_conhecimento WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
 !   DROP DATABASE base_conhecimento;
                postgres    false            �           0    0    DATABASE base_conhecimento    COMMENT     J   COMMENT ON DATABASE base_conhecimento IS 'Base de conhecimento sistemas';
                   postgres    false    3042            �            1259    16421    tb_funcionalidade    TABLE     ;  CREATE TABLE public.tb_funcionalidade (
    fun_id_fun integer NOT NULL,
    fun_nm_fun character varying(30) NOT NULL,
    fun_id_sis integer NOT NULL,
    fun_id_mod integer NOT NULL,
    fun_dt_ins timestamp with time zone NOT NULL,
    fun_ult_alt timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 %   DROP TABLE public.tb_funcionalidade;
       public         heap    postgres    false            �            1259    16419     tb_funcionalidade_fun_id_fun_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_funcionalidade_fun_id_fun_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tb_funcionalidade_fun_id_fun_seq;
       public          postgres    false    207            �           0    0     tb_funcionalidade_fun_id_fun_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.tb_funcionalidade_fun_id_fun_seq OWNED BY public.tb_funcionalidade.fun_id_fun;
          public          postgres    false    206            �            1259    16413 	   tb_modulo    TABLE     8  CREATE TABLE public.tb_modulo (
    mod_id_mod integer NOT NULL,
    mod_nm_mod character varying(30) NOT NULL,
    mod_ds_mod character varying(50),
    mod_id_sis integer NOT NULL,
    mod_dt_ins timestamp with time zone NOT NULL,
    mod_ult_alt timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.tb_modulo;
       public         heap    postgres    false            �            1259    16411    tb_modulo_mod_id_mod_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_modulo_mod_id_mod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tb_modulo_mod_id_mod_seq;
       public          postgres    false    205            �           0    0    tb_modulo_mod_id_mod_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tb_modulo_mod_id_mod_seq OWNED BY public.tb_modulo.mod_id_mod;
          public          postgres    false    204            �            1259    16429    tb_procedimento    TABLE     G  CREATE TABLE public.tb_procedimento (
    pro_id_pro integer NOT NULL,
    pro_nm_pro character varying(50) NOT NULL,
    pro_ds_pro character varying(50) NOT NULL,
    pro_id_fun integer NOT NULL,
    pro_dt_ins timestamp with time zone NOT NULL,
    pro_ult_alt timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 #   DROP TABLE public.tb_procedimento;
       public         heap    postgres    false            �            1259    16427    tb_procedimento_pro_id_pro_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_procedimento_pro_id_pro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tb_procedimento_pro_id_pro_seq;
       public          postgres    false    209            �           0    0    tb_procedimento_pro_id_pro_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tb_procedimento_pro_id_pro_seq OWNED BY public.tb_procedimento.pro_id_pro;
          public          postgres    false    208            �            1259    16405 
   tb_sistema    TABLE     "  CREATE TABLE public.tb_sistema (
    sis_id_sis integer NOT NULL,
    sis_nm_sis character varying(50) NOT NULL,
    sis_ver_sis character varying(50) NOT NULL,
    sis_dt_ins timestamp with time zone NOT NULL,
    sis_ult_alt timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.tb_sistema;
       public         heap    postgres    false            �            1259    16403    tb_sistema_sis_id_sis_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_sistema_sis_id_sis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tb_sistema_sis_id_sis_seq;
       public          postgres    false    203            �           0    0    tb_sistema_sis_id_sis_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tb_sistema_sis_id_sis_seq OWNED BY public.tb_sistema.sis_id_sis;
          public          postgres    false    202            �            1259    16397 
   tb_usuario    TABLE     T  CREATE TABLE public.tb_usuario (
    usu_id_usu integer NOT NULL,
    usu_nm_usu character varying(50) NOT NULL,
    usu_lg_usu character varying(20) NOT NULL,
    usu_sen_usu character varying(12) NOT NULL,
    usu_dt_ins timestamp with time zone NOT NULL,
    usu_ult_alt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.tb_usuario;
       public         heap    postgres    false            �            1259    16395    tb_usuario_usu_id_usu_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_usuario_usu_id_usu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tb_usuario_usu_id_usu_seq;
       public          postgres    false    201            �           0    0    tb_usuario_usu_id_usu_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tb_usuario_usu_id_usu_seq OWNED BY public.tb_usuario.usu_id_usu;
          public          postgres    false    200            @           2604    16424    tb_funcionalidade fun_id_fun    DEFAULT     �   ALTER TABLE ONLY public.tb_funcionalidade ALTER COLUMN fun_id_fun SET DEFAULT nextval('public.tb_funcionalidade_fun_id_fun_seq'::regclass);
 K   ALTER TABLE public.tb_funcionalidade ALTER COLUMN fun_id_fun DROP DEFAULT;
       public          postgres    false    206    207    207            >           2604    16416    tb_modulo mod_id_mod    DEFAULT     |   ALTER TABLE ONLY public.tb_modulo ALTER COLUMN mod_id_mod SET DEFAULT nextval('public.tb_modulo_mod_id_mod_seq'::regclass);
 C   ALTER TABLE public.tb_modulo ALTER COLUMN mod_id_mod DROP DEFAULT;
       public          postgres    false    205    204    205            B           2604    16432    tb_procedimento pro_id_pro    DEFAULT     �   ALTER TABLE ONLY public.tb_procedimento ALTER COLUMN pro_id_pro SET DEFAULT nextval('public.tb_procedimento_pro_id_pro_seq'::regclass);
 I   ALTER TABLE public.tb_procedimento ALTER COLUMN pro_id_pro DROP DEFAULT;
       public          postgres    false    208    209    209            <           2604    16408    tb_sistema sis_id_sis    DEFAULT     ~   ALTER TABLE ONLY public.tb_sistema ALTER COLUMN sis_id_sis SET DEFAULT nextval('public.tb_sistema_sis_id_sis_seq'::regclass);
 D   ALTER TABLE public.tb_sistema ALTER COLUMN sis_id_sis DROP DEFAULT;
       public          postgres    false    202    203    203            :           2604    16400    tb_usuario usu_id_usu    DEFAULT     ~   ALTER TABLE ONLY public.tb_usuario ALTER COLUMN usu_id_usu SET DEFAULT nextval('public.tb_usuario_usu_id_usu_seq'::regclass);
 D   ALTER TABLE public.tb_usuario ALTER COLUMN usu_id_usu DROP DEFAULT;
       public          postgres    false    200    201    201            �          0    16421    tb_funcionalidade 
   TABLE DATA           t   COPY public.tb_funcionalidade (fun_id_fun, fun_nm_fun, fun_id_sis, fun_id_mod, fun_dt_ins, fun_ult_alt) FROM stdin;
    public          postgres    false    207   i5       �          0    16413 	   tb_modulo 
   TABLE DATA           l   COPY public.tb_modulo (mod_id_mod, mod_nm_mod, mod_ds_mod, mod_id_sis, mod_dt_ins, mod_ult_alt) FROM stdin;
    public          postgres    false    205   �5       �          0    16429    tb_procedimento 
   TABLE DATA           r   COPY public.tb_procedimento (pro_id_pro, pro_nm_pro, pro_ds_pro, pro_id_fun, pro_dt_ins, pro_ult_alt) FROM stdin;
    public          postgres    false    209   &6       �          0    16405 
   tb_sistema 
   TABLE DATA           b   COPY public.tb_sistema (sis_id_sis, sis_nm_sis, sis_ver_sis, sis_dt_ins, sis_ult_alt) FROM stdin;
    public          postgres    false    203   �6       �          0    16397 
   tb_usuario 
   TABLE DATA           n   COPY public.tb_usuario (usu_id_usu, usu_nm_usu, usu_lg_usu, usu_sen_usu, usu_dt_ins, usu_ult_alt) FROM stdin;
    public          postgres    false    201   �6       �           0    0     tb_funcionalidade_fun_id_fun_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tb_funcionalidade_fun_id_fun_seq', 1, true);
          public          postgres    false    206            �           0    0    tb_modulo_mod_id_mod_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tb_modulo_mod_id_mod_seq', 1, true);
          public          postgres    false    204            �           0    0    tb_procedimento_pro_id_pro_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.tb_procedimento_pro_id_pro_seq', 1, true);
          public          postgres    false    208            �           0    0    tb_sistema_sis_id_sis_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tb_sistema_sis_id_sis_seq', 1, true);
          public          postgres    false    202            �           0    0    tb_usuario_usu_id_usu_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tb_usuario_usu_id_usu_seq', 11, true);
          public          postgres    false    200            K           2606    16426 (   tb_funcionalidade tb_funcionalidade_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tb_funcionalidade
    ADD CONSTRAINT tb_funcionalidade_pkey PRIMARY KEY (fun_id_fun);
 R   ALTER TABLE ONLY public.tb_funcionalidade DROP CONSTRAINT tb_funcionalidade_pkey;
       public            postgres    false    207            I           2606    16418    tb_modulo tb_modulo_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tb_modulo
    ADD CONSTRAINT tb_modulo_pkey PRIMARY KEY (mod_id_mod);
 B   ALTER TABLE ONLY public.tb_modulo DROP CONSTRAINT tb_modulo_pkey;
       public            postgres    false    205            M           2606    16434 $   tb_procedimento tb_procedimento_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tb_procedimento
    ADD CONSTRAINT tb_procedimento_pkey PRIMARY KEY (pro_id_pro);
 N   ALTER TABLE ONLY public.tb_procedimento DROP CONSTRAINT tb_procedimento_pkey;
       public            postgres    false    209            G           2606    16410    tb_sistema tb_sistema_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tb_sistema
    ADD CONSTRAINT tb_sistema_pkey PRIMARY KEY (sis_id_sis);
 D   ALTER TABLE ONLY public.tb_sistema DROP CONSTRAINT tb_sistema_pkey;
       public            postgres    false    203            E           2606    16402    tb_usuario tb_usuario_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT tb_usuario_pkey PRIMARY KEY (usu_id_usu);
 D   ALTER TABLE ONLY public.tb_usuario DROP CONSTRAINT tb_usuario_pkey;
       public            postgres    false    201            O           2606    16440    tb_funcionalidade fk_id_mod    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_funcionalidade
    ADD CONSTRAINT fk_id_mod FOREIGN KEY (fun_id_mod) REFERENCES public.tb_modulo(mod_id_mod);
 E   ALTER TABLE ONLY public.tb_funcionalidade DROP CONSTRAINT fk_id_mod;
       public          postgres    false    205    2889    207            P           2606    16445    tb_procedimento fk_id_pro    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_procedimento
    ADD CONSTRAINT fk_id_pro FOREIGN KEY (pro_id_fun) REFERENCES public.tb_funcionalidade(fun_id_fun);
 C   ALTER TABLE ONLY public.tb_procedimento DROP CONSTRAINT fk_id_pro;
       public          postgres    false    2891    207    209            N           2606    16435    tb_modulo fk_id_sis    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_modulo
    ADD CONSTRAINT fk_id_sis FOREIGN KEY (mod_id_sis) REFERENCES public.tb_sistema(sis_id_sis);
 =   ALTER TABLE ONLY public.tb_modulo DROP CONSTRAINT fk_id_sis;
       public          postgres    false    2887    205    203            �   B   x�3�tNLI,.)�WHIUK-JJ�4B##]CC]CcC3+#+C=CCKCc]c��\1z\\\ �Gc      �   [   x�3�tJ�KM�L�<��(3��3 �(Q� 1=175�$_!%U!�4/93?*o�id`d�kh�kh�`hfeb`eb�gadjfj�k`�_�+F��� n�F      �   J   x�3�tNLI,.)J�K�WK-JJ���+��BE9��tu�ͬLL�����--�Lu���r��qqq �F      �   A   x�3��-�)�,N-*�s��3�3�4202�54�54V04�22�24�32�46��5  ����� d��      �   S   x�3����,>��X�MO!%_!�(1%�3(�Z�W ����q��+�Y��Y[���������� ��     