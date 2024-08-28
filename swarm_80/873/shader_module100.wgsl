struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<f32>(447f, -2049f, -1488f, -326f)), Struct_1(vec4<f32>(719f, 860f, 488f, -603f)), Struct_1(vec4<f32>(-1000f, -1304f, 1000f, -2363f)), Struct_1(vec4<f32>(937f, -959f, -494f, 1842f)), Struct_1(vec4<f32>(472f, -1288f, 734f, -293f)), Struct_1(vec4<f32>(-109f, 817f, 555f, 1739f)), Struct_1(vec4<f32>(229f, -205f, -713f, -1000f)), Struct_1(vec4<f32>(224f, -455f, -360f, 171f)), Struct_1(vec4<f32>(-1109f, -1057f, 939f, 232f)), Struct_1(vec4<f32>(-637f, -600f, 138f, -647f)), Struct_1(vec4<f32>(-528f, 913f, 709f, 145f)), Struct_1(vec4<f32>(-492f, -932f, 493f, -137f)), Struct_1(vec4<f32>(-997f, -359f, -1009f, 270f)), Struct_1(vec4<f32>(-301f, 1128f, -135f, -696f)), Struct_1(vec4<f32>(833f, 289f, -1738f, 1749f)), Struct_1(vec4<f32>(-1130f, -916f, -311f, -1015f)), Struct_1(vec4<f32>(256f, -108f, -626f, 344f)), Struct_1(vec4<f32>(-170f, 376f, 875f, 1419f)), Struct_1(vec4<f32>(-2032f, 912f, -608f, -1363f)), Struct_1(vec4<f32>(300f, -107f, 291f, 1021f)), Struct_1(vec4<f32>(-433f, 1579f, -418f, 172f)), Struct_1(vec4<f32>(350f, 617f, 1523f, -729f)), Struct_1(vec4<f32>(1022f, 837f, -652f, -493f)), Struct_1(vec4<f32>(-1000f, -330f, -163f, 556f)), Struct_1(vec4<f32>(615f, 1926f, 612f, -873f)), Struct_1(vec4<f32>(-635f, 219f, 713f, 221f)), Struct_1(vec4<f32>(623f, 665f, -379f, 1133f)), Struct_1(vec4<f32>(-109f, -796f, 1000f, 245f)), Struct_1(vec4<f32>(747f, -491f, 451f, -260f)), Struct_1(vec4<f32>(104f, 1119f, 264f, 589f)));

var<private> global1: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false));

var<private> global2: vec2<i32> = vec2<i32>(-40449i, 9794i);

var<private> global3: f32 = 803f;

