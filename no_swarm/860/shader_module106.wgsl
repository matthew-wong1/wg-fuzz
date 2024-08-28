struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<bool>, arg_3: u32) -> vec3<bool> {
    return vec3<bool>(arg_2.x, arg_2.x, !arg_2.x);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_3(~vec2<i32>(28752i, global0[_wgslsmith_index_u32(~countOneBits(u_input.b), 8u)]), 284f, arg_1, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.b.x)) - arg_1.b.x)), Struct_1(vec2<bool>(true, true), arg_1.b, any(!vec4<bool>(arg_1.d, arg_1.c, true, true)), true), arg_1.b.x, Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1091f, 521f, arg_1.b.x), vec3<f32>(-128f, arg_1.b.x, 493f)))), arg_1.d, !(arg_1.b.x <= 1024f)), arg_0), arg_1.b.x);
    global0 = array<i32, 8>();
    let var_1 = var_0.d;
    var var_2 = var_0;
    var var_3 = i32(-1i) * -2147483647i;
    return arg_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: bool) -> Struct_2 {
    let var_0 = i32(-1i) * -2147483647i;
    return Struct_2(arg_1.x, Struct_1(func_2(1i, ~(var_0 << (u_input.b % 32u)), arg_0.xy, min(min(u_input.b, u_input.b), _wgslsmith_sub_u32(u_input.b, u_input.b))).zy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(221f, _wgslsmith_f_op_f32(trunc(-159f)), _wgslsmith_f_op_f32(-285f + arg_1.x))), arg_2, any(vec4<bool>(func_2(u_input.a, -2147483647i, arg_0.zz, u_input.b).x, arg_2 | true, true, !arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_1.x)))) + arg_1.x) - _wgslsmith_f_op_f32(ceil(540f))), Struct_1(!(!(!arg_0.yx)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_1))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(arg_1, arg_1, vec3<bool>(arg_0.x, arg_0.x, true))), arg_1, select(vec3<bool>(true, arg_2, false), vec3<bool>(arg_2, arg_0.x, arg_2), false))))), false, true || func_2(abs(u_input.c.x), max(-3129i, -771i), func_2(2147483647i, -2131i, vec2<bool>(false, arg_0.x), u_input.b).yy, ~u_input.b).x), 0u);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = ~(~vec3<u32>(arg_0.e, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e, 1u, arg_0.e, arg_0.e), vec4<u32>(arg_1.e, 105127u, arg_0.e, arg_1.e)), firstLeadingBit(abs(u_input.b))));
    var var_1 = any(!arg_2.a);
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.c, 1775f, 1203f, arg_1.b.b.x)))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -347f), -282f, -1329f, -2021f)))), u_input.c.xy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.c, 1161f, arg_1.a, arg_0.a), vec4<f32>(-940f, arg_0.d.b.x, -1000f, arg_0.c)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(2246f, 342f)), _wgslsmith_f_op_f32(-arg_2.b.x), 338f, _wgslsmith_f_op_f32(f32(-1f) * -914f)))), any(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 8u)] != u_input.a, -2147483647i != u_input.a)));
    let var_3 = true;
    var var_4 = arg_0.d.a.x;
    return Struct_1(!(!func_2(u_input.c.x, global0[_wgslsmith_index_u32(func_4(vec3<bool>(true, arg_0.b.a.x, arg_0.d.a.x), vec3<f32>(336f, 252f, 276f), var_3).e, 8u)], select(arg_0.d.a, arg_0.d.a, arg_0.d.a), ~12519u).xz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_1.d.b))), false, 1271f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-524f, arg_1.c)))))));
}

