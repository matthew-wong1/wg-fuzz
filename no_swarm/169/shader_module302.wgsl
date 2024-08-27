struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(-1000f, 378f), vec2<f32>(738f, -1355f), vec2<f32>(791f, 898f), vec2<f32>(586f, -284f), vec2<f32>(-1430f, -975f), vec2<f32>(-398f, 463f), vec2<f32>(1344f, -1000f), vec2<f32>(-803f, -489f), vec2<f32>(-1371f, 406f), vec2<f32>(-360f, 1003f), vec2<f32>(444f, -375f), vec2<f32>(-379f, 1211f), vec2<f32>(119f, 493f), vec2<f32>(-910f, 140f), vec2<f32>(-1200f, 194f), vec2<f32>(-1479f, -919f), vec2<f32>(209f, -124f), vec2<f32>(-395f, -646f), vec2<f32>(1585f, 1314f), vec2<f32>(881f, 1350f), vec2<f32>(654f, 1068f), vec2<f32>(-360f, -490f), vec2<f32>(723f, -707f), vec2<f32>(-1327f, 210f), vec2<f32>(-302f, -1491f), vec2<f32>(-719f, -100f), vec2<f32>(-338f, -942f), vec2<f32>(144f, -442f), vec2<f32>(2084f, -1551f));

var<private> global1: i32 = 0i;

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32) -> bool {
    global2 = array<Struct_1, 20>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(108f + _wgslsmith_f_op_f32(min(1144f, -2077f)))), 148f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1059f, _wgslsmith_f_op_f32(ceil(-1219f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1121f), _wgslsmith_div_f32(-1739f, -145f), false))), -798f);
    global2 = array<Struct_1, 20>();
    let var_1 = vec4<bool>(all(vec3<bool>(true, any(vec3<bool>(true, true, true)), true)), true, any(vec4<bool>(true, true, true, true)) & all(vec2<bool>(true, arg_0 > u_input.a.x)), true);
    let var_2 = Struct_1(firstLeadingBit(u_input.c.x), vec4<bool>(false, var_1.x, !var_1.x, var_1.x), vec3<u32>(4294967295u ^ ~_wgslsmith_div_u32(u_input.b.x, 74761u), 1u, select(1u, 0u, var_1.x)), false);
    return false;
}

fn func_3() -> vec4<bool> {
    let var_0 = u_input.c.x;
    global1 = _wgslsmith_mult_i32(~firstLeadingBit(21636i), _wgslsmith_dot_vec2_i32(~(max(vec2<i32>(31852i, -1i), u_input.a.wy) ^ ~vec2<i32>(2147483647i, var_0)), abs(min(u_input.c.zy, vec2<i32>(var_0, u_input.c.x))) & ~select(u_input.a.xx, u_input.c.zw, true)));
    global0 = array<vec2<f32>, 29>();
    global2 = array<Struct_1, 20>();
    var var_1 = _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(u_input.b.x, ~1u), u_input.b.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(abs(1u), u_input.b.x, ~4294967295u, ~1u)), firstTrailingBit(max(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u), vec4<u32>(1u, u_input.b.x, 1u, 4294967295u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)))));
    return vec4<bool>(true, func_1(var_0), (select(any(vec3<bool>(true, false, false)), true, false) || true) || true, false);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = ~select(vec4<i32>(arg_1.a, arg_1.a, countOneBits(-arg_1.a), -(~arg_2.a)), ~(-u_input.c) << (vec4<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 1u), 4294967295u, 4294967295u >> (u_input.b.x % 32u)) % vec4<u32>(32u)), arg_1.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(-878f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-2201f)), _wgslsmith_f_op_f32(-349f + -1122f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * -910f), -1040f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1196f))), 839f)));
    var var_2 = arg_2;
    let var_3 = (arg_2.c.x | 4294967295u) << (_wgslsmith_mod_u32(1665u, var_2.c.x & u_input.b.x) % 32u);
    var var_4 = all(select(arg_1.b.ywy, !vec3<bool>(func_1(arg_2.a), true, arg_0), !func_3().xwx));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-var_1.x))), var_1.x, var_1.x, _wgslsmith_f_op_f32(var_1.x * var_1.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(step(401f, _wgslsmith_f_op_f32(floor(1070f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-153f + -428f)), Struct_1(u_input.c.x, func_3(), vec3<u32>(~3023u, ~arg_0.c.x, _wgslsmith_mod_u32(18472u, u_input.b.x)), !arg_1.d), global2[_wgslsmith_index_u32(~arg_0.c.x, 20u)])));
    let var_1 = true;
    global0 = array<vec2<f32>, 29>();
    var var_2 = vec3<u32>(arg_1.c.x, arg_1.c.x, _wgslsmith_mod_u32(0u, max(62047u, ~0u)));
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.x)), var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1481f))) + var_0.x);
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(36953u, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_2, u_input.b.x, u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 5216u, u_input.b.x, arg_2), vec4<u32>(40303u, 1740u, arg_2, u_input.b.x)))), arg_2, ~u_input.b.x), vec4<u32>(_wgslsmith_clamp_u32(arg_2, ~8381u, ~arg_2 & reverseBits(8146u)), u_input.b.x, _wgslsmith_div_u32(_wgslsmith_div_u32(arg_2, reverseBits(arg_2)), arg_2), ~33405u)), 20u)];
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(5747u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.c.x, 20515u, 1u), var_0.c), ~firstTrailingBit(arg_2) >> ((~u_input.b.x ^ _wgslsmith_clamp_u32(var_0.c.x, arg_2, 4294967295u)) % 32u))), 20u)];
    global2 = array<Struct_1, 20>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(~4294967295u, 29u)]);
    global2 = array<Struct_1, 20>();
    return global2[_wgslsmith_index_u32(abs(arg_2), 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 29>();
    var var_0 = vec4<bool>(false, func_1(firstLeadingBit(min(u_input.a.x << (61446u % 32u), i32(-1i) * -2147483647i))), !all(vec3<bool>(false, false, false)), !(!all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)))));
    let var_1 = var_0.x;
    var var_2 = u_input.a.x;
    let var_3 = func_5(true, vec2<bool>(var_0.x, !var_0.x || (_wgslsmith_f_op_f32(func_2(Struct_1(-10997i, vec4<bool>(false, var_0.x, true, true), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), true), global2[_wgslsmith_index_u32(u_input.b.x, 20u)])) < _wgslsmith_f_op_f32(f32(-1f) * -1039f))), 78969u);
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_3.c.x, 48403u), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec4_u32(~vec4<u32>(28076u, u_input.b.x, var_3.c.x, 1739u), select(vec4<u32>(var_3.c.x, 29672u, 81243u, var_3.c.x), vec4<u32>(var_4.c.x, 3012u, 38061u, var_4.c.x), vec4<bool>(var_3.d, false, false, var_4.d))) & select(firstLeadingBit(vec4<u32>(26198u, var_3.c.x, var_3.c.x, var_4.c.x)), firstTrailingBit(vec4<u32>(10415u, 34773u, 0u, 4294967295u)), var_0.x), ~min(select(vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(var_3.c.x, var_4.c.x, 0u, 39177u), var_3.b), select(vec4<u32>(u_input.b.x, u_input.b.x, 871u, 77874u), vec4<u32>(u_input.b.x, 16696u, var_3.c.x, u_input.b.x), true))), 76266i, var_3.a, ~(u_input.c.x >> (~abs(0u) % 32u)), u_input.b.x);
}

