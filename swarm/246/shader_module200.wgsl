struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: bool,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(Struct_4(vec4<bool>(true, true, true, true), Struct_2(vec4<f32>(536f, -2012f, 258f, -1109f)), true, Struct_3(493f, vec3<u32>(18706u, 1u, 52772u)), Struct_1(false, vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec3<bool>(true, false, true))), Struct_2(vec4<f32>(-1835f, -1221f, -750f, 1489f))), Struct_5(Struct_4(vec4<bool>(true, true, false, false), Struct_2(vec4<f32>(-890f, -741f, -858f, 752f)), true, Struct_3(-1116f, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(false, vec4<bool>(true, true, false, true), vec2<bool>(false, false), vec3<bool>(true, false, true))), Struct_2(vec4<f32>(684f, 457f, -1944f, -1468f))), Struct_5(Struct_4(vec4<bool>(true, false, true, true), Struct_2(vec4<f32>(1000f, 494f, 318f, 2461f)), true, Struct_3(-415f, vec3<u32>(0u, 36514u, 48545u)), Struct_1(false, vec4<bool>(true, false, true, false), vec2<bool>(false, true), vec3<bool>(true, true, false))), Struct_2(vec4<f32>(941f, -704f, -1338f, 140f))), Struct_5(Struct_4(vec4<bool>(true, true, true, true), Struct_2(vec4<f32>(-464f, -269f, -347f, -537f)), true, Struct_3(-1259f, vec3<u32>(21622u, 48311u, 4294967295u)), Struct_1(false, vec4<bool>(true, true, false, true), vec2<bool>(false, true), vec3<bool>(true, false, false))), Struct_2(vec4<f32>(-619f, -377f, 550f, -931f))), Struct_5(Struct_4(vec4<bool>(true, true, false, false), Struct_2(vec4<f32>(-158f, 1000f, -1000f, -286f)), true, Struct_3(590f, vec3<u32>(0u, 11811u, 73225u)), Struct_1(true, vec4<bool>(true, false, true, true), vec2<bool>(true, true), vec3<bool>(false, false, false))), Struct_2(vec4<f32>(-2413f, -848f, -1000f, 547f))), Struct_5(Struct_4(vec4<bool>(false, false, true, false), Struct_2(vec4<f32>(-1810f, 774f, 808f, -374f)), true, Struct_3(162f, vec3<u32>(211108u, 104667u, 0u)), Struct_1(false, vec4<bool>(false, true, false, false), vec2<bool>(true, true), vec3<bool>(true, true, false))), Struct_2(vec4<f32>(-1279f, -320f, -1000f, 425f))), Struct_5(Struct_4(vec4<bool>(true, false, true, false), Struct_2(vec4<f32>(1312f, -526f, 1131f, 216f)), false, Struct_3(464f, vec3<u32>(32783u, 35264u, 4294967295u)), Struct_1(false, vec4<bool>(false, true, false, true), vec2<bool>(true, false), vec3<bool>(true, true, false))), Struct_2(vec4<f32>(351f, -765f, -651f, 1000f))), Struct_5(Struct_4(vec4<bool>(false, true, true, false), Struct_2(vec4<f32>(575f, -602f, -2586f, 871f)), false, Struct_3(400f, vec3<u32>(0u, 76719u, 50328u)), Struct_1(false, vec4<bool>(false, false, false, false), vec2<bool>(true, true), vec3<bool>(true, true, false))), Struct_2(vec4<f32>(1124f, 136f, -163f, -800f))), Struct_5(Struct_4(vec4<bool>(true, false, false, false), Struct_2(vec4<f32>(1645f, 317f, -1066f, -1300f)), true, Struct_3(271f, vec3<u32>(0u, 18697u, 1u)), Struct_1(false, vec4<bool>(false, true, true, true), vec2<bool>(true, false), vec3<bool>(true, false, false))), Struct_2(vec4<f32>(-166f, 1000f, 778f, 103f))), Struct_5(Struct_4(vec4<bool>(true, false, true, true), Struct_2(vec4<f32>(477f, -775f, -925f, -235f)), false, Struct_3(1055f, vec3<u32>(0u, 1u, 48870u)), Struct_1(true, vec4<bool>(false, true, false, false), vec2<bool>(false, false), vec3<bool>(false, false, false))), Struct_2(vec4<f32>(-788f, 1415f, 1028f, 1739f))), Struct_5(Struct_4(vec4<bool>(false, true, false, false), Struct_2(vec4<f32>(601f, -146f, -768f, -1554f)), true, Struct_3(-753f, vec3<u32>(0u, 0u, 22107u)), Struct_1(false, vec4<bool>(false, false, true, true), vec2<bool>(false, false), vec3<bool>(false, false, false))), Struct_2(vec4<f32>(-541f, 1220f, 402f, 495f))), Struct_5(Struct_4(vec4<bool>(false, false, false, true), Struct_2(vec4<f32>(-1812f, 307f, -832f, -609f)), true, Struct_3(1774f, vec3<u32>(15448u, 0u, 3896u)), Struct_1(false, vec4<bool>(true, true, true, false), vec2<bool>(true, true), vec3<bool>(false, false, true))), Struct_2(vec4<f32>(-966f, 437f, 225f, 2721f))), Struct_5(Struct_4(vec4<bool>(true, false, false, true), Struct_2(vec4<f32>(-762f, 150f, 709f, -1031f)), true, Struct_3(965f, vec3<u32>(25087u, 32733u, 6492u)), Struct_1(true, vec4<bool>(false, false, false, true), vec2<bool>(false, false), vec3<bool>(false, false, false))), Struct_2(vec4<f32>(-856f, -733f, 434f, -805f))), Struct_5(Struct_4(vec4<bool>(true, false, false, false), Struct_2(vec4<f32>(454f, 1115f, -639f, -438f)), false, Struct_3(1606f, vec3<u32>(1u, 0u, 1u)), Struct_1(false, vec4<bool>(false, true, true, false), vec2<bool>(false, true), vec3<bool>(false, true, true))), Struct_2(vec4<f32>(-1693f, 687f, 824f, 1061f))), Struct_5(Struct_4(vec4<bool>(true, false, false, false), Struct_2(vec4<f32>(-1746f, -490f, -552f, -3000f)), false, Struct_3(584f, vec3<u32>(6151u, 4294967295u, 0u)), Struct_1(true, vec4<bool>(true, false, true, true), vec2<bool>(false, true), vec3<bool>(false, true, true))), Struct_2(vec4<f32>(-1162f, -1264f, -379f, 413f))), Struct_5(Struct_4(vec4<bool>(true, true, false, true), Struct_2(vec4<f32>(472f, -1674f, 359f, -304f)), false, Struct_3(-899f, vec3<u32>(1u, 4294967295u, 12133u)), Struct_1(true, vec4<bool>(true, true, true, true), vec2<bool>(true, true), vec3<bool>(false, false, false))), Struct_2(vec4<f32>(894f, 1000f, 2616f, 1161f))), Struct_5(Struct_4(vec4<bool>(true, false, false, false), Struct_2(vec4<f32>(798f, -1386f, -514f, 1041f)), false, Struct_3(-217f, vec3<u32>(1u, 46164u, 14793u)), Struct_1(false, vec4<bool>(true, true, false, true), vec2<bool>(false, true), vec3<bool>(false, false, true))), Struct_2(vec4<f32>(637f, -1011f, -220f, 486f))), Struct_5(Struct_4(vec4<bool>(true, true, true, true), Struct_2(vec4<f32>(-120f, 744f, -631f, 1922f)), true, Struct_3(2221f, vec3<u32>(41502u, 4294967295u, 1u)), Struct_1(true, vec4<bool>(true, false, true, false), vec2<bool>(false, true), vec3<bool>(false, false, false))), Struct_2(vec4<f32>(-124f, 478f, 507f, -1615f))), Struct_5(Struct_4(vec4<bool>(true, false, false, true), Struct_2(vec4<f32>(1272f, -255f, 1841f, 804f)), false, Struct_3(521f, vec3<u32>(19116u, 0u, 17540u)), Struct_1(true, vec4<bool>(false, true, false, true), vec2<bool>(false, true), vec3<bool>(true, false, false))), Struct_2(vec4<f32>(1381f, -1181f, 232f, -1688f))));

