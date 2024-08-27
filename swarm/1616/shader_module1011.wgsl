struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<bool>(true, false, true), vec2<f32>(1478f, 2406f), 1i, vec4<f32>(507f, -1250f, 1601f, 885f)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-338f, 197f), i32(-2147483648), vec4<f32>(-606f, -380f, 807f, -1127f)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(2109f, -725f), -605i, vec4<f32>(-1809f, -1108f, 1454f, -795f)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-1047f, 181f), -39166i, vec4<f32>(811f, 743f, -893f, 121f)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(529f, -1998f), 67762i, vec4<f32>(158f, 159f, 108f, -1037f)), Struct_1(vec3<bool>(false, false, true), vec2<f32>(392f, -990f), 2147483647i, vec4<f32>(-938f, -455f, 1061f, 1552f)), Struct_1(vec3<bool>(true, false, false), vec2<f32>(-1000f, 828f), 1i, vec4<f32>(735f, 1320f, 934f, -1222f)), Struct_1(vec3<bool>(true, false, true), vec2<f32>(324f, 804f), i32(-2147483648), vec4<f32>(1380f, -405f, -1779f, -769f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-1119f, 1000f), 6742i, vec4<f32>(-1454f, 818f, -689f, -1271f)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-1101f, -596f), -10201i, vec4<f32>(574f, -1636f, 1000f, -250f)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(985f, -1275f), -50581i, vec4<f32>(702f, 936f, 527f, 262f)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(1128f, -1288f), 0i, vec4<f32>(-382f, -626f, 1197f, -1195f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-1735f, -1676f), -17890i, vec4<f32>(-906f, -721f, 927f, -690f)), Struct_1(vec3<bool>(false, false, true), vec2<f32>(679f, -523f), 2147483647i, vec4<f32>(1381f, -900f, -1000f, -471f)), Struct_1(vec3<bool>(true, false, true), vec2<f32>(346f, 840f), 17635i, vec4<f32>(-1000f, -1529f, 942f, -726f)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-288f, 692f), 31246i, vec4<f32>(983f, 802f, 780f, -248f)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(1427f, 793f), 8507i, vec4<f32>(1034f, 1134f, 233f, -189f)), Struct_1(vec3<bool>(false, false, true), vec2<f32>(-760f, -490f), 23519i, vec4<f32>(-1739f, 729f, 306f, -1000f)), Struct_1(vec3<bool>(false, false, true), vec2<f32>(1044f, 271f), 2147483647i, vec4<f32>(350f, -1243f, 165f, -2112f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-654f, -500f), -1i, vec4<f32>(-526f, 833f, -1057f, 870f)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(368f, -914f), 2147483647i, vec4<f32>(372f, -793f, 133f, -1035f)), Struct_1(vec3<bool>(true, false, false), vec2<f32>(537f, 462f), 143i, vec4<f32>(1000f, -720f, 1536f, 344f)), Struct_1(vec3<bool>(true, false, false), vec2<f32>(1358f, 296f), -1i, vec4<f32>(1622f, 1413f, 250f, -714f)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(906f, 897f), 3065i, vec4<f32>(1354f, -1144f, 793f, 655f)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(1061f, 1528f), 11395i, vec4<f32>(1018f, 1000f, 1000f, -2147f)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(1000f, 535f), 0i, vec4<f32>(513f, 1177f, 1368f, -135f)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-1563f, 919f), -60821i, vec4<f32>(-171f, 1847f, -460f, -1170f)), Struct_1(vec3<bool>(false, false, true), vec2<f32>(-2612f, 1250f), -1i, vec4<f32>(287f, -1102f, -1493f, 528f)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(851f, -179f), 44084i, vec4<f32>(-1000f, -1124f, -623f, 981f)));

