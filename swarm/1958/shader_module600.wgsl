struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<i32, 4>;

var<private> global2: array<f32, 11> = array<f32, 11>(539f, 2022f, 547f, 118f, -1343f, 1955f, 331f, 1036f, 2181f, 635f, 882f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> bool {
    return true;
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = array<i32, 4>();
    let var_0 = Struct_1(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(996u, 11u)]))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1323f + global2[_wgslsmith_index_u32(4294967295u, 11u)]))), false, !select(arg_0.c, select(vec3<bool>(arg_0.b, arg_0.c.x, arg_0.c.x), select(vec3<bool>(false, false, arg_0.a), vec3<bool>(arg_0.b, false, false), arg_0.c.x), vec3<bool>(true, true, true)), !arg_0.c));
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, abs(_wgslsmith_clamp_i32(-1i, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(5921i, global1[_wgslsmith_index_u32(1u, 4u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(0u, 4u)])))), global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(26296u, 36453u, u_input.b), vec3<u32>(u_input.b, 1u, u_input.b) ^ vec3<u32>(u_input.b, 19073u, u_input.b)), ~(~26309u)), 4u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~u_input.b), _wgslsmith_sub_u32(~u_input.b, u_input.b & u_input.b)), 4u)]), ~(-(-vec4<i32>(u_input.a, -1i, global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]) ^ vec4<i32>(-4848i, global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)], -1i))));
    var var_2 = Struct_1(-230f == _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~(1u >> (u_input.b % 32u)), 11u)], global2[_wgslsmith_index_u32(u_input.b, 11u)]), true, !arg_0.c);
    global2 = array<f32, 11>();
    return false && any(var_2.c);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global2 = array<f32, 11>();
    let var_0 = true;
    global2 = array<f32, 11>();
    global0 = firstLeadingBit(-1i);
    var var_1 = Struct_1(var_0, !func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(arg_0.x, 11u)], -949f, global2[_wgslsmith_index_u32(arg_0.x, 11u)], global2[_wgslsmith_index_u32(57043u, 11u)]), vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 11u)], global2[_wgslsmith_index_u32(34259u, 11u)], 1324f, global2[_wgslsmith_index_u32(arg_0.x, 11u)])) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1721f, -263f, global2[_wgslsmith_index_u32(arg_0.x, 11u)], -1000f)))), select(-2147483647i, u_input.a, true) != 8410i), select(vec3<bool>(true, !any(vec4<bool>(false, true, var_0, var_0)), true), vec3<bool>(_wgslsmith_mod_i32(2147483647i, 2147483647i) != _wgslsmith_mod_i32(u_input.a, global1[_wgslsmith_index_u32(u_input.b, 4u)]), !(0i < global1[_wgslsmith_index_u32(84429u, 4u)]), var_0), !vec3<bool>(false, func_1(vec4<f32>(-660f, -261f, global2[_wgslsmith_index_u32(u_input.b, 11u)], -563f), var_0), true)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(1u)), 11u)] - -686f) + global2[_wgslsmith_index_u32(16905u, 11u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1606f, global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(20899u, 11u)], -449f) - vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 11u)], -1246f, 319f, global2[_wgslsmith_index_u32(18963u, 11u)])))), false) && all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true)), 0i > (global1[_wgslsmith_index_u32(29122u, 4u)] << (u_input.b % 32u)), vec3<bool>(!func_2(Struct_1(true, false, vec3<bool>(true, true, true))), !(!all(vec2<bool>(true, false))), true == (_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 11u)] + global2[_wgslsmith_index_u32(u_input.b, 11u)]) == _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.b, 8571u, 28570u))))));
    global1 = array<i32, 4>();
    global1 = array<i32, 4>();
    var var_1 = !var_0.b;
    global1 = array<i32, 4>();
    var_1 = !var_0.c.x | all(vec4<bool>(!(!var_0.a), any(!vec4<bool>(var_0.b, false, true, var_0.c.x)), u_input.b == u_input.b, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(12358u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)]))) - global2[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b << (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u), 11u)]))), abs(~vec4<u32>(51517u, 1u, ~4294967295u, _wgslsmith_mod_u32(u_input.b, u_input.b))), (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 89508u) ^ vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 33436u, u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, 1u))) | ~vec4<u32>(1u, 1u, 79649u, 34358u)) ^ (abs(vec4<u32>(u_input.b, u_input.b, 59795u, u_input.b)) & _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, u_input.b, 1829u, 77974u), ~vec4<u32>(u_input.b, 0u, 0u, u_input.b), vec4<u32>(u_input.b, 2889u, 10502u, 79920u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 11u)])), -232f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 11u)] * _wgslsmith_f_op_f32(394f * global2[_wgslsmith_index_u32(u_input.b, 11u)]))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.b, 11u)]))), global2[_wgslsmith_index_u32(~0u, 11u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-304f * 1478f)))), -1880f);
}

