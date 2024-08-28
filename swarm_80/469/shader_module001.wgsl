struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-29346i, vec3<f32>(-176f, -176f, -342f), vec2<bool>(false, false), vec4<f32>(110f, 521f, -575f, 736f));

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-1555i, vec3<f32>(-1215f, -188f, 977f), vec2<bool>(false, true), vec4<f32>(-505f, -994f, 110f, -1000f)), Struct_1(1i, vec3<f32>(1000f, -1260f, 1001f), vec2<bool>(false, true), vec4<f32>(407f, -1212f, 436f, 397f)), Struct_1(2147483647i, vec3<f32>(1302f, 638f, -896f), vec2<bool>(true, true), vec4<f32>(-416f, 818f, -1332f, -611f)), Struct_1(-1i, vec3<f32>(108f, 2124f, -325f), vec2<bool>(true, true), vec4<f32>(-775f, 1417f, 161f, -1176f)), Struct_1(2147483647i, vec3<f32>(-1157f, 995f, -151f), vec2<bool>(false, false), vec4<f32>(351f, -545f, 1969f, 375f)), Struct_1(-2187i, vec3<f32>(-861f, -234f, -336f), vec2<bool>(true, true), vec4<f32>(-1826f, -854f, 574f, 1115f)), Struct_1(2147483647i, vec3<f32>(-755f, 146f, 1000f), vec2<bool>(true, false), vec4<f32>(-839f, 670f, 1000f, -433f)));