var<private> global1: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(39278i, 31543i), vec2<i32>(-27407i, -56952i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, 2147483647i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> u32 {
    global1 = array<vec2<i32>, 4>();
    global0 = array<Struct_1, 29>();
    let var_0 = select(vec2<bool>(false, !select(true, arg_0.a.a.a.x, arg_1.a.x) | true), !arg_0.a.e.wy, vec2<bool>(!(!arg_0.a.a.a.x & (-954f > arg_1.b.x)), false));
    global1 = array<vec2<i32>, 4>();
    global1 = array<vec2<i32>, 4>();
    return u_input.a;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: f32) -> i32 {
    global0 = array<Struct_1, 29>();
    let var_0 = func_3(Struct_3(Struct_2(global0[_wgslsmith_index_u32((41598u << (arg_2.x % 32u)) | u_input.a, 29u)], ~u_input.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, -1679f, 1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3 + -1106f))), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(false, arg_0, arg_0, true), true)), -931f, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(arg_2.x), ~arg_2.x, 1u), 4u)] & arg_1), Struct_1(vec3<bool>(any(select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(false, false, true, true), arg_0)), !all(vec3<bool>(arg_0, arg_0, false)), all(vec3<bool>(arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1446f), _wgslsmith_f_op_f32(arg_3 - -1000f))), ~(~(-17157i)), vec4<f32>(_wgslsmith_f_op_f32(-arg_3), -391f, _wgslsmith_f_op_f32(-2233f + -623f), 795f)), _wgslsmith_mult_u32(~u_input.a, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.x, 0u), firstTrailingBit(vec2<u32>(4294967295u, 22322u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3, arg_3, -2200f, arg_3))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, 1231f, arg_3)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, _wgslsmith_f_op_f32(arg_3 + arg_3), _wgslsmith_div_f32(arg_3, 1069f)))));
    return 0i;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> bool {
    global1 = array<vec2<i32>, 4>();
    var var_0 = arg_1;
    let var_1 = var_0.e;
    let var_2 = ~(~firstLeadingBit(~var_0.b) >> (_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(~1u, var_0.b)) % 32u));
    var var_3 = ~abs(~_wgslsmith_sub_i32(var_0.a.c >> (0u % 32u), func_2(var_1.x, vec2<i32>(-16561i, 20261i), vec3<u32>(arg_1.b, 57624u, 0u), -645f)));
    return !(!select(all(arg_1.e), true && var_0.e.x, !arg_1.e.x)) & true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 4>();
    var var_0 = select(vec4<bool>(true, true, !any(vec3<bool>(false, false, true)), func_1(67359u, Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<f32>(-865f, 1000f), -2147483647i, vec4<f32>(830f, -702f, 462f, -395f)), u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(589f, 991f, -1025f, 2050f)), 817f, vec4<bool>(false, true, true, false)))), select(select(vec4<bool>(false, true, false, all(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true), !(18883u <= u_input.a)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), true), true);
    global0 = array<Struct_1, 29>();
    var_0 = vec4<bool>(func_1(u_input.a, Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 43189u, 12669u), vec3<u32>(4294967295u, 10272u, 6425u)) | ~u_input.a, 29u)], 4294967295u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-976f, 675f, 427f, 1346f)))), 1598f, !vec4<bool>(var_0.x, false, true, false))), func_1(~u_input.a, Struct_2(Struct_1(var_0.wzy, vec2<f32>(229f, -1607f), 0i, vec4<f32>(-1000f, -888f, -397f, -686f)), _wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_div_vec4_f32(vec4<f32>(-726f, -1740f, 580f, -142f), vec4<f32>(1000f, -519f, 1377f, -576f)), 1000f, select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x))) && true, true, all(select(!(!vec4<bool>(false, true, var_0.x, true)), vec4<bool>(!var_0.x, !var_0.x, func_1(57059u, Struct_2(Struct_1(vec3<bool>(var_0.x, true, true), vec2<f32>(-1684f, 967f), 0i, vec4<f32>(-1000f, 209f, 1740f, -2185f)), u_input.a, vec4<f32>(1378f, 622f, 926f, 1024f), -519f, vec4<bool>(var_0.x, false, var_0.x, false))), true), var_0.x)));
    global1 = array<vec2<i32>, 4>();
    let var_1 = all(vec3<bool>(any(vec2<bool>(true, 1291u <= u_input.a)), true, true));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(714f + -626f), _wgslsmith_f_op_f32(ceil(852f)), -872f, _wgslsmith_f_op_f32(1524f + 1253f)))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_div_f32(-614f, 1759f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(1000f - 1147f))), -1104f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1195f, _wgslsmith_f_op_f32(f32(-1f) * -247f), _wgslsmith_f_op_f32(2364f * -247f), -789f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_2, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(304f, 992f, 1171f, var_2.x), var_2, vec4<bool>(true, false, true, var_0.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-287f, var_2.x, var_2.x, -334f) + var_2)))), ~max(vec4<u32>(5059u, 0u, _wgslsmith_mult_u32(u_input.a, u_input.a), 1u), vec4<u32>(abs(u_input.a), 1u, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), u_input.a)), -36002i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(286f * var_2.x))) - 1000f)));
}

