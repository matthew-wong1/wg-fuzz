struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_3(Struct_2(48219u, vec3<f32>(725f, 606f, 228f)), 5930i, -57405i), i32(-2147483648), Struct_1(719f, vec2<i32>(-29066i, -9508i), -12280i), Struct_2(1u, vec3<f32>(-1103f, -3009f, -1917f)), 45702u), Struct_4(Struct_3(Struct_2(31005u, vec3<f32>(888f, 1783f, 1360f)), -53268i, 1i), i32(-2147483648), Struct_1(-199f, vec2<i32>(-22902i, i32(-2147483648)), 36370i), Struct_2(10254u, vec3<f32>(725f, 654f, -1939f)), 53943u), Struct_4(Struct_3(Struct_2(70508u, vec3<f32>(787f, -449f, -913f)), 35133i, -19887i), 2147483647i, Struct_1(519f, vec2<i32>(1i, 27495i), 2147483647i), Struct_2(9521u, vec3<f32>(-1601f, -288f, -1000f)), 25750u), Struct_4(Struct_3(Struct_2(171545u, vec3<f32>(-1862f, 1743f, -869f)), -1984i, -73003i), 1i, Struct_1(-522f, vec2<i32>(-1i, -15051i), 0i), Struct_2(45652u, vec3<f32>(-131f, 1000f, 571f)), 30974u), Struct_4(Struct_3(Struct_2(1920u, vec3<f32>(-1064f, -995f, -567f)), -1i, -15438i), i32(-2147483648), Struct_1(-2030f, vec2<i32>(20060i, 37596i), 4059i), Struct_2(0u, vec3<f32>(-205f, -584f, -361f)), 40159u), Struct_4(Struct_3(Struct_2(103776u, vec3<f32>(1461f, 286f, -1493f)), -2713i, 2147483647i), -1i, Struct_1(1003f, vec2<i32>(i32(-2147483648), -1i), -80837i), Struct_2(82981u, vec3<f32>(733f, -666f, 1303f)), 4294967295u), Struct_4(Struct_3(Struct_2(42584u, vec3<f32>(-1275f, 1179f, 159f)), 50275i, 2147483647i), 0i, Struct_1(623f, vec2<i32>(-13333i, 0i), 1i), Struct_2(38116u, vec3<f32>(536f, -1120f, -769f)), 19473u), Struct_4(Struct_3(Struct_2(88190u, vec3<f32>(2340f, 488f, 1000f)), 0i, -22499i), 19961i, Struct_1(-163f, vec2<i32>(-21510i, -24721i), -17726i), Struct_2(61582u, vec3<f32>(-1028f, -1000f, 1845f)), 1u), Struct_4(Struct_3(Struct_2(4294967295u, vec3<f32>(-493f, -366f, -1014f)), 34489i, 1i), 1i, Struct_1(405f, vec2<i32>(11896i, -15076i), 2147483647i), Struct_2(4294967295u, vec3<f32>(338f, 658f, 859f)), 12155u), Struct_4(Struct_3(Struct_2(4294967295u, vec3<f32>(-426f, -472f, 1000f)), i32(-2147483648), -17534i), -1411i, Struct_1(-164f, vec2<i32>(-14908i, 0i), 2147483647i), Struct_2(43311u, vec3<f32>(-401f, -894f, 1064f)), 13450u), Struct_4(Struct_3(Struct_2(39353u, vec3<f32>(-1989f, -244f, 747f)), -1i, 1i), 27709i, Struct_1(654f, vec2<i32>(-40439i, 22344i), 7341i), Struct_2(0u, vec3<f32>(1045f, 585f, 353f)), 0u), Struct_4(Struct_3(Struct_2(71393u, vec3<f32>(-841f, 387f, -2227f)), 0i, 29223i), -29176i, Struct_1(1000f, vec2<i32>(1i, 24592i), 2147483647i), Struct_2(10739u, vec3<f32>(-846f, 3073f, -1277f)), 0u), Struct_4(Struct_3(Struct_2(4294967295u, vec3<f32>(-786f, 303f, 586f)), 2147483647i, 2147483647i), 35759i, Struct_1(-451f, vec2<i32>(-55975i, 30836i), -6982i), Struct_2(30367u, vec3<f32>(-871f, 1495f, 711f)), 1u), Struct_4(Struct_3(Struct_2(51626u, vec3<f32>(-383f, -1529f, 1000f)), 0i, 24973i), 7836i, Struct_1(-171f, vec2<i32>(14213i, 1i), i32(-2147483648)), Struct_2(1u, vec3<f32>(1822f, -435f, 1769f)), 0u), Struct_4(Struct_3(Struct_2(91483u, vec3<f32>(1083f, 161f, 1042f)), -33178i, -22066i), i32(-2147483648), Struct_1(415f, vec2<i32>(-34412i, -20056i), -1i), Struct_2(20863u, vec3<f32>(-1164f, 1519f, -236f)), 62693u), Struct_4(Struct_3(Struct_2(1u, vec3<f32>(-459f, 1060f, -1000f)), 1i, 2147483647i), 94666i, Struct_1(374f, vec2<i32>(3468i, 0i), -3219i), Struct_2(0u, vec3<f32>(380f, -1039f, -1004f)), 15645u), Struct_4(Struct_3(Struct_2(4294967295u, vec3<f32>(579f, 166f, -412f)), i32(-2147483648), -12437i), 30449i, Struct_1(-728f, vec2<i32>(-58514i, 87265i), -7313i), Struct_2(4294967295u, vec3<f32>(535f, -3232f, -655f)), 0u), Struct_4(Struct_3(Struct_2(4294967295u, vec3<f32>(1101f, -1401f, -1000f)), 2147483647i, 1i), i32(-2147483648), Struct_1(654f, vec2<i32>(-6237i, -51395i), -15380i), Struct_2(1u, vec3<f32>(-1408f, -389f, 1235f)), 0u), Struct_4(Struct_3(Struct_2(1u, vec3<f32>(-989f, 222f, 518f)), -34597i, -268i), 0i, Struct_1(734f, vec2<i32>(-33574i, 1i), 16829i), Struct_2(9799u, vec3<f32>(1078f, 1893f, 1000f)), 63694u), Struct_4(Struct_3(Struct_2(0u, vec3<f32>(1309f, -1272f, 387f)), 7702i, -58331i), 2147483647i, Struct_1(-980f, vec2<i32>(2147483647i, 0i), -29494i), Struct_2(72466u, vec3<f32>(-1150f, -511f, 458f)), 7706u), Struct_4(Struct_3(Struct_2(1u, vec3<f32>(-347f, -1930f, -537f)), i32(-2147483648), -56767i), 2147483647i, Struct_1(-407f, vec2<i32>(2147483647i, 2147483647i), 7242i), Struct_2(16204u, vec3<f32>(926f, 1005f, -123f)), 29199u), Struct_4(Struct_3(Struct_2(8426u, vec3<f32>(-321f, -863f, -626f)), 1i, -32569i), 2147483647i, Struct_1(918f, vec2<i32>(-24192i, 42512i), 2753i), Struct_2(62851u, vec3<f32>(566f, 1064f, 1444f)), 9076u), Struct_4(Struct_3(Struct_2(18702u, vec3<f32>(-1000f, 436f, 1314f)), 1i, 7200i), 2147483647i, Struct_1(833f, vec2<i32>(0i, 28014i), 2147483647i), Struct_2(0u, vec3<f32>(479f, -696f, 392f)), 26231u), Struct_4(Struct_3(Struct_2(0u, vec3<f32>(2625f, -191f, -1021f)), 2147483647i, i32(-2147483648)), 2147483647i, Struct_1(1000f, vec2<i32>(2147483647i, 0i), 1i), Struct_2(44792u, vec3<f32>(1994f, -1269f, 553f)), 0u), Struct_4(Struct_3(Struct_2(41997u, vec3<f32>(-919f, 342f, -253f)), -15859i, 3573i), -10381i, Struct_1(907f, vec2<i32>(2147483647i, 4056i), 0i), Struct_2(1u, vec3<f32>(-1000f, -883f, -1581f)), 1u), Struct_4(Struct_3(Struct_2(96931u, vec3<f32>(-1319f, 373f, -313f)), -32271i, 1i), -37437i, Struct_1(-1000f, vec2<i32>(1i, 2147483647i), 562i), Struct_2(4294967295u, vec3<f32>(1303f, 1002f, -332f)), 5780u), Struct_4(Struct_3(Struct_2(0u, vec3<f32>(314f, -1000f, -133f)), 53999i, 7821i), 1i, Struct_1(-2089f, vec2<i32>(12698i, 0i), 1i), Struct_2(39422u, vec3<f32>(1201f, 1000f, 1123f)), 1u), Struct_4(Struct_3(Struct_2(0u, vec3<f32>(-374f, 835f, -1000f)), 0i, 7284i), -15471i, Struct_1(2304f, vec2<i32>(-31545i, -1i), 0i), Struct_2(1u, vec3<f32>(-675f, -692f, -1539f)), 0u), Struct_4(Struct_3(Struct_2(6863u, vec3<f32>(467f, 400f, 1000f)), 19777i, 42355i), -62427i, Struct_1(1000f, vec2<i32>(2147483647i, -35021i), -39429i), Struct_2(52741u, vec3<f32>(-335f, 439f, 1214f)), 1u), Struct_4(Struct_3(Struct_2(0u, vec3<f32>(354f, -282f, 2326f)), 4582i, -1i), 1i, Struct_1(269f, vec2<i32>(i32(-2147483648), -32871i), 2147483647i), Struct_2(15390u, vec3<f32>(1551f, 283f, 883f)), 62475u), Struct_4(Struct_3(Struct_2(0u, vec3<f32>(1000f, -309f, -103f)), 0i, 41525i), -31834i, Struct_1(296f, vec2<i32>(i32(-2147483648), 1i), 2313i), Struct_2(65080u, vec3<f32>(474f, 740f, -633f)), 84027u), Struct_4(Struct_3(Struct_2(45727u, vec3<f32>(-284f, 1546f, -708f)), -1i, i32(-2147483648)), 2147483647i, Struct_1(-1777f, vec2<i32>(-11517i, i32(-2147483648)), 28i), Struct_2(1u, vec3<f32>(-1117f, 1151f, -1061f)), 10394u));