var<private> global1: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(vec4<bool>(true, true, false, false), Struct_2(vec4<f32>(-1695f, -246f, 1575f, -1331f)), true, Struct_3(1256f, vec3<u32>(1u, 4294967295u, 31459u)), Struct_1(false, vec4<bool>(true, false, true, true), vec2<bool>(false, false), vec3<bool>(true, false, false))), Struct_4(vec4<bool>(true, true, false, true), Struct_2(vec4<f32>(-928f, -581f, -182f, -362f)), true, Struct_3(282f, vec3<u32>(22789u, 88081u, 13387u)), Struct_1(true, vec4<bool>(false, false, false, true), vec2<bool>(true, true), vec3<bool>(false, true, true))), Struct_4(vec4<bool>(true, true, false, true), Struct_2(vec4<f32>(1948f, 405f, 395f, 594f)), false, Struct_3(-107f, vec3<u32>(4294967295u, 25304u, 4294967295u)), Struct_1(true, vec4<bool>(false, false, false, false), vec2<bool>(true, false), vec3<bool>(true, false, true))), Struct_4(vec4<bool>(true, true, true, false), Struct_2(vec4<f32>(-430f, -1000f, 537f, 1595f)), true, Struct_3(1194f, vec3<u32>(1u, 1u, 4294967295u)), Struct_1(false, vec4<bool>(false, true, true, true), vec2<bool>(false, true), vec3<bool>(true, false, false))), Struct_4(vec4<bool>(true, false, true, true), Struct_2(vec4<f32>(-245f, 232f, -1000f, -617f)), false, Struct_3(1078f, vec3<u32>(13302u, 0u, 4294967295u)), Struct_1(true, vec4<bool>(false, false, false, false), vec2<bool>(true, false), vec3<bool>(false, true, false))), Struct_4(vec4<bool>(true, true, false, false), Struct_2(vec4<f32>(490f, -1927f, -2037f, -503f)), false, Struct_3(-197f, vec3<u32>(19305u, 16266u, 0u)), Struct_1(false, vec4<bool>(true, true, false, false), vec2<bool>(true, true), vec3<bool>(true, false, false))), Struct_4(vec4<bool>(false, false, true, false), Struct_2(vec4<f32>(-1625f, 109f, 939f, -235f)), true, Struct_3(915f, vec3<u32>(27856u, 4294967295u, 4294967295u)), Struct_1(false, vec4<bool>(true, false, false, false), vec2<bool>(true, false), vec3<bool>(false, false, false))), Struct_4(vec4<bool>(false, false, false, true), Struct_2(vec4<f32>(-841f, -1494f, 1490f, 1059f)), false, Struct_3(492f, vec3<u32>(14579u, 81526u, 4294967295u)), Struct_1(true, vec4<bool>(true, false, false, false), vec2<bool>(true, false), vec3<bool>(false, true, false))), Struct_4(vec4<bool>(true, false, true, false), Struct_2(vec4<f32>(125f, -1000f, -730f, -1383f)), false, Struct_3(680f, vec3<u32>(1u, 84506u, 59231u)), Struct_1(false, vec4<bool>(false, false, true, true), vec2<bool>(false, false), vec3<bool>(true, false, false))), Struct_4(vec4<bool>(true, false, true, false), Struct_2(vec4<f32>(1000f, 546f, -1002f, -877f)), false, Struct_3(1885f, vec3<u32>(1u, 10368u, 54791u)), Struct_1(true, vec4<bool>(false, true, false, true), vec2<bool>(false, true), vec3<bool>(false, true, false))), Struct_4(vec4<bool>(true, true, false, false), Struct_2(vec4<f32>(-1701f, -175f, 1000f, -402f)), true, Struct_3(-813f, vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(false, vec4<bool>(true, true, true, true), vec2<bool>(true, true), vec3<bool>(true, true, false))), Struct_4(vec4<bool>(true, false, true, true), Struct_2(vec4<f32>(1151f, -1125f, 772f, -380f)), false, Struct_3(-1569f, vec3<u32>(73657u, 25334u, 20967u)), Struct_1(false, vec4<bool>(false, false, false, true), vec2<bool>(true, false), vec3<bool>(true, true, false))), Struct_4(vec4<bool>(false, false, true, false), Struct_2(vec4<f32>(1000f, 1026f, -408f, 426f)), false, Struct_3(-1594f, vec3<u32>(0u, 113622u, 4294967295u)), Struct_1(true, vec4<bool>(true, false, true, false), vec2<bool>(false, true), vec3<bool>(true, false, false))), Struct_4(vec4<bool>(true, false, true, true), Struct_2(vec4<f32>(1374f, 1074f, 136f, -1231f)), true, Struct_3(-2056f, vec3<u32>(8097u, 35889u, 39267u)), Struct_1(false, vec4<bool>(false, false, true, true), vec2<bool>(false, true), vec3<bool>(false, false, true))), Struct_4(vec4<bool>(true, true, false, true), Struct_2(vec4<f32>(-1830f, -470f, -600f, -2231f)), false, Struct_3(-903f, vec3<u32>(13273u, 65890u, 58202u)), Struct_1(true, vec4<bool>(true, true, true, true), vec2<bool>(false, false), vec3<bool>(false, false, false))));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: Struct_4) -> vec4<f32> {
    let var_0 = 0u;
    global1 = array<Struct_4, 15>();
    global1 = array<Struct_4, 15>();
    global1 = array<Struct_4, 15>();
    let var_1 = -1078f;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_3.b.a - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-474f, arg_3.b.a.x, 1398f, var_1))))))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> vec3<bool> {
    let var_0 = arg_1;
    let var_1 = Struct_4(arg_1.b, Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(292f, arg_3, 225f, arg_3), _wgslsmith_f_op_vec4_f32(vec4<f32>(127f, -970f, arg_3, arg_3) * vec4<f32>(-1311f, 2085f, 161f, -1227f)))), _wgslsmith_f_op_vec4_f32(func_3(select(var_0.d, vec3<bool>(false, false, true), vec3<bool>(arg_1.c.x, var_0.d.x, var_0.d.x)), vec3<i32>(u_input.d.x, u_input.c.x, -42653i), ~vec3<u32>(79447u, 52355u, 4294967295u), Struct_4(vec4<bool>(true, var_0.c.x, true, true), Struct_2(vec4<f32>(1889f, 782f, 452f, arg_3)), var_0.c.x, Struct_3(1296f, vec3<u32>(1u, u_input.a, arg_0)), var_0))))), true, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -337f)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a & 5835u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_0, 1u) | vec3<u32>(u_input.a, arg_0, 49872u), vec3<u32>(u_input.a, u_input.a, 52919u)), vec3<u32>(abs(u_input.a), u_input.a, arg_0))), var_0);
    var var_2 = vec3<u32>(_wgslsmith_add_u32(u_input.a, arg_0), abs(~_wgslsmith_sub_u32(1u ^ var_1.d.b.x, _wgslsmith_div_u32(arg_0, 32993u))), reverseBits(reverseBits(43243u)));
    var var_3 = var_1.b;
    var var_4 = 4294967295u;
    return !var_1.a.zwz;
}

