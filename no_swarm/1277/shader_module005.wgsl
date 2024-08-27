struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: f32;

var<private> global2: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(87472u, 34464u, 1u, 43215u), vec4<u32>(1139u, 17779u, 57418u, 42533u), vec4<u32>(0u, 5944u, 1u, 1u), vec4<u32>(68816u, 36796u, 50358u, 61242u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(71958u, 1u, 10691u, 4294967295u), vec4<u32>(37918u, 4294967295u, 1u, 13275u), vec4<u32>(0u, 0u, 4294967295u, 60075u), vec4<u32>(68474u, 43354u, 1u, 71311u), vec4<u32>(1u, 31172u, 74287u, 53728u), vec4<u32>(0u, 1u, 7252u, 1u), vec4<u32>(60062u, 6768u, 1u, 0u));

var<private> global3: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_2(Struct_1(!global0[_wgslsmith_index_u32(firstTrailingBit(global3.x), 26u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.e.x)))), _wgslsmith_mod_vec2_i32(abs(-vec2<i32>(u_input.a, arg_1.c.x)), -arg_0.c), !arg_1.d, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.e.x, 1f)))), vec3<bool>(true, !any(vec2<bool>(true, true)), 1000f > arg_0.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.e.x + _wgslsmith_div_f32(arg_1.b, arg_0.b)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.e.x), arg_0.e.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-353f, 662f)))))));
    global0 = array<bool, 26>();
    var var_1 = select(!(!select(vec4<bool>(arg_1.a, false, arg_1.d, false), !vec4<bool>(false, arg_1.a, global0[_wgslsmith_index_u32(global3.x, 26u)], arg_0.d), arg_0.e.x <= var_0.a.b)), !(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], var_0.a.d, arg_1.a, true), vec4<bool>(true, var_0.a.a, true, true), vec4<bool>(var_0.b.x, var_0.b.x, false, arg_0.a)))), true & global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x >> (~u_input.b.x % 32u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(global3.x, 1u), u_input.b.wz, global0[_wgslsmith_index_u32(global3.x, 26u)]), vec2<u32>(0u, 8342u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(34056u, 1u), abs(33832u))), 26u)]);
    let var_2 = !var_0.b;
    var var_3 = _wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.a.c.x, _wgslsmith_dot_vec2_i32(var_0.a.c, vec2<i32>(-11875i, 1i)), -1i, var_0.a.c.x) ^ vec4<i32>(firstTrailingBit(17268i), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.x, var_0.a.c.x), arg_0.c), arg_1.c.x, 11069i), vec4<i32>(var_0.a.c.x, arg_0.c.x, -_wgslsmith_mult_i32(36218i, abs(arg_1.c.x)), -select(arg_0.c.x, arg_0.c.x, var_0.b.x) << (global3.x % 32u)));
    return _wgslsmith_f_op_f32(1778f - _wgslsmith_f_op_f32(-arg_0.e.x));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1603f, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, 2034f) - _wgslsmith_f_op_f32(-1962f + -443f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(true, 1837f, vec2<i32>(u_input.a, arg_3.c.c.x), true, vec2<f32>(285f, arg_0.c)), arg_3.c)) * _wgslsmith_f_op_f32(282f - arg_2)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -656f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -283f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_3.c.b, 1352f) - vec3<f32>(969f, 1126f, -647f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0.a.b, 958f) - vec3<f32>(-777f, arg_2, 1873f))), vec3<f32>(_wgslsmith_f_op_f32(max(-856f, arg_1.x)), _wgslsmith_f_op_f32(-1167f + arg_3.c.e.x), _wgslsmith_f_op_f32(select(arg_3.c.e.x, arg_0.a.e.x, true))))));
    var var_1 = select(select(!arg_0.b, arg_0.b, !select(select(vec3<bool>(arg_3.c.a, true, false), arg_0.b, true), arg_0.b, select(arg_0.b, vec3<bool>(false, arg_3.e, true), false))), arg_0.b, vec3<bool>(!((arg_2 != 1076f) == any(arg_0.b)), arg_0.b.x, false));
    global1 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_3.c, arg_3.c))));
    let var_2 = -43759i;
    global0 = array<bool, 26>();
    return Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-var_0.x))));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: Struct_4) -> vec2<f32> {
    var var_0 = select(_wgslsmith_sub_i32(9534i, u_input.a), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 45792i)), vec3<i32>(i32(-1i) * -48233i, arg_2.a.c.x >> (30575u % 32u), u_input.a)), firstTrailingBit(_wgslsmith_clamp_i32(-1i, arg_2.a.c.x, firstLeadingBit(u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.c, arg_2.a.e.x))) - arg_2.a.b) < -822f);
    global3 = vec2<u32>(1u | _wgslsmith_sub_u32(~(~global3.x), ~692u), 0u);
    var var_1 = u_input.b.xzz;
    var_1 = firstTrailingBit(vec3<u32>(arg_1, max(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(56681u, 2989u), 12u)], _wgslsmith_add_vec4_u32(vec4<u32>(global3.x, arg_1, 21690u, global3.x), u_input.b)), ~(u_input.b.x & 0u)), _wgslsmith_div_u32(0u, var_1.x)));
    var var_2 = _wgslsmith_add_i32(18357i, ~(~1i >> (global3.x % 32u)));
    return _wgslsmith_f_op_vec2_f32(trunc(arg_3.a));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec3<bool>) -> vec4<i32> {
    let var_0 = Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1039f)), 966f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(642f, -781f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1323f, -286f), vec2<f32>(-1074f, -556f))))) + _wgslsmith_f_op_vec2_f32(func_4(global0[_wgslsmith_index_u32(49039u, 26u)] && arg_2.x, u_input.b.x, Struct_2(Struct_1(arg_0.x, -1000f, vec2<i32>(u_input.a, -41092i), true, vec2<f32>(-335f, 183f)), vec3<bool>(arg_0.x, arg_0.x, false), -1015f), func_2(Struct_2(Struct_1(false, -2639f, vec2<i32>(1i, 1i), true, vec2<f32>(-2194f, -545f)), vec3<bool>(false, false, global0[_wgslsmith_index_u32(46740u, 26u)]), 1560f), vec2<f32>(635f, -468f), -988f, Struct_3(vec2<u32>(38822u, 1u), 29541i, Struct_1(arg_0.x, -1420f, vec2<i32>(u_input.a, u_input.a), arg_1.x, vec2<f32>(1208f, -911f)), 32427i, arg_2.x)))))));
    global2 = array<vec4<u32>, 12>();
    let var_1 = _wgslsmith_add_u32(15673u, 1u);
    global3 = u_input.b.zw;
    let var_2 = func_2(Struct_2(Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(636f * var_0.a.x) * _wgslsmith_div_f32(263f, -648f)), vec2<i32>(u_input.a | u_input.a, min(u_input.a, u_input.a)), true, vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(max(var_0.a.x, -463f)))), !arg_2, -1206f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1931f, -816f), vec2<f32>(-836f, 163f)))), _wgslsmith_f_op_f32(-var_0.a.x), Struct_3(u_input.b.xy, _wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(3015i, 40463i, 2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, 0i, 24344i)), ~vec4<i32>(1i, 29144i, -1i, u_input.a))), Struct_1(all(vec4<bool>(true, arg_0.x, global0[_wgslsmith_index_u32(1u, 26u)], true)), -687f, ~(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(1i, u_input.a)), arg_1.x, var_0.a), u_input.a, !any(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 26u)], false, false), arg_0, arg_1.x))));
    return ~_wgslsmith_mult_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 27358i, u_input.a)) >> (u_input.b % vec4<u32>(32u)), vec4<i32>(reverseBits(u_input.a), ~_wgslsmith_mult_i32(u_input.a, 0i), u_input.a, countOneBits(_wgslsmith_mod_i32(-8709i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 148f;
    var var_0 = -firstLeadingBit(func_1(select(select(vec3<bool>(global0[_wgslsmith_index_u32(41344u, 26u)], false, global0[_wgslsmith_index_u32(1u, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(40807u, 26u)], global0[_wgslsmith_index_u32(global3.x, 26u)], global0[_wgslsmith_index_u32(global3.x, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], false, global0[_wgslsmith_index_u32(4294967295u, 26u)])), !vec3<bool>(false, global0[_wgslsmith_index_u32(39578u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(global3.x, 26u)], global0[_wgslsmith_index_u32(global3.x, 26u)], global0[_wgslsmith_index_u32(0u, 26u)])), vec2<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], true, true)), true), !(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 26u)]))));
    var var_1 = 59951u;
    let var_2 = Struct_2(Struct_1(false, _wgslsmith_div_f32(-230f, _wgslsmith_f_op_vec2_f32(func_4(all(vec4<bool>(true, true, false, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 4294967295u, u_input.b.x, 1u), vec4<u32>(global3.x, global3.x, global3.x, u_input.b.x)), Struct_2(Struct_1(false, 526f, vec2<i32>(var_0.x, -258i), global0[_wgslsmith_index_u32(18527u, 26u)], vec2<f32>(-2063f, -1571f)), vec3<bool>(true, false, true), -683f), Struct_4(vec2<f32>(-592f, -468f)))).x), vec2<i32>(var_0.x >> (_wgslsmith_mult_u32(u_input.b.x, 17925u) % 32u), ~min(0i, u_input.a)), true & global0[_wgslsmith_index_u32(~32241u, 26u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-863f, -507f)), 1f) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-1468f)), _wgslsmith_f_op_f32(-171f * -584f)))), !(!select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(37617u, 26u)], global0[_wgslsmith_index_u32(global3.x, 26u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(global3.x, 26u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(27898u, 26u)])), vec3<bool>(true, true, true), any(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], false)), -140f, vec2<i32>(u_input.a, -67071i) | var_0.zx, global0[_wgslsmith_index_u32(70933u, 26u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(278f, -437f))), Struct_1(!global0[_wgslsmith_index_u32(1u, 26u)], -2155f, _wgslsmith_add_vec2_i32(vec2<i32>(17298i, 19133i), vec2<i32>(var_0.x, u_input.a)), global0[_wgslsmith_index_u32(4294967295u, 26u)] | global0[_wgslsmith_index_u32(u_input.b.x, 26u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1121f, 223f)))))));
    var var_3 = func_2(var_2, var_2.a.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_3(~countOneBits(vec2<u32>(global3.x, 57821u)), _wgslsmith_mod_i32(~(-u_input.a), -_wgslsmith_dot_vec3_i32(var_0.zyy, var_0.xyz)), var_2.a, 1i >> (u_input.b.x % 32u), var_2.a.c.x > var_2.a.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1148f - var_2.a.b))))), var_2.a.c.x, u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, var_2.a.e.x, var_2.c)))));
}