var<private> global3: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_1(-51353i, vec3<f32>(432f, 810f, -2745f), vec2<bool>(false, false), vec4<f32>(-2098f, -1407f, -2211f, -511f)), vec2<u32>(1u, 1u), Struct_1(i32(-2147483648), vec3<f32>(-114f, 173f, -1144f), vec2<bool>(true, false), vec4<f32>(-635f, -714f, -337f, 2741f)), true), Struct_3(Struct_1(1i, vec3<f32>(-2424f, 708f, -273f), vec2<bool>(true, false), vec4<f32>(-1000f, -156f, -186f, 1157f)), vec2<u32>(39942u, 4294967295u), Struct_1(-36396i, vec3<f32>(-1156f, 945f, -936f), vec2<bool>(true, false), vec4<f32>(215f, 149f, -113f, 1405f)), true), Struct_3(Struct_1(32121i, vec3<f32>(891f, 483f, -682f), vec2<bool>(false, false), vec4<f32>(300f, 3090f, -907f, -455f)), vec2<u32>(1u, 1u), Struct_1(-1i, vec3<f32>(670f, 515f, 1203f), vec2<bool>(true, true), vec4<f32>(1777f, -1197f, -474f, -313f)), true), Struct_3(Struct_1(i32(-2147483648), vec3<f32>(-1413f, -465f, -585f), vec2<bool>(true, true), vec4<f32>(-1448f, -905f, -785f, 1990f)), vec2<u32>(8791u, 22153u), Struct_1(2147483647i, vec3<f32>(-864f, 100f, 174f), vec2<bool>(true, true), vec4<f32>(1326f, -503f, -979f, 981f)), true), Struct_3(Struct_1(-1i, vec3<f32>(-1003f, -529f, 1837f), vec2<bool>(false, false), vec4<f32>(781f, -1664f, 1916f, -533f)), vec2<u32>(7372u, 4294967295u), Struct_1(-50483i, vec3<f32>(-722f, -178f, 166f), vec2<bool>(false, false), vec4<f32>(1584f, 926f, -170f, -1682f)), false), Struct_3(Struct_1(-4383i, vec3<f32>(976f, -1651f, -1884f), vec2<bool>(false, true), vec4<f32>(416f, 980f, -658f, 1000f)), vec2<u32>(0u, 0u), Struct_1(2076i, vec3<f32>(1301f, 1781f, -463f), vec2<bool>(false, true), vec4<f32>(-601f, 461f, -284f, -592f)), true), Struct_3(Struct_1(4058i, vec3<f32>(-240f, -1000f, -732f), vec2<bool>(true, false), vec4<f32>(794f, 356f, 218f, 166f)), vec2<u32>(1u, 22014u), Struct_1(0i, vec3<f32>(-390f, -1116f, 247f), vec2<bool>(true, true), vec4<f32>(-121f, -1000f, 260f, 640f)), false), Struct_3(Struct_1(-73981i, vec3<f32>(620f, 1204f, -919f), vec2<bool>(true, true), vec4<f32>(312f, 154f, 350f, -1238f)), vec2<u32>(84463u, 695u), Struct_1(0i, vec3<f32>(335f, 1206f, 295f), vec2<bool>(false, true), vec4<f32>(1298f, 1000f, -2162f, 172f)), false), Struct_3(Struct_1(67720i, vec3<f32>(-970f, -627f, 1374f), vec2<bool>(false, false), vec4<f32>(-722f, 1755f, 573f, -1071f)), vec2<u32>(0u, 72348u), Struct_1(0i, vec3<f32>(830f, -936f, -402f), vec2<bool>(true, false), vec4<f32>(-1000f, 981f, -247f, 2404f)), false), Struct_3(Struct_1(0i, vec3<f32>(-1011f, -637f, 273f), vec2<bool>(false, false), vec4<f32>(-680f, 1527f, -604f, -1605f)), vec2<u32>(27670u, 1302u), Struct_1(2147483647i, vec3<f32>(-398f, -125f, -1103f), vec2<bool>(true, false), vec4<f32>(-876f, 998f, 690f, -739f)), false), Struct_3(Struct_1(2147483647i, vec3<f32>(1325f, 1052f, -107f), vec2<bool>(true, true), vec4<f32>(1570f, 607f, 448f, -584f)), vec2<u32>(17229u, 1u), Struct_1(38629i, vec3<f32>(-2066f, 510f, 1000f), vec2<bool>(true, true), vec4<f32>(-977f, -155f, -1604f, 1048f)), true), Struct_3(Struct_1(41727i, vec3<f32>(-651f, 1780f, 1159f), vec2<bool>(true, false), vec4<f32>(-1618f, -343f, 559f, -1467f)), vec2<u32>(0u, 72785u), Struct_1(1i, vec3<f32>(-723f, -131f, 933f), vec2<bool>(true, false), vec4<f32>(-757f, -212f, 826f, -510f)), false), Struct_3(Struct_1(2147483647i, vec3<f32>(1579f, 481f, -1568f), vec2<bool>(false, false), vec4<f32>(-1151f, 1000f, -244f, 1000f)), vec2<u32>(4294967295u, 4294967295u), Struct_1(1i, vec3<f32>(-1000f, 923f, -1370f), vec2<bool>(true, true), vec4<f32>(458f, 254f, 1000f, -2121f)), false), Struct_3(Struct_1(2147483647i, vec3<f32>(606f, 330f, 1156f), vec2<bool>(true, true), vec4<f32>(-1014f, 897f, 2038f, 114f)), vec2<u32>(7425u, 62052u), Struct_1(-33625i, vec3<f32>(-1078f, 1491f, -447f), vec2<bool>(true, true), vec4<f32>(155f, -301f, 203f, -328f)), false));

var<private> global4: array<vec2<bool>, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> f32 {
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32((reverseBits(u_input.a) << (abs(u_input.a | 1u) % 32u)) << (_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, u_input.a, u_input.a) >> (vec3<u32>(25413u, 69546u, u_input.a) % vec3<u32>(32u)), countOneBits(vec3<u32>(u_input.a, 19872u, u_input.a))), ~countOneBits(vec3<u32>(32939u, 1u, 40065u))) % 32u), ~(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 50841u, 1u), vec3<u32>(18683u, 4294967295u, 81692u)), ~0u) << (firstTrailingBit(1u) % 32u))), 7u)];
    return -235f;
}

