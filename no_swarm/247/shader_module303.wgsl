struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec2<bool>(true, true), Struct_1(-1358f, vec3<bool>(true, false, true), 35084u, vec3<f32>(-314f, -618f, -591f), 20233i), vec2<bool>(true, false), Struct_1(-119f, vec3<bool>(true, false, false), 0u, vec3<f32>(751f, -1018f, -2192f), 2147483647i)), Struct_2(vec2<bool>(true, true), Struct_1(1942f, vec3<bool>(false, true, true), 4294967295u, vec3<f32>(728f, 124f, 363f), 18153i), vec2<bool>(true, false), Struct_1(2495f, vec3<bool>(false, true, true), 4294967295u, vec3<f32>(348f, -1252f, 1493f), 1i)), Struct_2(vec2<bool>(true, false), Struct_1(-1918f, vec3<bool>(false, true, false), 0u, vec3<f32>(368f, -1513f, -1088f), 10380i), vec2<bool>(true, false), Struct_1(1000f, vec3<bool>(true, true, true), 0u, vec3<f32>(184f, 1266f, 1029f), 15362i)), Struct_2(vec2<bool>(false, false), Struct_1(1146f, vec3<bool>(true, false, true), 1u, vec3<f32>(-1000f, -1141f, -1536f), 2147483647i), vec2<bool>(true, false), Struct_1(263f, vec3<bool>(false, true, true), 0u, vec3<f32>(-489f, -1002f, -2280f), 0i)), Struct_2(vec2<bool>(true, true), Struct_1(-117f, vec3<bool>(false, false, false), 0u, vec3<f32>(1533f, -200f, 696f), -1i), vec2<bool>(false, true), Struct_1(-193f, vec3<bool>(true, true, true), 15985u, vec3<f32>(-312f, -843f, -1044f), 2147483647i)), Struct_2(vec2<bool>(false, true), Struct_1(668f, vec3<bool>(false, false, true), 36320u, vec3<f32>(183f, -765f, -839f), i32(-2147483648)), vec2<bool>(true, false), Struct_1(368f, vec3<bool>(true, true, false), 54622u, vec3<f32>(1000f, -1000f, 2699f), 1i)), Struct_2(vec2<bool>(true, false), Struct_1(-1184f, vec3<bool>(false, true, false), 1u, vec3<f32>(832f, -290f, 1000f), 2147483647i), vec2<bool>(false, false), Struct_1(253f, vec3<bool>(true, true, true), 18272u, vec3<f32>(-843f, 1233f, -613f), -27522i)), Struct_2(vec2<bool>(false, true), Struct_1(-443f, vec3<bool>(false, false, true), 120991u, vec3<f32>(981f, -1833f, 676f), 46826i), vec2<bool>(true, false), Struct_1(838f, vec3<bool>(false, false, true), 5916u, vec3<f32>(-1475f, -620f, 1714f), i32(-2147483648))), Struct_2(vec2<bool>(false, true), Struct_1(247f, vec3<bool>(false, true, true), 4294967295u, vec3<f32>(214f, 344f, -1480f), 3118i), vec2<bool>(false, false), Struct_1(719f, vec3<bool>(false, false, true), 4294967295u, vec3<f32>(-1361f, 420f, -253f), 32830i)), Struct_2(vec2<bool>(false, false), Struct_1(-990f, vec3<bool>(false, false, false), 18987u, vec3<f32>(-141f, -920f, -1889f), 0i), vec2<bool>(true, true), Struct_1(-1000f, vec3<bool>(false, true, false), 0u, vec3<f32>(-1441f, -1123f, -701f), i32(-2147483648))), Struct_2(vec2<bool>(true, true), Struct_1(400f, vec3<bool>(false, true, false), 18716u, vec3<f32>(288f, -677f, 1413f), -32242i), vec2<bool>(true, true), Struct_1(-989f, vec3<bool>(true, true, false), 0u, vec3<f32>(-928f, -1000f, -185f), 1i)), Struct_2(vec2<bool>(true, true), Struct_1(332f, vec3<bool>(true, true, true), 4294967295u, vec3<f32>(-559f, 683f, -485f), -56684i), vec2<bool>(true, true), Struct_1(368f, vec3<bool>(true, true, true), 4294967295u, vec3<f32>(-392f, 372f, 187f), 32626i)), Struct_2(vec2<bool>(true, false), Struct_1(125f, vec3<bool>(true, false, false), 56922u, vec3<f32>(-920f, 2201f, -308f), -72617i), vec2<bool>(false, true), Struct_1(1853f, vec3<bool>(true, false, false), 23945u, vec3<f32>(983f, 970f, 441f), -1i)), Struct_2(vec2<bool>(false, true), Struct_1(-152f, vec3<bool>(false, false, false), 198u, vec3<f32>(135f, 415f, -1417f), 1i), vec2<bool>(true, false), Struct_1(-615f, vec3<bool>(true, false, true), 1u, vec3<f32>(-407f, -1209f, 210f), 2526i)), Struct_2(vec2<bool>(false, false), Struct_1(-832f, vec3<bool>(true, true, false), 1u, vec3<f32>(-463f, 476f, -2660f), i32(-2147483648)), vec2<bool>(false, true), Struct_1(-476f, vec3<bool>(true, true, true), 1u, vec3<f32>(798f, -818f, -1621f), -1i)), Struct_2(vec2<bool>(false, true), Struct_1(1000f, vec3<bool>(false, true, false), 28322u, vec3<f32>(167f, -1173f, -1000f), 0i), vec2<bool>(false, true), Struct_1(-1048f, vec3<bool>(false, true, false), 34307u, vec3<f32>(1421f, -1162f, -263f), 5608i)), Struct_2(vec2<bool>(true, true), Struct_1(-2288f, vec3<bool>(false, false, true), 0u, vec3<f32>(-1583f, -1000f, 350f), 2147483647i), vec2<bool>(true, true), Struct_1(446f, vec3<bool>(true, true, false), 3014u, vec3<f32>(1012f, 766f, -539f), 55780i)), Struct_2(vec2<bool>(false, true), Struct_1(196f, vec3<bool>(false, false, false), 2755u, vec3<f32>(-983f, 1987f, 1000f), -1i), vec2<bool>(false, false), Struct_1(-1000f, vec3<bool>(true, false, true), 0u, vec3<f32>(-529f, -610f, -1339f), -20367i)), Struct_2(vec2<bool>(false, false), Struct_1(127f, vec3<bool>(true, true, true), 15918u, vec3<f32>(-1277f, -878f, 1373f), 0i), vec2<bool>(false, true), Struct_1(889f, vec3<bool>(true, true, true), 7348u, vec3<f32>(661f, 108f, -585f), i32(-2147483648))), Struct_2(vec2<bool>(true, false), Struct_1(1000f, vec3<bool>(true, false, true), 1u, vec3<f32>(316f, 194f, -312f), 24613i), vec2<bool>(true, false), Struct_1(-506f, vec3<bool>(false, false, true), 137575u, vec3<f32>(-180f, -1017f, 1354f), -58071i)), Struct_2(vec2<bool>(true, false), Struct_1(-645f, vec3<bool>(true, false, false), 104162u, vec3<f32>(1707f, 558f, 2035f), 2147483647i), vec2<bool>(true, false), Struct_1(-1000f, vec3<bool>(true, true, true), 70746u, vec3<f32>(169f, -538f, -165f), -4475i)), Struct_2(vec2<bool>(false, true), Struct_1(585f, vec3<bool>(false, true, false), 1u, vec3<f32>(-866f, -1000f, -451f), 14907i), vec2<bool>(false, false), Struct_1(-151f, vec3<bool>(false, false, false), 0u, vec3<f32>(-127f, 457f, -1971f), -40939i)), Struct_2(vec2<bool>(false, false), Struct_1(1009f, vec3<bool>(false, false, false), 3117u, vec3<f32>(-1309f, 399f, 555f), 0i), vec2<bool>(false, false), Struct_1(-427f, vec3<bool>(true, true, false), 1u, vec3<f32>(-174f, 1832f, -774f), i32(-2147483648))), Struct_2(vec2<bool>(false, false), Struct_1(638f, vec3<bool>(true, false, false), 1u, vec3<f32>(451f, -146f, 803f), 2765i), vec2<bool>(true, true), Struct_1(734f, vec3<bool>(false, false, false), 5064u, vec3<f32>(-1066f, -105f, 131f), 48857i)), Struct_2(vec2<bool>(false, false), Struct_1(-413f, vec3<bool>(false, false, false), 41488u, vec3<f32>(335f, 622f, 615f), 2147483647i), vec2<bool>(false, true), Struct_1(107f, vec3<bool>(false, true, false), 1u, vec3<f32>(281f, 1163f, 1113f), 1i)), Struct_2(vec2<bool>(true, true), Struct_1(-433f, vec3<bool>(false, true, false), 6057u, vec3<f32>(-1000f, -325f, -562f), 15699i), vec2<bool>(true, false), Struct_1(945f, vec3<bool>(false, false, true), 37304u, vec3<f32>(-141f, 196f, -419f), 2147483647i)), Struct_2(vec2<bool>(true, false), Struct_1(768f, vec3<bool>(false, false, false), 15225u, vec3<f32>(-1252f, 681f, 890f), 0i), vec2<bool>(false, true), Struct_1(1398f, vec3<bool>(true, false, false), 69533u, vec3<f32>(483f, -712f, -1019f), 33907i)), Struct_2(vec2<bool>(true, true), Struct_1(-1794f, vec3<bool>(true, true, false), 1u, vec3<f32>(579f, 2084f, -1572f), 1i), vec2<bool>(true, true), Struct_1(-534f, vec3<bool>(false, true, false), 0u, vec3<f32>(-269f, -644f, 1489f), 2147483647i)), Struct_2(vec2<bool>(false, false), Struct_1(-367f, vec3<bool>(false, true, true), 35330u, vec3<f32>(657f, -1000f, 468f), 1i), vec2<bool>(false, true), Struct_1(-610f, vec3<bool>(true, true, true), 35181u, vec3<f32>(1348f, -965f, -1564f), 0i)));