var<private> global1: f32;

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), -1i);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    global1 = 595f;
    var var_0 = Struct_2(1u, vec3<f32>(1f, 461f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(124f, 2224f, false)), _wgslsmith_f_op_f32(f32(-1f) * -799f)))))));
    var_0 = Struct_2(u_input.a.x, _wgslsmith_f_op_vec3_f32(-var_0.b));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f), 752f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_0.b.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
    global1 = var_0.b.x;
    return countOneBits(29914u & u_input.a.x);
}

fn func_1() -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~(~0u), 1u, u_input.a.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x & 97390u, 0u ^ u_input.a.x, func_2()) >> (u_input.a % vec3<u32>(32u)), vec3<u32>((0u & u_input.a.x) << (~9807u % 32u), 4294967295u, ~54968u), ~select(u_input.a, u_input.a, select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))))), 32u)];
    global0 = array<Struct_4, 32>();
    let var_1 = var_0.a.a;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f)))))) - var_0.c.a);
    var var_2 = _wgslsmith_f_op_f32(-397f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(158f + var_0.c.a))))));
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-338f, 903f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1753f))))));
    var var_1 = Struct_3(func_1(), -16294i, ~(global2.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a.x), vec3<u32>(0u, 0u, 0u)) % 32u)));
    var var_2 = !(!(!all(vec2<bool>(true, false))) & true);
    let var_3 = func_1();
    global2 = vec2<i32>(-1i, global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2218f, 557f, 366f, var_1.a.b.x) - vec4<f32>(951f, var_3.b.x, var_1.a.b.x, -376f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-164f, var_0.x, -2558f, 491f)))), _wgslsmith_f_op_vec2_f32(abs(var_3.b.xy)), ~((vec4<u32>(4294967295u, 11034u, 12143u, 42193u) & ~vec4<u32>(1u, var_1.a.a, 4294967295u, 0u)) | ~(vec4<u32>(var_3.a, 1u, var_3.a, u_input.a.x) >> (vec4<u32>(var_3.a, var_3.a, var_1.a.a, 0u) % vec4<u32>(32u)))));
}