fn func_1() -> Struct_4 {
    let var_0 = func_5(func_4(!func_2(min(9958i, u_input.c.x), ~u_input.a, vec2<bool>(true, true), u_input.b), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1107f)), _wgslsmith_f_op_f32(599f + 1132f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(307f * 1653f) + _wgslsmith_f_op_f32(f32(-1f) * -476f)), 204f), min(u_input.b, ~4294967295u) <= func_3(u_input.b, Struct_1(vec2<bool>(true, true), vec3<f32>(-866f, 807f, -659f), true, false))), Struct_2(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-324f)))), Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false), all(vec4<bool>(false, true, true, false))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_f32(abs(568f)), _wgslsmith_f_op_f32(trunc(460f))), !all(vec3<bool>(false, true, true)), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), func_4(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(528f, -1118f, 323f)))), false).d, _wgslsmith_mod_u32(27884u, func_4(vec3<bool>(false, false, true), vec3<f32>(261f, 394f, -957f), all(vec4<bool>(true, false, false, false))).e)), Struct_1(select(select(vec2<bool>(true, true), func_4(vec3<bool>(true, true, false), vec3<f32>(-165f, 111f, 156f), false).b.a, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), all(vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-874f, 587f), 1065f, _wgslsmith_f_op_f32(-499f * 1413f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1467f, -1200f, -1022f) - vec3<f32>(-1403f, 1347f, -359f)))), !(!all(vec4<bool>(true, false, true, false))), select(any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), false, 17189u <= ~u_input.b)), all(vec3<bool>(true, true, true)));
    var var_1 = var_0.a;
    var_1 = !vec2<bool>(var_1.x, _wgslsmith_div_i32(~global0[_wgslsmith_index_u32(4673u, 8u)], -2449i) <= global0[_wgslsmith_index_u32(u_input.b | ~u_input.b, 8u)]);
    return Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(858f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-993f)) - var_0.b.x), 1178f, 283f)), u_input.c.wz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1229f), _wgslsmith_f_op_f32(-var_0.b.x), -311f, _wgslsmith_f_op_f32(-var_0.b.x)))) * vec4<f32>(var_0.b.x, var_0.b.x, 1000f, var_0.b.x)), _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1929f)) * _wgslsmith_f_op_f32(-var_0.b.x)))) < _wgslsmith_f_op_f32(-1663f + _wgslsmith_f_op_f32(trunc(-457f))));
}