fn func_1() -> vec3<bool> {
    return select(select(!select(func_2(u_input.a, Struct_1(true, vec4<bool>(false, true, true, true), vec2<bool>(true, false), vec3<bool>(false, true, false)), true, -1196f), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), !vec3<bool>(select(true, true, true), true, true), true), func_2(4294967295u, Struct_1(true, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec3<bool>(true, all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, true)))), !all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), _wgslsmith_div_f32(253f, -723f)), !select(func_2(u_input.a, Struct_1(true, vec4<bool>(false, true, true, true), vec2<bool>(false, true), vec3<bool>(true, false, true)), false, _wgslsmith_f_op_f32(f32(-1f) * -525f)), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), all(vec3<bool>(true, true, true))), !any(func_1()) & func_1().x);
    global1 = array<Struct_4, 15>();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-745f * 1398f), -469f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-972f, 1112f)), vec2<f32>(1516f, 407f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-651f, 2200f) - vec2<f32>(361f, -132f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1018f)))))), true));
    let var_2 = Struct_5(global1[_wgslsmith_index_u32(u_input.a, 15u)], Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -529f, -121f)))));
    global0 = array<Struct_5, 19>();
    var var_3 = var_2.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(-57567i, countOneBits(firstTrailingBit(~(~vec3<u32>(4294967295u, 8862u, 48528u)))));
}