var<private> global1: vec4<f32> = vec4<f32>(-474f, -276f, 1095f, 673f);

var<private> global2: Struct_5;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(229f, global1.x), -364f), global1.x, _wgslsmith_f_op_f32(floor(542f))));
    return -866f;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_div_f32(-1741f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, 0u, vec3<u32>(73469u, _wgslsmith_dot_vec2_u32(arg_1, arg_1), 0u)))));
    global2 = Struct_5(u_input.b.xz, arg_1.x << (_wgslsmith_div_u32(global2.b, arg_0) % 32u));
    let var_1 = u_input.b.x;
    let var_2 = global1.x;
    var_0 = global1.x;
    return !vec4<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), (true == any(vec2<bool>(false, true))) || false, !any(vec3<bool>(true, false, true)) | false, any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, true), false)));
}

fn func_1() -> Struct_1 {
    let var_0 = !func_2(~1u, reverseBits(min(u_input.b.yy, u_input.b.xz)), 24590u);
    let var_1 = Struct_4(vec4<u32>(~(~1u), u_input.b.x, ~(~u_input.b.x), global2.b), u_input.c.yzz);
    var var_2 = var_1;
    var var_3 = 43801i;
    let var_4 = !var_0.wyx;
    return Struct_1(-1000f, !select(vec3<bool>(false, var_0.x, var_0.x || var_0.x), !vec3<bool>(false, var_4.x, var_4.x), select(false, var_4.x, true)), ~(~54198u), global1.zzy, abs(var_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    var var_1 = 404f;
    global1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-827f, -839f), _wgslsmith_f_op_f32(f32(-1f) * -1148f), _wgslsmith_f_op_f32(-global1.x), global1.x))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.zzz));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, var_2.x, 533f, var_2.x), vec4<f32>(931f, -642f, -595f, 397f), vec4<bool>(false, false, false, true))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -793f, global1.x, 270f), vec4<f32>(574f, -1000f, 259f, var_2.x)))))));
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yy, u_input.c.wy, _wgslsmith_mult_vec2_i32(-countOneBits(vec2<i32>(-1i, u_input.c.x)), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.zw | vec2<i32>(var_4.e, 1i), abs(vec2<i32>(1i, var_4.e))), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, 0i), select(u_input.a.yy, vec2<i32>(-2147483647i, -2147483647i), vec2<bool>(false, var_4.b.x))))), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 4294967295u), u_input.b & u_input.b), 4294967295u), max(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.x, 17427u), u_input.b.zy), 22860u)), vec4<i32>(-(2626i << (1u % 32u)), ~(abs(-2147483647i) & (-6029i | u_input.a.x)), 35280i, -var_4.e));
}

