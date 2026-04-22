local vectors = {
    vec2 = {mt = {}},
    vec3 = {mt = {}}
}

local vec2, vec3 = vectors.vec2, vectors.vec3
vec2.__index, vec3.__index = vec2, vec3

function vec2.new(i, j)
    local i, j = i, j
    if not (i and j) then i, j = 0, 0 end
    local vec = {i = i, j = j}
    setmetatable(vec, vec2.mt)
    return vec
end

function vec2:add(vec) return vec2.new(self.i + vec.i, self.j + vec.j) end
vec2.mt.__add = vec2.add

function vec2:sub(vec) return vec2.new(self.i - vec.i, self.j - vec.j) end
vec2.mt.__sub = vec2.sub

function vec2:scl(scl)
    if type(self) == "number" then self, scl = scl, self end
    return vec2.new(scl * self.i, scl * self.j)
end
vec2.mt.__mul = vec2.scl

function vec2:dot(vec) return self.i * vec.i + self.j * vec.j end
vec2.mt.__band = vec2.dot

function vec2:cross(vec) return self.i * vec.j - self.j * vec.i end
vec2.mt.__bor = vec2.cross

function vec2:mag() return math.sqrt(self.i^2 + self.j^2) end
vec2.mt.__len = vec2.mag

function vec2:neg() return -1 * self end
vec2.mt.__unm = vec2.neg

function vec2:norm() return self * (1 / #self) end
vec2.mt.__bnot = vec2.norm

function vec2:str() return "<"..self.i..", "..self.j..">" end
vec2.mt.__tostring = vec2.str

function vec3.new(i, j, k)
    local i, j, k = i, j, k
    if not (i and j and k) then i, j, k = 0, 0, 0 end
    local vec = {i = i, j = j, k = k}
    setmetatable(vec, vec3.mt)
    return vec
end

function vec3:add(vec) return vec3.new(self.i + vec.i, self.j + vec.j, self.k + vec.k) end
vec3.mt.__add = vec3.add

function vec3:sub(vec) return vec3.new(self.i - vec.i, self.j - vec.j, self.k - vec.k) end
vec3.mt.__sub = vec3.sub

function vec3:scl(scl)
    if type(self) == "number" then self, scl = scl, self end
    return vec3.new(scl * self.i, scl * self.j, scl * self.k)
end
vec3.mt.__mul = vec3.scl

function vec3:dot(vec) return self.i * vec.i + self.j * vec.j + self.k * vec.k end
vec3.mt.__band = vec3.dot

function vec3:cross(vec)
    return vec3.new(self.j * vec.k - self.k * vec.j, self.k * vec.i - self.i * vec.k, self.i * vec.j - self.j * vec.i)
end
vec3.mt.__bor = vec3.cross

function vec3:mag() return math.sqrt(self.i^2 + self.j^2 + self.k^2) end
vec3.mt.__len = vec3.mag

function vec3:neg() return -1 * self end
vec3.mt.__unm = vec3.neg

function vec3:norm() return self * (1 / #self) end
vec3.mt.__bnot = vec3.norm

function vec3:str() return "<"..self.i..", "..self.j..", "..self.k..">" end
vec3.mt.__tostring = vec3.str

return vectors