fn func_6(arg_0: Struct_4) -> Struct_1 {
    var var_0 = func_4(select(vec3<bool>(arg_0.d, arg_0.d, arg_0.d), !vec3<bool>(false, arg_0.d, global0[_wgslsmith_index_u32(u_input.b, 8u)] < 14199i), vec3<bool>(true, any(select(vec4<bool>(true, true, false, arg_0.d), vec4<bool>(false, false, false, arg_0.d), arg_0.d)), arg_0.d)), arg_0.a.zzy, false);
    let var_1 = select(!vec4<bool>(!(-774f <= var_0.c), func_5(Struct_2(arg_0.a.x, var_0.b, 1307f, Struct_1(vec2<bool>(true, true), vec3<f32>(var_0.c, 468f, var_0.b.b.x), arg_0.d, arg_0.d), 4294967295u), Struct_2(arg_0.c.x, Struct_1(vec2<bool>(arg_0.d, true), vec3<f32>(var_0.a, 1317f, var_0.d.b.x), false, true), arg_0.a.x, Struct_1(var_0.b.a, var_0.d.b, true, false), 4294967295u), Struct_1(vec2<bool>(var_0.b.c, arg_0.d), vec3<f32>(692f, arg_0.c.x, -1011f), arg_0.d, true), var_0.d.d).d, var_0.b.c, func_2(u_input.c.x, 1i, !vec2<bool>(var_0.b.a.x, var_0.d.d), _wgslsmith_add_u32(u_input.b, var_0.e)).x), !(!vec4<bool>(any(vec2<bool>(true, var_0.b.a.x)), arg_0.d, !arg_0.d, var_0.d.a.x & false)), !select(vec4<bool>(arg_0.c.x <= var_0.a, any(vec3<bool>(false, arg_0.d, arg_0.d)), var_0.d.c, var_0.d.a.x != false), !select(vec4<bool>(true, var_0.d.c, true, arg_0.d), vec4<bool>(false, false, arg_0.d, arg_0.d), var_0.d.c), true & (arg_0.d || arg_0.d)));
    let var_2 = var_0.d.d;
    let var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, _wgslsmith_mult_u32(1u, u_input.b), u_input.b, 45165u), countOneBits(max(~countOneBits(vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b)), min(vec4<u32>(31554u, var_0.e, u_input.b, var_0.e) & vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u), ~vec4<u32>(var_0.e, 36656u, 0u, 13309u)))), vec4<u32>(47879u, _wgslsmith_mod_u32(func_3(firstLeadingBit(24475u), Struct_1(vec2<bool>(arg_0.d, arg_0.d), vec3<f32>(arg_0.c.x, 481f, var_0.c), var_1.x, true)), 1u), ~abs(1u), u_input.b));
    global0 = array<i32, 8>();
    return func_4(var_1.zyz, vec3<f32>(var_0.a, var_0.d.b.x, arg_0.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d.b.x - 2375f), arg_0.c.x)) > func_4(vec3<bool>(true, !var_1.x, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, arg_0.c.x, 339f) * arg_0.a.zwx)), true).b.b.x).d;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    return Struct_1(vec2<bool>(!((global0[_wgslsmith_index_u32(1u, 8u)] | arg_1.a.x) <= -1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.e), _wgslsmith_f_op_f32(round(arg_1.d.d.b.x)))) >= arg_0.c), _wgslsmith_f_op_vec3_f32(-arg_1.c.b), arg_1.d.d.d == true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 8>();
    var var_0 = Struct_2(-900f, func_7(Struct_2(-1906f, func_6(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f + 348f)), func_5(Struct_2(574f, Struct_1(vec2<bool>(false, false), vec3<f32>(868f, 353f, -1000f), false, true), -379f, Struct_1(vec2<bool>(false, false), vec3<f32>(-116f, 1833f, 1379f), true, true), u_input.b), func_4(vec3<bool>(false, false, true), vec3<f32>(959f, -298f, 702f), true), Struct_1(vec2<bool>(true, true), vec3<f32>(-208f, 1312f, -2272f), false, false), false), 42269u), Struct_3(select(vec2<i32>(-46221i, global0[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_mod_vec2_i32(u_input.c.zx, u_input.c.yy), true), _wgslsmith_f_op_f32(-520f + -1933f), func_4(func_2(u_input.a, -27273i, vec2<bool>(true, false), 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(744f, 284f, -1813f)), false).b, Struct_2(_wgslsmith_f_op_f32(trunc(-2369f)), func_4(vec3<bool>(false, true, true), vec3<f32>(-958f, -1758f, -1000f), false).b, _wgslsmith_f_op_f32(-1438f - 1023f), func_4(vec3<bool>(true, false, true), vec3<f32>(-148f, 213f, -155f), true).b, 10267u | u_input.b), func_5(func_4(vec3<bool>(true, false, false), vec3<f32>(-138f, -386f, -1000f), false), func_4(vec3<bool>(true, true, false), vec3<f32>(326f, 608f, -1000f), true), Struct_1(vec2<bool>(false, true), vec3<f32>(3454f, -389f, -1412f), true, true), func_2(-24275i, global0[_wgslsmith_index_u32(u_input.b, 8u)], vec2<bool>(false, false), u_input.b).x).b.x)), -221f, Struct_1(!func_2(0i, 8967i | global0[_wgslsmith_index_u32(u_input.b, 8u)], vec2<bool>(true, true), ~1u).xx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1205f, -896f, 1649f) - vec3<f32>(313f, 690f, -1226f))), true, any(vec2<bool>(global0[_wgslsmith_index_u32(26310u, 8u)] >= u_input.a, true))), ~u_input.b | 43938u);
    var var_1 = ~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 63347u, 0u), vec4<u32>(8315u, 1439u, 1u, 68335u)), ~4294967295u, 0u >> (u_input.b % 32u), var_0.e)), firstTrailingBit(vec4<u32>(u_input.b, ~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, var_0.e, var_0.e), vec4<u32>(4294967295u, 1u, u_input.b, var_0.e)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e, 4294967295u, var_0.e), vec3<u32>(15893u, 0u, u_input.b)))));
    global0 = array<i32, 8>();
    let var_2 = vec4<u32>(_wgslsmith_div_u32(func_4(vec3<bool>(var_0.b.a.x, any(vec3<bool>(true, true, false)), !var_0.b.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-103f, var_0.a, -1182f) - var_0.d.b)), u_input.c.x == ~1i).e, 24012u), ~(~max(u_input.b, u_input.b)), var_1.x, u_input.b);
    var var_3 = select(func_3(_wgslsmith_mod_u32(select(_wgslsmith_sub_u32(var_0.e, 80402u), u_input.b, select(var_0.b.d, true, var_0.b.a.x)), ~_wgslsmith_sub_u32(u_input.b, var_2.x)), Struct_1(select(vec2<bool>(var_0.d.d, true), var_0.d.a, any(vec2<bool>(var_0.d.a.x, var_0.d.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.d.b, vec3<f32>(1000f, var_0.a, var_0.b.b.x)), _wgslsmith_f_op_vec3_f32(-var_0.b.b)), var_0.d.d, func_6(func_1()).d)), reverseBits(var_2.x), false);
    var_0 = func_4(vec3<bool>(true, any(vec2<bool>(!var_0.b.c, any(vec3<bool>(var_0.b.c, true, true)))), !var_0.b.c), _wgslsmith_f_op_vec3_f32(-var_0.d.b), var_0.b.a.x);
    var_1 = ~var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.d.b)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(func_4(vec3<bool>(true, var_0.d.c, var_0.d.d), vec3<f32>(1000f, -929f, var_0.d.b.x), var_0.d.a.x).a, _wgslsmith_f_op_f32(f32(-1f) * -981f), var_0.b.b.x) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1277f, 1243f, -852f))), _wgslsmith_f_op_vec3_f32(abs(var_0.b.b)))))), -49664i, u_input.a, var_0.d.b.zz, u_input.a);
}

