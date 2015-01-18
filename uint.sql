CREATE TYPE int1;

CREATE FUNCTION int1in(cstring) RETURNS int1
    IMMUTABLE
    LANGUAGE C
    AS '$libdir/uint', 'int1in';

CREATE FUNCTION int1out(int1) RETURNS cstring
    IMMUTABLE
    LANGUAGE C
    AS '$libdir/uint', 'int1out';

CREATE TYPE int1 (
    INPUT = int1in,
    OUTPUT = int1out,
    INTERNALLENGTH = 1,
    PASSEDBYVALUE,
    ALIGNMENT = char
);

CREATE CAST (bigint AS int1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (int AS int1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (double precision AS int1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (numeric AS int1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (oid AS int1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (real AS int1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (smallint AS int1) WITH INOUT AS ASSIGNMENT;

CREATE CAST (int1 AS bigint) WITH INOUT AS IMPLICIT;
CREATE CAST (int1 AS double precision) WITH INOUT AS IMPLICIT;
CREATE CAST (int1 AS money) WITH INOUT AS ASSIGNMENT;
CREATE CAST (int1 AS numeric) WITH INOUT AS IMPLICIT;
CREATE CAST (int1 AS oid) WITH INOUT AS IMPLICIT;
CREATE CAST (int1 AS real) WITH INOUT AS IMPLICIT;
CREATE CAST (int1 AS smallint) WITH INOUT AS IMPLICIT;


CREATE TYPE uint1;

CREATE FUNCTION uint1in(cstring) RETURNS uint1
    IMMUTABLE
    LANGUAGE C
    AS '$libdir/uint', 'uint1in';

CREATE FUNCTION uint1out(uint1) RETURNS cstring
    IMMUTABLE
    LANGUAGE C
    AS '$libdir/uint', 'uint1out';

CREATE TYPE uint1 (
    INPUT = uint1in,
    OUTPUT = uint1out,
    INTERNALLENGTH = 1,
    PASSEDBYVALUE,
    ALIGNMENT = char
);

CREATE CAST (bigint AS uint1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (int AS uint1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (double precision AS uint1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (numeric AS uint1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (oid AS uint1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (real AS uint1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (smallint AS uint1) WITH INOUT AS ASSIGNMENT;

CREATE CAST (uint1 AS bigint) WITH INOUT AS IMPLICIT;
CREATE CAST (uint1 AS double precision) WITH INOUT AS IMPLICIT;
CREATE CAST (uint1 AS money) WITH INOUT AS ASSIGNMENT;
CREATE CAST (uint1 AS numeric) WITH INOUT AS IMPLICIT;
CREATE CAST (uint1 AS oid) WITH INOUT AS IMPLICIT;
CREATE CAST (uint1 AS real) WITH INOUT AS IMPLICIT;
CREATE CAST (uint1 AS smallint) WITH INOUT AS IMPLICIT;


CREATE TYPE uint2;

CREATE FUNCTION uint2in(cstring) RETURNS uint2
    IMMUTABLE
    LANGUAGE C
    AS '$libdir/uint', 'uint2in';

CREATE FUNCTION uint2out(uint2) RETURNS cstring
    IMMUTABLE
    LANGUAGE C
    AS '$libdir/uint', 'uint2out';

CREATE TYPE uint2 (
    INPUT = uint2in,
    OUTPUT = uint2out,
    INTERNALLENGTH = 2,
    PASSEDBYVALUE,
    ALIGNMENT = int2
);

CREATE CAST (bigint AS uint2) WITH INOUT AS ASSIGNMENT;
CREATE CAST (int AS uint2) WITH INOUT AS ASSIGNMENT;
CREATE CAST (double precision AS uint2) WITH INOUT AS ASSIGNMENT;
CREATE CAST (numeric AS uint2) WITH INOUT AS ASSIGNMENT;
CREATE CAST (oid AS uint2) WITH INOUT AS ASSIGNMENT;
CREATE CAST (real AS uint2) WITH INOUT AS ASSIGNMENT;
CREATE CAST (smallint AS uint2) WITH INOUT AS ASSIGNMENT;

CREATE CAST (uint2 AS bigint) WITH INOUT AS IMPLICIT;
CREATE CAST (uint2 AS double precision) WITH INOUT AS IMPLICIT;
CREATE CAST (uint2 AS money) WITH INOUT AS ASSIGNMENT;
CREATE CAST (uint2 AS numeric) WITH INOUT AS IMPLICIT;
CREATE CAST (uint2 AS oid) WITH INOUT AS IMPLICIT;
CREATE CAST (uint2 AS real) WITH INOUT AS IMPLICIT;
CREATE CAST (uint2 AS smallint) WITH INOUT AS ASSIGNMENT;


CREATE TYPE uint4;

CREATE FUNCTION uint4in(cstring) RETURNS uint4
    IMMUTABLE
    LANGUAGE C
    AS '$libdir/uint', 'uint4in';

CREATE FUNCTION uint4out(uint4) RETURNS cstring
    IMMUTABLE
    LANGUAGE C
    AS '$libdir/uint', 'uint4out';

CREATE TYPE uint4 (
    INPUT = uint4in,
    OUTPUT = uint4out,
    INTERNALLENGTH = 4,
    PASSEDBYVALUE,
    ALIGNMENT = int4
);

CREATE CAST (bigint AS uint4) WITH INOUT AS ASSIGNMENT;
CREATE CAST (int AS uint4) WITH INOUT AS ASSIGNMENT;
CREATE CAST (double precision AS uint4) WITH INOUT AS ASSIGNMENT;
CREATE CAST (numeric AS uint4) WITH INOUT AS ASSIGNMENT;
CREATE CAST (oid AS uint4) WITH INOUT AS ASSIGNMENT;
CREATE CAST (real AS uint4) WITH INOUT AS ASSIGNMENT;
CREATE CAST (smallint AS uint4) WITH INOUT AS IMPLICIT;

CREATE CAST (uint4 AS bigint) WITH INOUT AS IMPLICIT;
CREATE CAST (uint4 AS double precision) WITH INOUT AS IMPLICIT;
CREATE CAST (uint4 AS money) WITH INOUT AS ASSIGNMENT;
CREATE CAST (uint4 AS numeric) WITH INOUT AS IMPLICIT;
CREATE CAST (uint4 AS oid) WITH INOUT AS IMPLICIT;
CREATE CAST (uint4 AS real) WITH INOUT AS IMPLICIT;
CREATE CAST (uint4 AS smallint) WITH INOUT AS ASSIGNMENT;


CREATE TYPE uint8;

CREATE FUNCTION uint8in(cstring) RETURNS uint8
    IMMUTABLE
    LANGUAGE C
    AS '$libdir/uint', 'uint8in';

CREATE FUNCTION uint8out(uint8) RETURNS cstring
    IMMUTABLE
    LANGUAGE C
    AS '$libdir/uint', 'uint8out';

CREATE TYPE uint8 (
    INPUT = uint8in,
    OUTPUT = uint8out,
    INTERNALLENGTH = 8,
    PASSEDBYVALUE,
    ALIGNMENT = double
);

CREATE CAST (bigint AS uint8) WITH INOUT AS ASSIGNMENT;
CREATE CAST (int AS uint8) WITH INOUT AS IMPLICIT;
CREATE CAST (double precision AS uint8) WITH INOUT AS ASSIGNMENT;
CREATE CAST (numeric AS uint8) WITH INOUT AS ASSIGNMENT;
CREATE CAST (oid AS uint8) WITH INOUT AS ASSIGNMENT;
CREATE CAST (real AS uint8) WITH INOUT AS ASSIGNMENT;
CREATE CAST (smallint AS uint8) WITH INOUT AS IMPLICIT;

CREATE CAST (uint8 AS bigint) WITH INOUT AS ASSIGNMENT;
CREATE CAST (uint8 AS double precision) WITH INOUT AS IMPLICIT;
CREATE CAST (uint8 AS money) WITH INOUT AS ASSIGNMENT;
CREATE CAST (uint8 AS numeric) WITH INOUT AS IMPLICIT;
CREATE CAST (uint8 AS oid) WITH INOUT AS IMPLICIT;
CREATE CAST (uint8 AS real) WITH INOUT AS IMPLICIT;
CREATE CAST (uint8 AS smallint) WITH INOUT AS ASSIGNMENT;


CREATE FUNCTION uint4_avg_accum(_int8, uint4) RETURNS _int8
    STRICT IMMUTABLE
    LANGUAGE C
    AS '$libdir/uint', 'uint4_avg_accum';

CREATE FUNCTION uint4_sum(int8, uint4) RETURNS int8
    IMMUTABLE
    LANGUAGE C
    AS '$libdir/uint', 'uint4_sum';

CREATE AGGREGATE avg(uint4) (
    SFUNC = uint4_avg_accum,
    STYPE = _int8,
    FINALFUNC = int8_avg,
    INITCOND = '{0,0}'
);

CREATE AGGREGATE sum(uint4) (
    SFUNC = uint4_sum,
    STYPE = int8
);


CREATE CAST (int1 AS uint1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (int1 AS uint2) WITH INOUT AS IMPLICIT;
CREATE CAST (int1 AS uint4) WITH INOUT AS IMPLICIT;
CREATE CAST (int1 AS uint8) WITH INOUT AS IMPLICIT;
CREATE CAST (uint1 AS int1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (uint1 AS uint2) WITH INOUT AS IMPLICIT;
CREATE CAST (uint1 AS uint4) WITH INOUT AS IMPLICIT;
CREATE CAST (uint1 AS uint8) WITH INOUT AS IMPLICIT;
CREATE CAST (uint2 AS int1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (uint2 AS uint1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (uint2 AS uint4) WITH INOUT AS IMPLICIT;
CREATE CAST (uint2 AS uint8) WITH INOUT AS IMPLICIT;
CREATE CAST (uint4 AS int1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (uint4 AS uint1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (uint4 AS uint2) WITH INOUT AS ASSIGNMENT;
CREATE CAST (uint4 AS uint8) WITH INOUT AS IMPLICIT;
CREATE CAST (uint8 AS int1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (uint8 AS uint1) WITH INOUT AS ASSIGNMENT;
CREATE CAST (uint8 AS uint2) WITH INOUT AS ASSIGNMENT;
CREATE CAST (uint8 AS uint4) WITH INOUT AS ASSIGNMENT;
