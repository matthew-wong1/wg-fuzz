struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 23>;

var<private> global2: vec2<f32> = vec2<f32>(-1792f, -950f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(sign(186f));
    let var_1 = u_input.a;
    return (_wgslsmith_mod_u32(arg_2.a.a.b.x, select(arg_2.a.b, ~u_input.a, !arg_0)) >> ((var_1 << ((47205u << (~u_input.c % 32u)) % 32u)) % 32u)) >> (_wgslsmith_mult_u32(~0u, var_1) % 32u);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(u_input.c ^ arg_2.x) & (_wgslsmith_mod_u32(u_input.a, arg_2.x) >> (func_3(false, vec3<f32>(1746f, 1130f, 1064f), Struct_4(global1[_wgslsmith_index_u32(1u, 23u)], Struct_2(Struct_1(true, arg_2, true, vec3<i32>(1i, arg_0, arg_0)), 12934u, 56186u))) % 32u)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, arg_2.x, 0u, u_input.c), vec4<u32>(26031u, 106600u, 7704u, arg_2.x)), ~vec4<u32>(arg_2.x, u_input.a, u_input.c, arg_2.x))), 23u)], global1[_wgslsmith_index_u32(u_input.a, 23u)], Struct_1(false, ~(~vec3<u32>(arg_2.x, arg_2.x, arg_2.x)) & reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, arg_2.x), vec3<u32>(4294967295u, u_input.c, 38768u))), any(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), -select(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, 1327i, 39477i), vec3<i32>(u_input.d.x, 9110i, arg_0)), max(vec3<i32>(u_input.d.x, 1i, 1i), vec3<i32>(arg_0, arg_0, 1i)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false))));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-131f + global2.x), -1932f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1475f, -864f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-195f, global2.x)))))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -895f)), -1946f))));
    var var_1 = _wgslsmith_mod_u32(~4294967295u ^ _wgslsmith_mult_u32(var_0.a.b, 1u), arg_2.x);
    var var_2 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(max(min(var_0.b.a.b.zz, vec2<u32>(69943u, 13279u)), firstTrailingBit(vec2<u32>(var_0.c.b.x, var_0.b.c))), ~select(vec2<u32>(4953u, 4294967295u), vec2<u32>(34803u, var_0.c.b.x), vec2<bool>(var_0.c.c, var_0.a.a.a))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c, ~4294967295u), (16901u >> (var_0.b.b % 32u)) ^ _wgslsmith_mod_u32(var_0.c.b.x, 25631u)));
    global0 = all(vec3<bool>(var_0.b.a.a, select(all(vec2<bool>(false, false)), false, all(!vec2<bool>(true, var_0.a.a.a))), true));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3.x)), _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -978f)))));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<f32>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(step(-1177f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-656f, global2.x, true)), -223f))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * arg_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -506f), arg_2.x)));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_i32(u_input.d.x, -2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) + arg_2.zz), max(vec3<u32>(arg_1.x, u_input.a, 130135u), vec3<u32>(arg_1.x, 18140u, u_input.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1714f, -419f, arg_2.x)))), arg_2.x))), _wgslsmith_f_op_f32(func_2(~(1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.d.x, 33248i), vec3<i32>(u_input.d.x, 1i, u_input.b))), arg_2.xw, ~arg_1.xyx, vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * -454f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_2.yy))))), vec2<f32>(-502f, var_0.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-500f, _wgslsmith_f_op_f32(step(global2.x, 1505f)))), var_0.x), -102f)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_i32((i32(-1i) * -2147483647i) >> (1u % 32u), _wgslsmith_add_i32(u_input.d.x, i32(-1i) * -26711i)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.x, 1303f))) + vec2<f32>(515f, -133f)), _wgslsmith_f_op_vec2_f32(-arg_2.xw))), arg_1.www & ~arg_1.xwx, vec3<f32>(global2.x, 207f, 255f))), global2.x);
    return vec3<bool>(all(vec4<bool>(true, -24066i > (arg_0 ^ 1580i), ~u_input.a < ~46270u, true)), any(vec3<bool>(0i != ~arg_0, u_input.a <= _wgslsmith_mod_u32(1u, arg_1.x), any(vec2<bool>(true, true)))), (!any(vec2<bool>(false, true)) && true) && select(73713u > (4294967295u & u_input.a), any(vec4<bool>(true, true, true, true)), true));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: bool) -> vec4<f32> {
    global0 = arg_2;
    let var_0 = Struct_1(arg_2, _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(u_input.a, u_input.a, u_input.c), vec3<u32>(u_input.a, u_input.a, 20562u)), select(vec3<u32>(23492u, 63546u, u_input.c), vec3<u32>(0u, 31353u, 166u), arg_2)), vec3<u32>(4294967295u ^ _wgslsmith_div_u32(u_input.c, 0u), _wgslsmith_add_u32(4294967295u, u_input.a), u_input.c)), !arg_1.x, vec3<i32>(u_input.b, _wgslsmith_clamp_i32(u_input.b, u_input.b, countOneBits(55253i)), u_input.d.x));
    global0 = false;
    global0 = false;
    global2 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(414f - global2.x) - _wgslsmith_f_op_f32(-1000f - arg_0.x)))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(499f, arg_0.x, 1246f, 1693f), vec4<f32>(arg_0.x, global2.x, arg_0.x, 467f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1280f, 1073f, arg_0.x, global2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global2.x, 832f, global2.x))), true)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(614f, 127f)), arg_0.x, 1485f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 23>();
    let var_0 = true;
    global1 = array<Struct_2, 23>();
    let var_1 = Struct_1(!(-firstTrailingBit(u_input.b) >= 1i), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u & u_input.c, 64961u, min(u_input.c, 49402u)), countOneBits(_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.c, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.c, u_input.c)), select(vec3<u32>(u_input.a, 102062u, u_input.c), vec3<u32>(0u, 0u, u_input.c), var_0))), abs(~vec3<u32>(1u, u_input.a, u_input.a)) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.a, 31858u), vec3<u32>(u_input.a, 12100u, u_input.a)) % vec3<u32>(32u))), all(!select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), vec2<bool>(false, false)), vec2<bool>(var_0, true), true & var_0)), vec3<i32>(1i >> (u_input.c % 32u), -u_input.d.x ^ 11485i, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, vec2<i32>(_wgslsmith_sub_i32((var_1.d.x | 1i) & 54272i, 51783i), -28094i), abs(2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1232f, -536f, global2.x) + vec3<f32>(global2.x, -333f, global2.x))), func_1(-52541i, ~vec4<u32>(u_input.a, 1u, 26493u, var_1.b.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, -825f, -283f, 838f)))), !all(vec4<bool>(true, false, var_1.c, var_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 2477f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(508f, 656f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, 467f), vec2<f32>(-484f, global2.x))))))));
}

