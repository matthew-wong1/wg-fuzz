struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-1415f, 955f, 586f, -1000f), vec4<f32>(-200f, 591f, -896f, -744f), vec4<f32>(-798f, 764f, -1143f, -879f), vec4<f32>(263f, -1114f, -1000f, -123f), vec4<f32>(-1624f, -972f, -937f, -1447f), vec4<f32>(-417f, -900f, 1000f, -1269f), vec4<f32>(1024f, 632f, 1227f, 1164f), vec4<f32>(1000f, 1000f, 490f, 1175f), vec4<f32>(-563f, 666f, -739f, 1000f), vec4<f32>(1143f, 473f, 772f, 766f), vec4<f32>(593f, 520f, -421f, -1959f), vec4<f32>(-277f, -751f, -513f, -1000f), vec4<f32>(-972f, -244f, 168f, 835f), vec4<f32>(-1182f, -109f, -317f, 340f), vec4<f32>(319f, -317f, -1000f, 1718f), vec4<f32>(-1000f, -354f, -632f, -547f), vec4<f32>(-870f, 1468f, -970f, 285f), vec4<f32>(2600f, -1505f, 1854f, 1000f), vec4<f32>(870f, -188f, 464f, -754f), vec4<f32>(227f, -329f, 662f, -1707f), vec4<f32>(-219f, 759f, -869f, 430f), vec4<f32>(-1833f, -584f, 669f, 667f), vec4<f32>(1521f, -1000f, -1004f, 196f), vec4<f32>(197f, -148f, -925f, 1127f), vec4<f32>(334f, -1000f, 1220f, 468f));

var<private> global1: f32;

var<private> global2: u32;

var<private> global3: Struct_1 = Struct_1(19052u, vec3<f32>(-998f, 490f, -1695f), vec2<f32>(-277f, 501f));

var<private> global4: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(5327u, 14420u, 1u), vec3<u32>(0u, 4705u, 0u), vec3<u32>(1u, 40692u, 0u), vec3<u32>(10036u, 45923u, 0u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(15587u, 25u)] - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, global3.c.x, -205f, global3.c.x)))));
    global1 = -686f;
    let var_1 = -firstLeadingBit(vec2<i32>(~u_input.e, -u_input.e)) << (u_input.c % vec2<u32>(32u));
    global2 = ~_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(firstTrailingBit(arg_1.x), global3.a, 4294967295u));
    var var_2 = Struct_3(u_input.c.x | arg_1.x, ~arg_1.x, select(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, var_1.x, -49378i, -56856i) | vec4<i32>(2147483647i, var_1.x, u_input.e, 27209i), firstLeadingBit(vec4<i32>(var_1.x, u_input.e, -1i, u_input.e))), arg_1.x == ~34869u) >> (global3.a % 32u), -699f, ~(select(_wgslsmith_mod_vec4_i32(vec4<i32>(15508i, 51978i, -1i, u_input.e), vec4<i32>(var_1.x, u_input.e, var_1.x, 17456i)), vec4<i32>(var_1.x, u_input.e, u_input.e, var_1.x), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, false), arg_0)) << (vec4<u32>(_wgslsmith_mult_u32(0u, 35574u), _wgslsmith_add_u32(42403u, 6869u), ~3925u, arg_2 | 4294967295u) % vec4<u32>(32u))));
    return select(-reverseBits(var_2.e), reverseBits(-select(var_2.e, vec4<i32>(-1i, var_2.c, u_input.e, var_1.x), false)) | var_2.e, vec4<bool>(!any(vec4<bool>(arg_0, true, true, true)), !any(!vec4<bool>(arg_0, false, false, arg_0)), false, true));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(622f))));
    let var_1 = Struct_3(17261u, 22677u, -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -245f)))), vec4<i32>(-u_input.e, u_input.e, select(countOneBits(u_input.e), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, 20661i, 2147483647i), func_3(true, vec3<u32>(global3.a, u_input.c.x, 0u), 0u)), false), ~(-u_input.e ^ abs(-5549i))));
    let var_2 = Struct_4(vec3<bool>(!(var_1.e.x < -2147483647i), all(vec3<bool>(true, true, true)) && false, all(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), 1833f <= var_0))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1027f - _wgslsmith_f_op_f32(-1f))) != _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(f32(-1f) * -164f)));
    var var_4 = _wgslsmith_f_op_vec2_f32(select(global3.b.xy, vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, var_0)))))), !vec2<bool>((var_0 > var_1.d) & all(vec4<bool>(true, var_2.a.x, false, var_2.a.x)), !(u_input.b != 61536u))));
    return Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(u_input.a, ~_wgslsmith_mult_vec2_u32(u_input.a, u_input.c)), global3.b, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(sign(global3.c.x)), -1040f)))), u_input.c, !select(vec2<bool>(select(var_2.a.x, true, false), any(vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.a.x))), !var_2.a.xy, false == !var_2.a.x), 2251f);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> vec3<bool> {
    let var_0 = ~20215u;
    let var_1 = func_2();
    global0 = array<vec4<f32>, 25>();
    global2 = ~abs(~(~(var_1.a.a ^ var_0)));
    var var_2 = Struct_3(1u, func_2().b.x, _wgslsmith_sub_i32(u_input.e, 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -231f), vec4<i32>(41560i, countOneBits(reverseBits(u_input.e)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 63394u, 58912u), ~vec3<u32>(var_1.a.a, 69727u, var_1.a.a)) % 32u), 19596i, _wgslsmith_sub_i32(-func_3(false, global4[_wgslsmith_index_u32(var_0, 4u)], 29471u).x, 1i)));
    return select(select(select(!vec3<bool>(arg_0.x, true, arg_1), vec3<bool>(var_1.c.x, all(vec2<bool>(false, arg_1)), var_1.c.x), true), !select(vec3<bool>(arg_1, var_1.c.x, true), !vec3<bool>(true, false, arg_0.x), any(var_1.c)), 1i != u_input.e), !select(!vec3<bool>(false, arg_0.x, true), select(vec3<bool>(arg_0.x, arg_0.x, true), !vec3<bool>(false, arg_0.x, false), arg_1 != false), vec3<bool>(true, true, true)), !(~0u < _wgslsmith_dot_vec4_u32(countOneBits(u_input.d), select(u_input.d, vec4<u32>(var_1.a.a, 4294967295u, 0u, 9086u), var_1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 25>();
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -455f)), global3.c.x), global3.c.x)));
    var var_1 = !select(select(func_1(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), !vec3<bool>(any(vec3<bool>(false, false, true)), true, select(true, false, false)), false);
    let var_2 = -486f;
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-779f)))), _wgslsmith_f_op_f32(-126f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global3.c.x, -1575f, var_1.x | true)))))));
    global4 = array<vec3<u32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(774u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.c * vec2<f32>(var_2, 166f)) + global3.b.zx))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.b.xy + global3.b.zy)))), 0i, 20742u);
}

