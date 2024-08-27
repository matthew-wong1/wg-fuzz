struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(4294967295u, -1i, vec3<f32>(1474f, -1191f, 698f), Struct_1(vec2<f32>(-1000f, 245f), 4408u, 0u, 50058u)), Struct_2(0u, 28821i, vec3<f32>(-1868f, -518f, 1779f), Struct_1(vec2<f32>(1107f, -914f), 22183u, 67336u, 128203u)), Struct_2(4294967295u, 27483i, vec3<f32>(1562f, -1395f, -585f), Struct_1(vec2<f32>(-739f, -307f), 6432u, 9310u, 0u)), Struct_2(4294967295u, 23721i, vec3<f32>(-710f, 166f, -1475f), Struct_1(vec2<f32>(687f, 1021f), 1u, 9808u, 48250u)), Struct_2(7909u, 18380i, vec3<f32>(790f, -1053f, 384f), Struct_1(vec2<f32>(214f, 1289f), 22983u, 53371u, 15453u)), Struct_2(10371u, 19450i, vec3<f32>(1000f, -1000f, -1132f), Struct_1(vec2<f32>(-273f, 1000f), 4294967295u, 9367u, 4294967295u)), Struct_2(28269u, 2147483647i, vec3<f32>(-275f, -865f, -538f), Struct_1(vec2<f32>(-366f, 383f), 1u, 0u, 1u)), Struct_2(4294967295u, -45217i, vec3<f32>(267f, 1894f, -726f), Struct_1(vec2<f32>(188f, -1000f), 1u, 90686u, 1u)), Struct_2(4294967295u, 2147483647i, vec3<f32>(-837f, -509f, -1000f), Struct_1(vec2<f32>(1325f, -1944f), 1u, 56195u, 0u)), Struct_2(47253u, -1i, vec3<f32>(369f, 965f, 178f), Struct_1(vec2<f32>(1973f, -128f), 49964u, 4294967295u, 15661u)), Struct_2(4294967295u, 1i, vec3<f32>(781f, -775f, -260f), Struct_1(vec2<f32>(1348f, 110f), 1u, 62105u, 4294967295u)), Struct_2(9608u, 0i, vec3<f32>(-406f, 1629f, 983f), Struct_1(vec2<f32>(-1000f, -772f), 1u, 0u, 4294967295u)), Struct_2(53982u, 2147483647i, vec3<f32>(1178f, 592f, -239f), Struct_1(vec2<f32>(-525f, 275f), 20358u, 4294967295u, 0u)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: f32, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(~1i, 0i, -2147483647i, -1i), firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(u_input.d.x, arg_0.x) | -u_input.d.x, 0i, arg_0.x, -2147483647i & abs(arg_0.x))));
    var_0 = vec4<i32>(var_0.x, u_input.d.x, u_input.d.x, _wgslsmith_mod_i32(u_input.d.x, -var_0.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -2070f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) + vec2<f32>(arg_2, -234f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1505f, arg_2), vec2<f32>(arg_2, 862f), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(684f, 959f)))))), arg_3, u_input.c.x, max(countOneBits(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(1u, arg_1.x, 1u)), 56533u)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_3, u_input.c.x), 0u, ~0u) | arg_1.x));
    let var_2 = true;
    var var_3 = firstTrailingBit(var_1.c);
    return var_0.x;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(Struct_2(u_input.c.x, _wgslsmith_sub_i32(func_3(vec3<i32>(0i, 1i, 3870i), u_input.c, _wgslsmith_div_f32(-652f, 621f), ~1u), -u_input.d.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1255f, 369f, -1567f) + vec3<f32>(-218f, -126f, -1631f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(345f, -129f, -2045f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -433f), -429f, -1056f)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1192f, -719f)), 0u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.c.x, 37336u), vec4<u32>(u_input.b, 1u, 4294967295u, u_input.b)), 27065u), 1u)), (i32(-1i) * -3390i) & _wgslsmith_dot_vec2_i32(u_input.d.xy, vec2<i32>(func_3(vec3<i32>(-2147483647i, 2147483647i, u_input.d.x), vec3<u32>(0u, 0u, u_input.b), -557f, u_input.b), u_input.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -520f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(378f, 977f, 1000f, -607f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-166f, 470f, 948f, -505f) - vec4<f32>(-669f, 826f, -197f, 920f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 891f, -1180f, 1665f))) + _wgslsmith_div_vec4_f32(vec4<f32>(510f, 358f, 1602f, -1119f), vec4<f32>(-708f, 1000f, 1188f, 783f))))) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1212f, 509f))), _wgslsmith_f_op_f32(-850f * _wgslsmith_f_op_f32(trunc(1405f))))));
    global0 = array<Struct_2, 13>();
    var var_1 = Struct_5(true, -2403f, true);
    global0 = array<Struct_2, 13>();
    var var_2 = Struct_2(countOneBits(~1u), firstLeadingBit(-17285i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1638f)), -442f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-var_1.b)), -933f), ~_wgslsmith_mult_u32(var_0.a.a, u_input.c.x) ^ u_input.c.x, abs(var_0.a.a), 28639u));
    return global0[_wgslsmith_index_u32(17269u, 13u)];
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> Struct_3 {
    var var_0 = u_input.d.yz;
    var_0 = vec2<i32>(_wgslsmith_mod_i32(-4421i, firstTrailingBit(~arg_0)), arg_0);
    let var_1 = ~(-27593i);
    var_0 = -u_input.d.xz | abs(select(~_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 2147483647i), u_input.d.xx), vec2<i32>(-1i) * -u_input.d.zz, arg_1.a.x == arg_1.a.x));
    var var_2 = ~1u;
    return Struct_3(func_2(), 0i, -144f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1516f, 1672f, false)) - _wgslsmith_f_op_f32(arg_1.a.x + 1896f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1127f)), arg_1.a.x, 674f));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> vec3<bool> {
    global0 = array<Struct_2, 13>();
    let var_0 = Struct_5(true & !any(vec2<bool>(false, true)), func_2().c.x, !(!any(vec2<bool>(false, false))));
    let var_1 = func_1(~func_3(u_input.d, ~(~u_input.c), arg_1.d.a.x, ~(arg_0.a.d.c ^ u_input.c.x)), arg_0.a.d, select(vec3<bool>(true, true, true), vec3<bool>(false, !(var_0.c | true), var_0.c), vec3<bool>(false, var_0.c, false)), false).a;
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    return vec3<bool>(!any(vec4<bool>(var_0.c, var_0.c, var_1.c.x >= -651f, !var_0.c)), true, false);
}

