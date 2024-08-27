struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(i32(-2147483648), 0i, 30642i, i32(-2147483648), -1i, 20426i, -112971i, 25426i, i32(-2147483648), i32(-2147483648), 2147483647i, 18352i, 25424i, -556i, 2147483647i, 50921i, -23152i, 1i);

var<private> global1: array<u32, 22> = array<u32, 22>(13123u, 4294967295u, 4294967295u, 1u, 1u, 1u, 57853u, 1022u, 4294967295u, 0u, 39091u, 994u, 53616u, 48536u, 4294967295u, 14102u, 0u, 35616u, 1u, 11561u, 4294967295u, 32385u);

var<private> global2: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(1122f, 1564f, -115f), vec3<f32>(2768f, -1736f, 727f), vec3<f32>(-2064f, -495f, -688f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(~arg_2.c, arg_2.c ^ vec4<u32>(arg_2.c.x, 4294967295u, arg_2.c.x & _wgslsmith_sub_u32(88476u, arg_2.c.x), 0u));
    var var_1 = u_input.d;
    var var_2 = 1463f;
    let var_3 = arg_2.c.wwx;
    var var_4 = Struct_3(Struct_2(arg_2, select(vec4<u32>(var_0, u_input.a ^ 2244u, _wgslsmith_div_u32(u_input.a, 4294967295u), 73609u), vec4<u32>(var_0 << (0u % 32u), ~var_3.x, var_0, firstLeadingBit(1u)), all(select(arg_3, arg_0.zx, vec2<bool>(arg_3.x, arg_0.x))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)))), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1828f + -1178f) + arg_1))));
    return var_4.a.a.c.x;
}

fn func_3() -> f32 {
    var var_0 = vec4<bool>(!any(vec2<bool>(true, true)), true, any(vec2<bool>(true, select(all(vec2<bool>(true, false)), all(vec4<bool>(false, true, false, false)), false))), !(!((u_input.e < u_input.b.x) || false)));
    let var_1 = Struct_3(Struct_2(Struct_1(u_input.c, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a, 18u)], -1i) | global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 22u)], 18u)], reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 22u)], 4294967295u, 33088u, 42112u), vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], u_input.a, u_input.a)))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, global1[_wgslsmith_index_u32(32750u, 22u)]), ~u_input.a), u_input.a, ~1u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(50534u, 22u)], u_input.a, min(1u, global1[_wgslsmith_index_u32(16415u, 22u)])))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(118f * -931f))), _wgslsmith_f_op_f32(f32(-1f) * -1086f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -905f)))));
    let var_2 = 51386i >> ((u_input.a << (_wgslsmith_mod_u32(~_wgslsmith_mod_u32(1u, 1u), _wgslsmith_mult_u32(~var_1.a.b.x, ~u_input.a)) % 32u)) % 32u);
    let var_3 = var_1;
    global1 = array<u32, 22>();
    return var_1.b.x;
}

fn func_1() -> f32 {
    let var_0 = true && !(!(any(vec3<bool>(true, false, true)) | true));
    var var_1 = Struct_1(_wgslsmith_mod_vec4_i32(u_input.c, firstTrailingBit(vec4<i32>(1i, u_input.b.x, 0i, 2147483647i)) << (vec4<u32>(global1[_wgslsmith_index_u32(0u, 22u)], 1388u, 0u, 0u) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_mult_u32(u_input.a << (global1[_wgslsmith_index_u32(1u, 22u)] % 32u), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a, 22u)], 22u)]), _wgslsmith_div_u32(u_input.a, 0u), max(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)]), select(~79322u, 45000u, 14867u >= u_input.a)) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1691u, 22u)], 18u)], vec4<u32>(0u, 21210u, countOneBits(select(global1[_wgslsmith_index_u32(func_2(vec3<bool>(false, false, var_0), -159f, Struct_1(vec4<i32>(u_input.e, 0i, 5472i, u_input.b.x), 75899i, vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(70830u, 22u)], global1[_wgslsmith_index_u32(33759u, 22u)], 16672u)), vec2<bool>(false, var_0)), 22u)], firstTrailingBit(u_input.a), true)), firstTrailingBit(func_2(vec3<bool>(var_0, true, false), -1000f, Struct_1(u_input.c, 28075i, vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], u_input.a)), !vec2<bool>(true, var_0)))));
    global1 = array<u32, 22>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1732f, -766f, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1129f))) + _wgslsmith_f_op_f32(func_3())));
    var var_3 = var_1.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1164f - _wgslsmith_f_op_f32(-var_2)) * _wgslsmith_f_op_f32(-191f * -896f)) * _wgslsmith_div_f32(_wgslsmith_div_f32(998f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, var_2))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(261f, _wgslsmith_f_op_f32(f32(-1f) * -436f)) * -493f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32) -> Struct_2 {
    global0 = array<i32, 18>();
    global2 = array<vec3<f32>, 3>();
    var var_0 = select(vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(~1663u, ~43794u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)] >> (u_input.a % 32u)), vec3<u32>(u_input.a, 28596u, u_input.a) ^ ~vec3<u32>(4294967295u, u_input.a, 0u)), u_input.a), ~max(~(~vec3<u32>(global1[_wgslsmith_index_u32(1u, 22u)], u_input.a, u_input.a)), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 14130u, global1[_wgslsmith_index_u32(32805u, 22u)])), true);
    global1 = array<u32, 22>();
    let var_1 = any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, all(vec3<bool>(false, false, false))), vec2<bool>(false, any(vec4<bool>(false, false, true, true))), !all(vec2<bool>(false, false)))));
    return Struct_2(Struct_1(u_input.c & (vec4<i32>(u_input.e, global0[_wgslsmith_index_u32(u_input.a, 18u)], u_input.e, 15971i) ^ (vec4<i32>(global0[_wgslsmith_index_u32(6888u, 18u)], u_input.d.x, global0[_wgslsmith_index_u32(41646u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)]) ^ vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 18u)], 0i, u_input.e, 2147483647i))), 1i, ~vec4<u32>(firstLeadingBit(30117u), var_0.x, var_0.x & 0u, u_input.a)), ~vec4<u32>(_wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(var_0.x, 22u)], global1[_wgslsmith_index_u32(u_input.a, 22u)]), ~u_input.a, func_2(vec3<bool>(false, false, var_1), arg_1, Struct_1(vec4<i32>(-16373i, 1i, u_input.c.x, 2035i), u_input.e, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec2<bool>(var_1, true)), reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21775u, 22u)], 22u)])) ^ vec4<u32>(1u, func_2(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(false, true, var_1), vec3<bool>(var_1, true, var_1)), _wgslsmith_f_op_f32(arg_0.x * -981f), Struct_1(u_input.c, global0[_wgslsmith_index_u32(35063u, 18u)], vec4<u32>(1u, global1[_wgslsmith_index_u32(var_0.x, 22u)], 19819u, 49265u)), select(vec2<bool>(true, false), vec2<bool>(false, var_1), vec2<bool>(true, true))), 3996u, ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -839f), -401f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), 1000f)), -1817f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -128f) + 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-774f, -254f)))) * 1010f));
    let var_1 = 26183u;
    global2 = array<vec3<f32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(-381f, u_input.a, vec3<i32>(71956i, 12054i << (select(53707u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(var_1, 22u)], global1[_wgslsmith_index_u32(var_0.a.c.x, 22u)]), all(vec4<bool>(true, true, true, true))) % 32u), -2147483647i), vec2<i32>(var_0.a.b, reverseBits(78958i)));
}

