struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<f32>(180f, 974f, -1259f, -715f), 21413u, 0u, vec4<f32>(1570f, 1059f, 516f, 1015f), vec2<bool>(false, false)), Struct_1(vec4<f32>(-1000f, 982f, 486f, 1204f), 1u, 1u, vec4<f32>(-382f, 1000f, -613f, -1271f), vec2<bool>(true, false)), Struct_1(vec4<f32>(-1836f, 224f, 912f, 1000f), 48415u, 4294967295u, vec4<f32>(-2358f, -214f, 1277f, -551f), vec2<bool>(true, true)), Struct_1(vec4<f32>(572f, -1439f, -432f, -1124f), 1u, 0u, vec4<f32>(-2098f, 459f, -104f, -1238f), vec2<bool>(false, false)), Struct_1(vec4<f32>(-1353f, 1733f, 1513f, -1054f), 88057u, 46775u, vec4<f32>(-1171f, 323f, -548f, -1222f), vec2<bool>(false, false)), Struct_1(vec4<f32>(-1325f, -1223f, -197f, -1668f), 4294967295u, 50652u, vec4<f32>(-1442f, 1792f, 1000f, 1412f), vec2<bool>(true, false)), Struct_1(vec4<f32>(-1766f, -878f, 270f, 565f), 0u, 1u, vec4<f32>(470f, -1581f, 233f, -1065f), vec2<bool>(true, false)), Struct_1(vec4<f32>(1417f, 846f, 1650f, 928f), 2787u, 29697u, vec4<f32>(278f, 362f, 523f, 203f), vec2<bool>(true, false)), Struct_1(vec4<f32>(-1000f, -1241f, -1353f, -1545f), 4294967295u, 0u, vec4<f32>(758f, -526f, 1722f, -1000f), vec2<bool>(true, false)), Struct_1(vec4<f32>(-1563f, -380f, 161f, 409f), 4294967295u, 64387u, vec4<f32>(-1000f, -1079f, -534f, 216f), vec2<bool>(false, false)), Struct_1(vec4<f32>(1674f, -1134f, -310f, -499f), 0u, 1u, vec4<f32>(710f, -1034f, -145f, -891f), vec2<bool>(true, true)), Struct_1(vec4<f32>(-896f, -1765f, -167f, -770f), 19691u, 48840u, vec4<f32>(-1000f, 1000f, 1627f, -479f), vec2<bool>(true, true)), Struct_1(vec4<f32>(1390f, -942f, -1385f, -1253f), 21097u, 1u, vec4<f32>(-1000f, 713f, -302f, 2596f), vec2<bool>(false, false)), Struct_1(vec4<f32>(-773f, -1416f, 1708f, -1659f), 71353u, 4294967295u, vec4<f32>(-1650f, -1074f, 524f, -2002f), vec2<bool>(true, true)), Struct_1(vec4<f32>(-346f, 1319f, -1085f, 1334f), 33965u, 106552u, vec4<f32>(833f, 943f, 883f, 758f), vec2<bool>(true, false)), Struct_1(vec4<f32>(1120f, -2171f, -1121f, -399f), 1u, 1u, vec4<f32>(-517f, 1227f, -1047f, 598f), vec2<bool>(false, true)), Struct_1(vec4<f32>(1357f, -932f, 207f, -2043f), 4294967295u, 4294967295u, vec4<f32>(-1975f, 394f, -1764f, 185f), vec2<bool>(false, true)), Struct_1(vec4<f32>(1001f, -812f, 810f, -283f), 45432u, 0u, vec4<f32>(523f, -1110f, -1151f, -699f), vec2<bool>(false, false)), Struct_1(vec4<f32>(1129f, 219f, 664f, 230f), 14371u, 34703u, vec4<f32>(2526f, 651f, 1441f, 1083f), vec2<bool>(false, false)), Struct_1(vec4<f32>(-442f, 973f, 1000f, 1332f), 43514u, 44667u, vec4<f32>(-890f, -706f, 255f, -916f), vec2<bool>(false, true)), Struct_1(vec4<f32>(-1000f, -418f, -265f, -1958f), 23224u, 11221u, vec4<f32>(889f, 514f, -529f, -733f), vec2<bool>(false, false)), Struct_1(vec4<f32>(1411f, 2766f, 813f, -539f), 0u, 1u, vec4<f32>(-923f, 532f, -931f, -306f), vec2<bool>(true, false)), Struct_1(vec4<f32>(-1000f, 193f, 1066f, -722f), 66684u, 16401u, vec4<f32>(485f, 850f, 803f, -394f), vec2<bool>(true, false)), Struct_1(vec4<f32>(932f, 1000f, -922f, 115f), 0u, 4294967295u, vec4<f32>(389f, 617f, 1000f, 358f), vec2<bool>(true, false)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 24>();
    var var_0 = Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(900f, -429f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(237f + -113f)), -746f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(838f)))), u_input.c, reverseBits(~u_input.c), vec4<f32>(-406f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(715f, 1132f))) - _wgslsmith_f_op_f32(round(-132f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(795f))) + _wgslsmith_f_op_f32(f32(-1f) * -586f)), _wgslsmith_div_f32(1202f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1249f + 2100f) + _wgslsmith_f_op_f32(f32(-1f) * -1398f)))), select(vec2<bool>(true | any(vec3<bool>(true, true, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    let var_1 = vec2<bool>(!var_0.e.x, true);
    let var_2 = _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(select(-1830f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + var_0.a.x), 620f), ~53191u > _wgslsmith_sub_u32(69658u >> (var_0.c % 32u), _wgslsmith_div_u32(72093u, var_0.c)))));
    global0 = array<Struct_1, 24>();
    return 1226f;
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 24>();
    var var_0 = Struct_2(all(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)) || all(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))), select(vec3<bool>(true, true, true), vec3<bool>(!all(vec2<bool>(false, true)), all(vec2<bool>(true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    let var_1 = 1u & _wgslsmith_clamp_u32(~(~min(u_input.c, u_input.c)), firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 0u) & _wgslsmith_mod_u32(u_input.c, u_input.c)), u_input.c);
    var var_2 = u_input.c;
    let var_3 = abs(-12630i);
    return _wgslsmith_f_op_f32(floor(-288f));
}

fn func_2(arg_0: f32) -> vec3<u32> {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(~(~0u << (0u % 32u)), 24u)], _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1149f, arg_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true))), Struct_2(true, vec3<bool>(false, u_input.c >= ~u_input.c, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1506f, arg_0))) + _wgslsmith_f_op_f32(-arg_0)))));
    var var_1 = u_input.c;
    var_1 = var_0.a.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.d.xyy)) - vec3<f32>(_wgslsmith_div_f32(527f, -1000f), arg_0, _wgslsmith_f_op_f32(arg_0 - -1000f)));
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 + var_0.b.x), var_2.x)), 1167f, -365f, _wgslsmith_f_op_f32(-arg_0)), var_0.a.d), select(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.c, 4294967295u, abs(var_0.a.b)), (vec3<u32>(var_0.a.c, 123487u, var_0.a.b) >> (vec3<u32>(u_input.c, 0u, u_input.c) % vec3<u32>(32u))) | vec3<u32>(var_0.a.c, 0u, var_0.a.b)), false), reverseBits(14818u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-1211f - -699f), -1000f, _wgslsmith_f_op_f32(func_1())) + var_0.a.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1568f, _wgslsmith_f_op_f32(arg_0 - -1061f), var_2.x, -216f)))), !var_0.c.b.yz);
    return ~vec3<u32>(firstLeadingBit(~u_input.c | ~var_0.a.c), u_input.c, _wgslsmith_clamp_u32(9038u, ~var_0.a.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.b, 4294967295u), vec2<u32>(var_3.c, 26649u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    let var_0 = vec2<f32>(-793f, _wgslsmith_f_op_f32(func_1()));
    let var_1 = _wgslsmith_add_vec3_u32(func_2(194f) & vec3<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(u_input.c, 4288u, 65446u)), vec3<u32>(1u, u_input.c, 14820u)), ~u_input.c & _wgslsmith_div_u32(48410u, u_input.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 6836u, u_input.c, 40706u), vec4<u32>(u_input.c, 0u, u_input.c, 1u) << (vec4<u32>(u_input.c, 4294967295u, 66533u, u_input.c) % vec4<u32>(32u)))), vec3<u32>(select(5726u << (1u % 32u), _wgslsmith_div_u32(~u_input.c, ~u_input.c), any(vec3<bool>(true, false, true)) || true), u_input.c, _wgslsmith_sub_u32(u_input.c, u_input.c) & 47090u));
    let x = u_input.a;
    s_output = StorageBuffer(33881i, ~(~(vec4<u32>(1u, 17472u, 12450u, 10568u) | ~vec4<u32>(34601u, 4294967295u, var_1.x, 18828u))));
}

