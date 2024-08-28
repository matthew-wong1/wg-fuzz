struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: f32;

var<private> global2: Struct_4;

var<private> global3: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(Struct_3(50027i, Struct_2(Struct_1(vec3<bool>(true, false, true), 0u, vec4<f32>(-927f, -962f, 315f, 610f), 2147483647i, i32(-2147483648)), true), Struct_1(vec3<bool>(true, true, true), 0u, vec4<f32>(-1299f, 408f, -775f, 1035f), -32450i, i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(true, true, true), 20685u, vec4<f32>(1555f, -1000f, 334f, 295f), -1i, 2147483647i), false), Struct_2(Struct_1(vec3<bool>(false, false, true), 7157u, vec4<f32>(-930f, 148f, -490f, -2159f), -1i, 18452i), false)), Struct_2(Struct_1(vec3<bool>(true, false, false), 8685u, vec4<f32>(-272f, -1085f, 283f, 290f), 2147483647i, -29568i), false)), Struct_4(Struct_3(1i, Struct_2(Struct_1(vec3<bool>(true, true, false), 0u, vec4<f32>(1081f, -374f, 803f, -271f), 1i, i32(-2147483648)), false), Struct_1(vec3<bool>(true, false, true), 4294967295u, vec4<f32>(-1482f, 514f, -1869f, 2007f), -25028i, -1i), Struct_2(Struct_1(vec3<bool>(true, true, false), 1u, vec4<f32>(-2991f, -794f, -670f, -1124f), 10621i, -1i), true), Struct_2(Struct_1(vec3<bool>(true, true, false), 48896u, vec4<f32>(-1644f, 792f, -601f, 196f), 2147483647i, 6146i), false)), Struct_2(Struct_1(vec3<bool>(false, true, true), 0u, vec4<f32>(-1224f, -1768f, -179f, 287f), -2977i, 18646i), true)), Struct_4(Struct_3(-17389i, Struct_2(Struct_1(vec3<bool>(false, false, false), 13331u, vec4<f32>(-202f, -479f, -2532f, -544f), -1i, 0i), true), Struct_1(vec3<bool>(false, true, true), 0u, vec4<f32>(773f, 2234f, -222f, 2049f), 33928i, 1i), Struct_2(Struct_1(vec3<bool>(false, true, true), 6160u, vec4<f32>(-787f, -1000f, -2124f, -1148f), 0i, -88603i), false), Struct_2(Struct_1(vec3<bool>(false, true, true), 4294967295u, vec4<f32>(134f, -571f, 1907f, -749f), i32(-2147483648), 1i), false)), Struct_2(Struct_1(vec3<bool>(false, false, false), 1u, vec4<f32>(802f, -1139f, -399f, 1412f), 77122i, 0i), true)), Struct_4(Struct_3(37992i, Struct_2(Struct_1(vec3<bool>(false, false, true), 130042u, vec4<f32>(-1662f, -386f, 277f, -297f), 35102i, -1i), true), Struct_1(vec3<bool>(false, true, true), 4294967295u, vec4<f32>(-371f, 383f, 311f, -1342f), i32(-2147483648), 34283i), Struct_2(Struct_1(vec3<bool>(true, true, false), 4294967295u, vec4<f32>(985f, 1348f, 1308f, 1298f), 30199i, -602i), true), Struct_2(Struct_1(vec3<bool>(true, false, true), 34975u, vec4<f32>(-340f, -1175f, 130f, 1000f), 10219i, -3860i), true)), Struct_2(Struct_1(vec3<bool>(false, false, false), 4294967295u, vec4<f32>(-166f, -557f, 1212f, -1493f), 0i, 5481i), false)), Struct_4(Struct_3(i32(-2147483648), Struct_2(Struct_1(vec3<bool>(true, true, false), 4294967295u, vec4<f32>(-1085f, -709f, -1282f, 534f), 28361i, 1i), false), Struct_1(vec3<bool>(true, true, true), 4294967295u, vec4<f32>(825f, 739f, 2200f, -358f), 39355i, -1i), Struct_2(Struct_1(vec3<bool>(false, false, true), 4294967295u, vec4<f32>(1115f, 581f, 465f, -1138f), -9706i, -1i), false), Struct_2(Struct_1(vec3<bool>(false, false, false), 4294967295u, vec4<f32>(-850f, -329f, -1307f, 580f), 0i, 25473i), true)), Struct_2(Struct_1(vec3<bool>(true, false, false), 1u, vec4<f32>(-111f, 1000f, 729f, -1417f), 58369i, 3434i), true)), Struct_4(Struct_3(46128i, Struct_2(Struct_1(vec3<bool>(false, true, false), 113560u, vec4<f32>(-772f, 243f, 382f, -619f), -45001i, 0i), false), Struct_1(vec3<bool>(false, true, false), 0u, vec4<f32>(310f, -189f, 570f, 924f), 1i, -1i), Struct_2(Struct_1(vec3<bool>(false, false, false), 4294967295u, vec4<f32>(653f, 933f, -1352f, -1232f), i32(-2147483648), 26522i), true), Struct_2(Struct_1(vec3<bool>(true, true, true), 4294967295u, vec4<f32>(-900f, 913f, -1369f, -1340f), 18347i, -10642i), false)), Struct_2(Struct_1(vec3<bool>(true, true, false), 47196u, vec4<f32>(663f, 1000f, 1555f, -2525f), -14822i, -20998i), false)), Struct_4(Struct_3(84495i, Struct_2(Struct_1(vec3<bool>(false, false, false), 1u, vec4<f32>(1000f, -1165f, 264f, -480f), 2147483647i, 2147483647i), true), Struct_1(vec3<bool>(false, false, true), 1u, vec4<f32>(566f, -157f, 1952f, 1000f), i32(-2147483648), i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(true, false, false), 45734u, vec4<f32>(-1218f, 835f, 1000f, -345f), -14025i, 2147483647i), true), Struct_2(Struct_1(vec3<bool>(false, false, false), 4294967295u, vec4<f32>(-873f, 495f, -1638f, 1000f), -29493i, i32(-2147483648)), false)), Struct_2(Struct_1(vec3<bool>(false, false, false), 7077u, vec4<f32>(-516f, 1119f, -161f, -630f), -35584i, 2147483647i), false)), Struct_4(Struct_3(-21342i, Struct_2(Struct_1(vec3<bool>(false, false, false), 4294967295u, vec4<f32>(-485f, -1387f, -850f, 156f), -1i, 27423i), true), Struct_1(vec3<bool>(true, true, false), 4294967295u, vec4<f32>(-790f, -1941f, -202f, -276f), 2147483647i, -8939i), Struct_2(Struct_1(vec3<bool>(true, true, false), 4294967295u, vec4<f32>(-426f, 350f, 132f, -182f), -10054i, i32(-2147483648)), false), Struct_2(Struct_1(vec3<bool>(false, true, true), 85238u, vec4<f32>(-1113f, 550f, 618f, 941f), 0i, i32(-2147483648)), true)), Struct_2(Struct_1(vec3<bool>(true, true, true), 0u, vec4<f32>(-963f, -244f, -517f, -1446f), -31946i, 1i), true)), Struct_4(Struct_3(i32(-2147483648), Struct_2(Struct_1(vec3<bool>(true, true, true), 0u, vec4<f32>(1364f, -1103f, 1521f, -2135f), i32(-2147483648), 0i), false), Struct_1(vec3<bool>(false, false, false), 0u, vec4<f32>(994f, 250f, -379f, -1463f), 30027i, 0i), Struct_2(Struct_1(vec3<bool>(false, false, false), 118856u, vec4<f32>(-1032f, -636f, -776f, 694f), -1i, 1i), false), Struct_2(Struct_1(vec3<bool>(true, false, true), 34242u, vec4<f32>(1651f, -470f, 604f, 172f), -1i, -18832i), false)), Struct_2(Struct_1(vec3<bool>(true, false, false), 21736u, vec4<f32>(-858f, -500f, -710f, -212f), -1i, 2167i), true)), Struct_4(Struct_3(i32(-2147483648), Struct_2(Struct_1(vec3<bool>(true, true, true), 34660u, vec4<f32>(1062f, 1579f, 2153f, 811f), -11311i, -13201i), false), Struct_1(vec3<bool>(true, true, false), 2642u, vec4<f32>(-520f, -359f, 529f, -900f), -8614i, 5272i), Struct_2(Struct_1(vec3<bool>(true, false, true), 0u, vec4<f32>(1000f, -1059f, 331f, 572f), 1i, -67876i), true), Struct_2(Struct_1(vec3<bool>(true, false, true), 1u, vec4<f32>(-1117f, -1841f, -345f, 394f), -2268i, 0i), false)), Struct_2(Struct_1(vec3<bool>(true, true, false), 1u, vec4<f32>(422f, -1496f, 2031f, -809f), 0i, 18650i), true)), Struct_4(Struct_3(43159i, Struct_2(Struct_1(vec3<bool>(true, false, false), 64762u, vec4<f32>(-527f, -1000f, 2304f, 1000f), 1i, -1i), false), Struct_1(vec3<bool>(true, true, false), 3503u, vec4<f32>(2242f, -572f, 144f, -549f), -13126i, -356i), Struct_2(Struct_1(vec3<bool>(false, true, true), 4294967295u, vec4<f32>(-1202f, 1271f, -2105f, -1000f), -10314i, 41005i), true), Struct_2(Struct_1(vec3<bool>(true, false, true), 1u, vec4<f32>(1014f, 2116f, -104f, -357f), -880i, 9042i), false)), Struct_2(Struct_1(vec3<bool>(true, false, false), 26252u, vec4<f32>(1441f, 1285f, 1014f, 1928f), -54807i, 25770i), false)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: vec4<f32>) -> i32 {
    let var_0 = global2.a;
    var var_1 = Struct_4(global2.a, var_0.e);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1596f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1544f, arg_0))), var_0.d.b)));
    var var_3 = var_1.b;
    let var_4 = arg_1;
    return max(_wgslsmith_mult_i32(min(var_1.b.a.d, countOneBits(1i)), countOneBits(i32(-1i) * -1i)), -34732i);
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    global3 = array<Struct_4, 11>();
    let var_0 = select(!global2.a.e.a.a.xz, vec2<bool>(!(global2.a.c.b < global0[_wgslsmith_index_u32(u_input.c, 12u)]), global2.a.e.b), global2.a.b.b);
    var var_1 = vec4<i32>(func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(942f)), _wgslsmith_div_f32(arg_0, 761f)))), global2.a.e, -1021f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(205f, 557f, global2.b.a.c.x, global2.b.a.c.x))) * vec4<f32>(arg_0, 779f, -1226f, arg_0))))), u_input.a.x, -27529i, u_input.a.x);
    let var_2 = 61013u;
    global3 = array<Struct_4, 11>();
    return _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.a.c.x + global2.a.c.c.x)) * global2.a.e.a.c.x))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    global0 = array<u32, 12>();
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(0i, 0i, 0i, global2.b.a.e), vec4<i32>(-1i, 2147483647i, global2.a.b.a.d, u_input.b.x), true), vec4<i32>(u_input.b.x, global2.a.e.a.d, 29576i, arg_2.e)), vec4<i32>(-23329i, 1i, u_input.b.x, select(2147483647i, 1i, false))), ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(34661i, u_input.a.x, 0i, u_input.b.x), vec4<i32>(-31879i, global2.b.a.e, 2147483647i, 0i)))), -_wgslsmith_mult_i32(2147483647i, 0i));
    var var_1 = u_input.c;
    let var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(select(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(arg_2.b, 12u)], arg_2.b, 1u), ~u_input.c, all(vec4<bool>(global2.b.a.a.x, global2.b.b, global2.b.a.a.x, false))), firstTrailingBit(arg_2.b), max(~4294967295u, arg_2.b)), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], arg_2.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a.d.a.b, 12u)], 12u)])) ^ vec3<u32>(4294967295u, arg_2.b, u_input.c), ~vec3<u32>(0u, 4294967295u, u_input.c)), reverseBits(~vec3<u32>(arg_2.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.b, 12u)], 12u)], 76385u) << (reverseBits(vec3<u32>(4294967295u, 1u, 8354u)) % vec3<u32>(32u)))), vec3<u32>(firstLeadingBit(arg_2.b), 1u, firstTrailingBit(~max(global2.b.a.b, 7825u))));
    let var_3 = arg_2.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(431f - -677f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(192f, -973f)) * arg_1.x))) - -795f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1366f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec4<bool>) -> vec3<bool> {
    global1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2283f - -1242f)) - global2.a.c.c.x) - 1173f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-756f, vec3<u32>(896u, 32373u, 4294967295u)))), global2.b.a.c.x, 329f))), global2.a.e.a));
    var var_0 = global2.a.e;
    let var_1 = vec4<bool>(global2.a.d.b, !(_wgslsmith_f_op_f32(floor(arg_1)) > -2275f), var_0.a.a.x, global2.b.b);
    var_0 = global2.a.e;
    global3 = array<Struct_4, 11>();
    return vec3<bool>(var_0.a.a.x, any(!select(select(vec3<bool>(var_1.x, var_0.b, arg_2.x), vec3<bool>(var_1.x, true, global2.b.a.a.x), global2.a.b.a.a), var_0.a.a, false)), global2.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, select(global0[_wgslsmith_index_u32(u_input.c, 12u)], 4294967295u, global2.a.e.b)), _wgslsmith_sub_vec3_u32(~vec3<u32>(29686u, 1u, global0[_wgslsmith_index_u32(u_input.c, 12u)]), vec3<u32>(0u, global0[_wgslsmith_index_u32(88959u, 12u)], 1u))));
    var_0 = ~vec3<u32>(_wgslsmith_clamp_u32(~(~103172u), 0u, ~global2.a.d.a.b), ~_wgslsmith_dot_vec2_u32(vec2<u32>(47875u, 1u), vec2<u32>(24865u, u_input.c)), ~71737u);
    let var_1 = Struct_1(func_1(1u, _wgslsmith_f_op_f32(-global2.a.c.c.x), !vec4<bool>(global2.a.e.a.a.x, all(vec4<bool>(global2.b.a.a.x, global2.a.d.a.a.x, true, global2.b.b)), any(global2.a.c.a), false)), 44187u, _wgslsmith_f_op_vec4_f32(trunc(global2.b.a.c)), select(1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, -52061i, 6231i, 1i), select(vec4<i32>(1i, u_input.b.x, 36596i, -5842i), vec4<i32>(28697i, global2.b.a.e, global2.a.b.a.e, u_input.b.x), false), !vec4<bool>(global2.b.a.a.x, true, false, false)), vec4<i32>(global2.a.c.e, -u_input.a.x, global2.b.a.e >> (24973u % 32u), min(1i, global2.a.e.a.e))), any(select(global2.b.a.a, global2.b.a.a, global2.b.a.a)) || global2.a.e.a.a.x), i32(-1i) * -53987i);
    let var_2 = Struct_3(min(-45413i, min(u_input.b.x, -7079i)), global2.a.b, global2.a.b.a, Struct_2(global2.a.e.a, global2.b.b), global2.a.d);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -220f)));
    var var_4 = global2.a.e;
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(vec3<i32>(-2147483647i, var_1.d, var_2.b.a.e)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_4.a.b, 44538u), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42260u, 12u)], 12u)], 0u, 40676u)) % vec3<u32>(32u))), ~(_wgslsmith_mod_i32(-26548i, i32(-1i) * -2147483647i) | var_4.a.e));
}

