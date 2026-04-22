vectors = require "vectors"
vec2, vec3 = vectors.vec2, vectors.vec3

u = vec2(1, 0)
v = vec2(0, 1)

print(tostring(u))

vec_add = u + v
vec_sub = u - v
vec_scl_mul = 5 * u
dot = u & v
cross = u | v
mag = #u
norm = ~u

print(tostring(vec_add))
print(tostring(vec_sub))
print(tostring(vec_scl_mul))
print(dot)
print(cross)
print(mag)
print(norm)