var<private> global4: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> i32 {
    var var_0 = u_input.c >> (u_input.c % 32u);
    let var_1 = -814f;
    global4 = abs(~(u_input.a.x >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(42851u, u_input.c), vec2<u32>(23408u, u_input.c)) % 32u)));
    var var_2 = vec3<i32>(global2.x, -2147483647i, _wgslsmith_dot_vec4_i32(~(vec4<i32>(global2.x, 2147483647i, -2147483647i, u_input.b.x) << (u_input.a % vec4<u32>(32u))), vec4<i32>(u_input.d, -1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, u_input.d, u_input.d), vec3<i32>(global2.x, global2.x, -16605i)), global2.x)));
    var_2 = vec3<i32>(4788i, -1i, global2.x);
    return 5548i;
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_5(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, ~4294967295u), u_input.a.yw), ~(~u_input.b) ^ ~_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-1i, -8448i)), vec2<i32>(u_input.d, global2.x)), abs(~u_input.a), vec2<bool>(!(true && (u_input.c <= u_input.c)), false), _wgslsmith_f_op_f32(f32(-1f) * -961f));
    let var_1 = Struct_5(countOneBits(reverseBits(vec2<u32>(var_0.c.x, ~4294967295u))), -(~(var_0.b & max(vec2<i32>(var_0.b.x, global2.x), var_0.b))), ~countOneBits(vec4<u32>(var_0.a.x, min(4294967295u, var_0.c.x), _wgslsmith_sub_u32(1u, 0u), ~u_input.a.x)), vec2<bool>(true, any(select(vec3<bool>(var_0.d.x, false, var_0.d.x), select(vec3<bool>(true, var_0.d.x, var_0.d.x), vec3<bool>(false, var_0.d.x, true), var_0.d.x), false))), -589f);
    let var_2 = !var_0.d.x;
    let var_3 = vec3<f32>(var_0.e, _wgslsmith_f_op_f32(round(var_1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(778f, _wgslsmith_div_f32(var_0.e, var_1.e))))));
    var var_4 = vec2<bool>(select(var_2, ~u_input.d > abs(global2.x), !(var_0.d.x || var_0.d.x)) && !any(select(global1[_wgslsmith_index_u32(var_1.c.x, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(var_1.a.x, 23u)])), ((false & (u_input.a.x != 1u)) & true) & (any(!vec2<bool>(var_2, var_2)) || true));
    return vec3<bool>(any(select(select(!global1[_wgslsmith_index_u32(var_0.a.x, 23u)], vec4<bool>(true, true, var_4.x, var_1.d.x), select(global1[_wgslsmith_index_u32(79368u, 23u)], vec4<bool>(true, false, true, true), vec4<bool>(true, true, var_0.d.x, false))), vec4<bool>(false, true, true, true), false | var_2)), all(!vec3<bool>(all(global1[_wgslsmith_index_u32(var_1.c.x, 23u)]), any(vec3<bool>(true, var_0.d.x, var_4.x)), var_1.d.x)), true);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> i32 {
    let var_0 = u_input.d;
    let var_1 = Struct_4(arg_0, _wgslsmith_add_u32(0u, u_input.a.x), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 30u)], Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, -911f, -691f), vec4<f32>(-1221f, -1045f, arg_0, 102f), true)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 2711f, arg_0, 218f) * vec4<f32>(885f, arg_0, 1932f, arg_0)))), func_3(), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1268f, 474f, 451f, arg_0), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2010f, arg_0, -1651f, -1000f), vec4<f32>(1000f, arg_0, 938f, arg_0)))))), func_3().yz), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(-689f)), _wgslsmith_f_op_f32(-arg_0), -1381f, _wgslsmith_div_f32(arg_0, arg_0))), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(500f, 808f, arg_0, -381f)))), arg_1, Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 892f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1082f, arg_0, arg_0, -2139f), vec4<f32>(arg_0, arg_0, 1374f, arg_0)))))), arg_1.xy), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, -513f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -2850f)))), -firstTrailingBit(1i), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(801f, 747f, arg_0, -1000f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1840f, 711f, arg_0, 504f))), arg_1.x))), false));
    var var_2 = true == arg_1.x;
    global4 = ~1u;
    global0 = array<Struct_1, 30>();
    return -1i;
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = any(!select(select(vec4<bool>(false, arg_0.e.x, false, false), select(global1[_wgslsmith_index_u32(1u, 23u)], vec4<bool>(false, arg_0.e.x, true, arg_0.c.x), false), vec4<bool>(arg_0.e.x, true, true, arg_0.c.x)), vec4<bool>(any(vec2<bool>(arg_0.e.x, true)), 76265u < u_input.a.x, arg_0.e.x, !arg_0.c.x), !(!vec4<bool>(false, true, true, arg_0.e.x))));
    global2 = _wgslsmith_clamp_vec2_i32(u_input.b, ~u_input.b, vec2<i32>(u_input.d, ~(-11578i)));
    var var_1 = ~global2.x >> (_wgslsmith_sub_u32(4294967295u, u_input.c) % 32u);
    global2 = vec2<i32>(func_4(-1000f, select(!vec3<bool>(arg_0.e.x, true, arg_0.e.x), func_3(), arg_0.c.x)), u_input.d);
    var var_2 = select(arg_0.e, func_3().yz, func_3().zy);
    return _wgslsmith_f_op_f32(trunc(arg_0.a.a.x));
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec2<bool> {
    global1 = array<vec4<bool>, 23>();
    global2 = -(~(~arg_2));
    global1 = array<vec4<bool>, 23>();
    var var_0 = Struct_4(arg_3.x, countOneBits(abs(abs(select(0u, 18681u, arg_0)))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, 581f, -1902f, arg_3.x), vec4<f32>(675f, arg_3.x, -928f, arg_3.x))))), global0[_wgslsmith_index_u32(~(8719u | u_input.c), 30u)], vec3<bool>(arg_0, func_3().x, arg_1.x), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-747f, -257f, 1000f, 359f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, 2120f, arg_3.x))))), !arg_1.xz), Struct_2(global0[_wgslsmith_index_u32(~firstTrailingBit(~46399u), 30u)], Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(533f, -850f, -1660f, arg_3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, 1000f, -1088f) + vec4<f32>(144f, arg_3.x, 1873f, 103f)))), !func_3(), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1473f, arg_3.x, arg_3.x, -637f)), vec4<f32>(197f, -1290f, arg_3.x, -1566f), true))), arg_1.zx), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.x))), arg_3.x), -(-arg_2.x ^ u_input.b.x), global0[_wgslsmith_index_u32(32077u, 30u)], u_input.a.x != (u_input.c << (u_input.c % 32u))));
    var var_1 = vec3<i32>(-(_wgslsmith_mod_i32(select(28625i, -24596i, var_0.e.d), arg_2.x) >> (4294967295u % 32u)), var_0.e.b, firstTrailingBit(-arg_2.x));
    return arg_1.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(-225f, -784f), -808f))), func_1(), global0[_wgslsmith_index_u32(1u, 30u)], !any(select(global1[_wgslsmith_index_u32(16153u, 23u)], vec4<bool>(false, true, true, true), true)));
    global2 = u_input.b;
    var var_1 = 0i;
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(var_0.c.a.ywz));
    var var_3 = var_0;
    let var_4 = any(func_5(-2755f != _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(var_3.c.a), var_3.c, vec3<bool>(false, var_3.d, false), var_0.c, vec2<bool>(false, true)))), vec3<bool>(var_0.d, ~0u >= u_input.c, true), ~u_input.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1000f, var_2.x)))), var_0.c.a.x)));
    global2 = vec2<i32>(_wgslsmith_clamp_i32(~(~u_input.b.x), ~(-abs(-25512i)), var_3.b), -firstTrailingBit(-2147483647i));
    var_2 = var_3.c.a.zww;
    var var_5 = !select(!vec2<bool>(0u >= u_input.a.x, true), !vec2<bool>(false, all(global1[_wgslsmith_index_u32(u_input.c, 23u)])), !var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-714f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.c.a.x), -493f, true))))), max(vec3<i32>(func_4(-557f, vec3<bool>(false, true, true)), 0i, -(~(-1i))), abs(vec3<i32>(51217i, var_0.b, global2.x)) ^ vec3<i32>(23682i, -35960i, select(-10739i, var_0.b, false))), _wgslsmith_f_op_f32(1538f * _wgslsmith_f_op_f32(floor(-390f))), var_0.c.a);
}