fn func_3() -> u32 {
    let var_0 = global0.b.x;
    global4 = array<vec2<bool>, 9>();
    let var_1 = Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(select(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), vec4<u32>(0u, 16034u, 1u, u_input.a) << (vec4<u32>(1u, u_input.a, 0u, u_input.a) % vec4<u32>(32u)), true), vec4<u32>(u_input.a, 1u, 1u, min(u_input.a, u_input.a))), select(max(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(109968u, u_input.a, u_input.a, 16692u)), vec4<u32>(u_input.a, 51760u, 0u, 6406u), !vec4<bool>(global0.c.x, true, global0.c.x, false)) << (max(vec4<u32>(62055u, 0u, 0u, 9051u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))) % vec4<u32>(32u))));
    let var_2 = global3[_wgslsmith_index_u32(~1u, 14u)];
    var var_3 = global3[_wgslsmith_index_u32(abs(0u), 14u)];
    return _wgslsmith_sub_u32(select(113996u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, u_input.a, var_2.b.x), var_1.a.zzz), 47940u ^ var_1.a.x), ~abs(vec2<u32>(0u, 1u))), any(!global4[_wgslsmith_index_u32(4294967295u, 9u)])), ~(~countOneBits(u_input.a) << (_wgslsmith_dot_vec4_u32(~var_1.a, _wgslsmith_div_vec4_u32(var_1.a, var_1.a)) % 32u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec2<u32>) -> u32 {
    global1 = 45208u;
    global0 = global2[_wgslsmith_index_u32(u_input.a, 7u)];
    global1 = 27536u;
    var var_0 = false;
    var var_1 = Struct_1(max(global0.a, -global0.a), _wgslsmith_f_op_vec3_f32(-global0.d.ywx), select(arg_1.zx, vec2<bool>(arg_1.x, true), select(vec2<bool>(global0.c.x, any(vec3<bool>(arg_1.x, global0.c.x, global0.c.x))), vec2<bool>(true, select(true, global0.c.x, global0.c.x)), !global4[_wgslsmith_index_u32(func_3(), 9u)])), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 2438f, global0.b.x, global0.d.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, 524f, arg_0.x, arg_0.x))), vec4<bool>(arg_1.x, true, true, true))) - _wgslsmith_f_op_vec4_f32(global0.d + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, arg_0.x, -1117f, arg_0.x) - vec4<f32>(global0.d.x, arg_0.x, arg_0.x, global0.d.x)))), true)));
    return arg_2.x & 24481u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(reverseBits(countOneBits(u_input.a)), u_input.a, abs(abs(max(1u, 0u))), _wgslsmith_add_u32(u_input.a, _wgslsmith_mod_u32(~(~u_input.a), u_input.a)));
    global0 = Struct_1(global0.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(-2147483647i, global0.a, -1i) & vec3<i32>(global0.a, global0.a, 0i), Struct_1(global0.a, vec3<f32>(786f, -1556f, -398f), vec2<bool>(false, global0.c.x), vec4<f32>(-967f, 425f, 931f, global0.b.x)), _wgslsmith_f_op_f32(-748f * 164f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(min(-179f, 431f))))), global0.b.x, 490f), vec2<bool>(false, global0.c.x), global0.d);
    global4 = array<vec2<bool>, 9>();
    var var_1 = _wgslsmith_div_i32(0i, _wgslsmith_mod_i32(firstTrailingBit(global0.a), global0.a));
    let var_2 = min((vec4<u32>(~u_input.a, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), var_0.xw), ~var_0.x) ^ vec4<u32>(firstLeadingBit(49803u), ~22937u, 53420u, ~1u)) ^ ~vec4<u32>(func_2(global0.d, vec3<bool>(false, false, false), vec2<u32>(14688u, 9621u)), var_0.x, 0u | var_0.x, ~4294967295u), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(21671u, var_0.x, 144616u, u_input.a) >> (vec4<u32>(var_0.x, u_input.a, 8398u, 35104u) % vec4<u32>(32u))), vec4<u32>(~var_0.x, var_0.x, var_0.x, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(7018u), 1222f);
}

