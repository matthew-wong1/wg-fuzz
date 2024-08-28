struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = array<vec3<bool>, 2>();
    global0 = array<vec3<bool>, 2>();
    var var_0 = ~(~select(vec2<u32>(u_input.e.x, 0u) ^ u_input.e, vec2<u32>(1u, u_input.e.x), vec2<bool>(true, true))) & u_input.e;
    return _wgslsmith_f_op_f32(abs(-878f));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global0 = array<vec3<bool>, 2>();
    global0 = array<vec3<bool>, 2>();
    let var_0 = arg_0;
    var var_1 = var_0;
    global0 = array<vec3<bool>, 2>();
    return Struct_1(abs(var_1.a), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_f32(-274f + 1827f)), !(!vec3<bool>(var_1.d.x, all(vec4<bool>(arg_0.d.x, true, true, var_1.d.x)), !var_0.d.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec3<bool>, 2>();
    var var_0 = vec2<u32>(~_wgslsmith_mod_u32(0u, ~33604u), reverseBits(~firstLeadingBit(~0u)));
    let var_1 = true | !any(vec4<bool>(false, !arg_2.d.x, all(vec2<bool>(arg_0.d.x, true)), true));
    global0 = array<vec3<bool>, 2>();
    let var_2 = select(select(select(arg_0.d.zz, !vec2<bool>(arg_0.d.x, true), arg_3.d.yy), vec2<bool>(all(vec3<bool>(arg_2.d.x, arg_0.d.x, var_1)), false), arg_2.d.zx), !arg_2.d.zx, true);
    return Struct_1(27670i ^ ~u_input.b, arg_0.b, _wgslsmith_f_op_f32(arg_2.b.x * 1f), !select(func_2(Struct_1(-1i, arg_3.b, -2360f, arg_0.d), arg_2.b).d, vec3<bool>(true, arg_2.d.x, all(vec4<bool>(var_2.x, arg_2.d.x, false, true))), arg_3.d.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = arg_0.d.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1033f, arg_0.b.x, -815f, 1138f), vec4<f32>(1000f, arg_0.c, 874f, 888f), vec4<bool>(var_0, arg_1.d.x, false, arg_0.d.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(642f, arg_0.b.x, arg_0.c, -1284f) - vec4<f32>(arg_0.c, -1000f, arg_1.b.x, arg_0.c))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(834f, 1242f, -287f, 2516f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(179f, -493f, -1481f, arg_1.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -678f, -489f, 1426f))))));
    let var_2 = false;
    global0 = array<vec3<bool>, 2>();
    let var_3 = func_4(func_2(Struct_1(-50572i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -729f), _wgslsmith_f_op_f32(exp2(var_1.x))), var_1.x, select(vec3<bool>(false, arg_2, true), select(vec3<bool>(var_0, false, true), vec3<bool>(arg_2, false, true), false), arg_1.b.x < 1189f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1952f)), _wgslsmith_f_op_f32(-1758f * 865f))), abs(vec3<u32>(~u_input.e.x, u_input.e.x, abs(u_input.e.x))), func_2(arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-611f, 410f))), func_4(func_4(Struct_1(0i, _wgslsmith_f_op_vec2_f32(arg_0.b * arg_0.b), -867f, global0[_wgslsmith_index_u32(abs(u_input.e.x), 2u)]), vec3<u32>(u_input.e.x, 4294967295u, _wgslsmith_mod_u32(u_input.e.x, 0u)), func_2(func_4(arg_0, vec3<u32>(u_input.e.x, 47135u, u_input.e.x), arg_0, Struct_1(-1i, arg_1.b, arg_1.b.x, global0[_wgslsmith_index_u32(u_input.e.x, 2u)])), vec2<f32>(arg_0.b.x, arg_1.c)), func_2(arg_0, _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c, 429f), vec2<f32>(arg_1.c, -736f)))), vec3<u32>(_wgslsmith_mult_u32(~u_input.e.x, _wgslsmith_div_u32(u_input.e.x, u_input.e.x)), u_input.e.x, u_input.e.x), Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(658f, 1653f))), -677f, !arg_0.d), func_2(arg_1, _wgslsmith_f_op_vec2_f32(var_1.xw - arg_1.b))));
    return Struct_1(1i, vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1700f)) + var_3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) - _wgslsmith_f_op_f32(func_3()))))), arg_1.d);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    var_0 = func_5(arg_1, func_4(arg_1, vec3<u32>(~u_input.e.x, u_input.e.x, min(u_input.e.x, 35658u)) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.e.x, 26719u, u_input.e.x), vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u) | vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)) % vec3<u32>(32u)), func_2(Struct_1(-u_input.a.x, _wgslsmith_f_op_vec2_f32(-arg_1.b), var_0.b.x, vec3<bool>(var_0.d.x, true, arg_1.d.x)), arg_1.b), Struct_1(~(arg_1.a ^ u_input.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), var_0.c, !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 32137u, 17028u), vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 109530u)), 2u)])), false);
    var var_1 = ~(~min(1u, u_input.e.x));
    var var_2 = func_5(arg_1, Struct_1(~(~var_0.a) << (abs(40360u) % 32u), var_0.b, -1179f, func_2(arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b))).d), !(!any(vec2<bool>(true, false)))).a;
    var var_3 = func_2(func_5(func_4(arg_1, vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x) | ~vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(arg_1.b * vec2<f32>(arg_1.b.x, -1192f)), 1179f, vec3<bool>(arg_1.d.x, var_0.d.x, arg_1.d.x)), arg_1), Struct_1(-(2147483647i ^ arg_0.x), func_4(func_5(Struct_1(arg_0.x, var_0.b, 986f, global0[_wgslsmith_index_u32(0u, 2u)]), Struct_1(u_input.d.x, var_0.b, var_0.c, vec3<bool>(true, true, arg_1.d.x)), false), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), arg_1, arg_1).b, _wgslsmith_f_op_f32(round(1648f)), select(func_2(arg_1, vec2<f32>(-321f, 880f)).d, !vec3<bool>(arg_1.d.x, true, false), true)), !(!(17667u > u_input.e.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.b, _wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(-var_0.b)))));
    return (~u_input.e.x ^ 0u) & abs(u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 2>();
    global0 = array<vec3<bool>, 2>();
    let var_0 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(-390f)), _wgslsmith_f_op_f32(-507f + -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(542f, 815f))) * _wgslsmith_div_vec2_f32(vec2<f32>(368f, -1000f), vec2<f32>(1000f, -1274f))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)))), -1903f, global0[_wgslsmith_index_u32(func_1(max(~(-vec2<i32>(-2147483647i, u_input.c)), u_input.a.xy), Struct_1(u_input.c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-562f, -1464f) - vec2<f32>(468f, -428f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-563f, 961f))), vec3<bool>(all(vec2<bool>(true, false)), false, any(vec4<bool>(true, false, true, false))))), 2u)]);
    global0 = array<vec3<bool>, 2>();
    var var_1 = !func_2(func_4(func_4(func_5(Struct_1(-21060i, vec2<f32>(var_0.b.x, var_0.b.x), 980f, vec3<bool>(var_0.d.x, true, var_0.d.x)), Struct_1(u_input.d.x, vec2<f32>(1019f, var_0.b.x), 576f, var_0.d), var_0.d.x), vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x), var_0, Struct_1(41350i, vec2<f32>(var_0.c, var_0.c), 1196f, var_0.d)), _wgslsmith_div_vec3_u32(vec3<u32>(3330u, u_input.e.x, 4294967295u), ~vec3<u32>(u_input.e.x, 41326u, u_input.e.x)), func_2(var_0, var_0.b), var_0), vec2<f32>(-1241f, _wgslsmith_f_op_f32(-1000f * -495f))).d.zz;
    let var_2 = func_4(Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(sign(var_0.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(1825f + 781f))), 2361f)), !(!func_2(var_0, vec2<f32>(var_0.c, 1782f)).d)), vec3<u32>(1u, _wgslsmith_add_u32(func_1(-vec2<i32>(var_0.a, 2147483647i), Struct_1(u_input.d.x, vec2<f32>(var_0.c, 442f), var_0.c, vec3<bool>(false, var_0.d.x, var_0.d.x))), u_input.e.x), u_input.e.x), func_4(func_5(Struct_1(var_0.a, var_0.b, var_0.b.x, vec3<bool>(true, true, true)), var_0, func_2(Struct_1(2147483647i, vec2<f32>(-582f, var_0.c), 178f, global0[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(586f, 1000f))).d.x), vec3<u32>(63616u, u_input.e.x, 2122u), var_0, Struct_1(2147483647i, var_0.b, -1610f, func_4(Struct_1(var_0.a, var_0.b, var_0.c, vec3<bool>(var_1.x, true, false)), ~vec3<u32>(1u, u_input.e.x, u_input.e.x), func_5(var_0, var_0, false), func_4(Struct_1(u_input.d.x, vec2<f32>(818f, 1687f), -995f, vec3<bool>(var_1.x, false, false)), vec3<u32>(4294967295u, u_input.e.x, u_input.e.x), var_0, Struct_1(u_input.c, vec2<f32>(356f, 653f), var_0.c, vec3<bool>(var_0.d.x, false, false)))).d)), func_4(Struct_1(58549i, var_0.b, _wgslsmith_f_op_f32(-1f), vec3<bool>(true, true, var_1.x | false)), ~(vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x) | vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)) | ~reverseBits(vec3<u32>(27834u, 0u, u_input.e.x)), Struct_1(21945i, _wgslsmith_f_op_vec2_f32(select(var_0.b, var_0.b, any(vec3<bool>(var_1.x, var_0.d.x, var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * _wgslsmith_f_op_f32(-307f + -229f)), var_0.d), Struct_1(-47380i, vec2<f32>(func_4(Struct_1(u_input.d.x, var_0.b, var_0.b.x, vec3<bool>(var_0.d.x, true, var_1.x)), vec3<u32>(77683u, 4294967295u, u_input.e.x), Struct_1(u_input.a.x, var_0.b, -1276f, vec3<bool>(true, var_0.d.x, var_1.x)), var_0).c, -185f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -860f)), global0[_wgslsmith_index_u32(min(countOneBits(0u), u_input.e.x), 2u)])));
    let var_3 = func_2(func_2(Struct_1(2147483647i, vec2<f32>(_wgslsmith_f_op_f32(674f - var_0.b.x), var_2.b.x), _wgslsmith_f_op_f32(-var_0.c), !vec3<bool>(var_1.x, true, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, var_2.b.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_2.b))))), vec2<f32>(_wgslsmith_f_op_f32(-365f * var_0.c), 282f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1763u, u_input.e.x, u_input.e.x), select(vec4<u32>(46814u, 66536u, 4294967295u, u_input.e.x), vec4<u32>(1u, 4294967295u, u_input.e.x, 25095u), vec4<bool>(var_1.x, var_1.x, false, true)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(func_2(func_5(var_0, var_2, var_1.x), _wgslsmith_f_op_vec2_f32(select(var_2.b, var_0.b, var_3.d.x))).c, _wgslsmith_f_op_f32(ceil(-612f)), func_2(Struct_1(var_0.a, vec2<f32>(var_3.b.x, 1000f), var_3.b.x, global0[_wgslsmith_index_u32(u_input.e.x, 2u)]), vec2<f32>(-169f, var_0.c)).c))), var_2.b.x);
}