fn func_5(arg_0: vec3<bool>, arg_1: u32) -> StorageBuffer {
    let var_0 = -115f;
    var var_1 = firstTrailingBit(~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.b, arg_1, 0u), vec4<u32>(41638u, 1u, arg_1, 4294967295u) ^ vec4<u32>(arg_1, 10878u, u_input.b, 1u))));
    var var_2 = func_1(u_input.d.x, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1150f)))), 1u, ~(~u_input.c.x), arg_1), !func_4(Struct_3(global0[_wgslsmith_index_u32(1u, 13u)], 9125i, var_0, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, -299f, var_0, 250f), vec4<f32>(var_0, 863f, 1371f, 221f), vec4<bool>(arg_0.x, arg_0.x, false, true)))), Struct_2(1u, -99725i & u_input.d.x, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-730f, 1000f, 148f))), Struct_1(vec2<f32>(var_0, var_0), var_1.x, var_1.x, arg_1))), any(func_4(Struct_3(global0[_wgslsmith_index_u32(37688u, 13u)], _wgslsmith_sub_i32(-1i, u_input.d.x), -143f, vec4<f32>(var_0, 400f, var_0, 1000f)), global0[_wgslsmith_index_u32(~(~4294967295u), 13u)]))).a.d;
    var_1 = reverseBits(~(~(~(vec4<u32>(4294967295u, 8180u, u_input.c.x, u_input.a.x) << (vec4<u32>(10217u, var_1.x, 4294967295u, var_2.b) % vec4<u32>(32u))))));
    let var_3 = func_1(u_input.d.x, func_2().d, select(func_4(func_1(~(-2147483647i), Struct_1(var_2.a, arg_1, 4294967295u, 120823u), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), false), Struct_2(min(var_2.d, 19451u), u_input.d.x, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.a.x, 645f, 2587f))), func_2().d)), !arg_0, arg_0.x), ~(u_input.a.x << (~var_2.b % 32u)) == var_1.x).a;
    return StorageBuffer(vec4<i32>(u_input.d.x, func_1(max(u_input.d.x, 0i) << (max(1u, u_input.c.x) % 32u), var_3.d, vec3<bool>(false, false, false), !(var_2.a.x < 807f)).a.b, ~(-(var_3.b >> (4294967295u % 32u))), -51695i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 13>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1027f, 919f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1574f, 368f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1405f, -100f), vec2<f32>(-767f, 348f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(712f, -846f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1030f, -512f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1470f, -708f)))))), u_input.c.x, u_input.c.x | reverseBits(36550u), 37294u);
    var var_1 = false;
    let var_2 = vec4<bool>(true, false, select(abs(~var_0.b) != ~u_input.a.x, true, !(!select(false, false, false))), true);
    let var_3 = u_input.d.x;
    global0 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = func_5(!func_4(func_1(-var_3, Struct_1(var_0.a, var_0.c, u_input.a.x, var_0.d), var_2.xzx, var_2.x), global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), ~var_0.b);
}

