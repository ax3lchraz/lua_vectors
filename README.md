# lua_vectors
Adds basic 2D and 3D vectors and some operators.

To set up the module:
```lua
vectors = require "vectors"
vec2, vec3 = vectors.vec2, vectors.vec3
```

Vector Operations:
```lua
local u = vec2.new(1, 0)
local v = vec2.new(0, 1)

print(tostring(u)) -- tostring converts table {i = n, j = m} to "<n, m>"

vec_add = u + v -- Vector addition
vec_sub = u - v -- Vector subtraction
vec_scl_mul = 5 * u -- Scalar multiplication
dot = u & v -- Dot product
cross = u | v -- Cross product (equivalent to det(u) for 2D vectors)
mag = #u -- Magnitude
norm = ~u -- Normalizes vector to length of 1.0
```

No operation directly modifies an existing vector. Vectors are of the form ```{i = n, j = m}``` so that you may add other information onto the vectors, such as an id or name while still preserving functionality.
