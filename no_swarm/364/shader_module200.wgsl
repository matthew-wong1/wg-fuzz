struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 0i, 0i, -21928i), vec2<f32>(738f, -1000f), 4504u, vec3<bool>(true, true, true)), -747f, vec2<i32>(-1i, 2147483647i), Struct_1(vec4<i32>(8350i, -16641i, 81979i, 0i), vec2<f32>(-1386f, 1205f), 66437u, vec3<bool>(false, false, true)), 0u), Struct_2(Struct_1(vec4<i32>(0i, 0i, i32(-2147483648), -65477i), vec2<f32>(1000f, -1235f), 20656u, vec3<bool>(true, true, false)), 1044f, vec2<i32>(2147483647i, 626i), Struct_1(vec4<i32>(i32(-2147483648), 1i, -1i, 1i), vec2<f32>(-340f, -1776f), 1u, vec3<bool>(false, false, true)), 4294967295u), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 0i, 0i, -744i), vec2<f32>(-1268f, 1662f), 1u, vec3<bool>(false, true, true)), 1279f, vec2<i32>(i32(-2147483648), 10388i), Struct_1(vec4<i32>(2147483647i, 2147483647i, 38886i, i32(-2147483648)), vec2<f32>(578f, -1701f), 75039u, vec3<bool>(true, true, true)), 4294967295u), Struct_2(Struct_1(vec4<i32>(-1i, -33454i, 2147483647i, 0i), vec2<f32>(1385f, -1000f), 4294967295u, vec3<bool>(false, false, true)), -198f, vec2<i32>(-70932i, -42568i), Struct_1(vec4<i32>(-29960i, 1i, 15756i, -1i), vec2<f32>(-452f, 504f), 4294967295u, vec3<bool>(false, true, true)), 51958u), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 42325i, 1i, 23812i), vec2<f32>(1020f, 2389f), 1u, vec3<bool>(true, false, false)), -1780f, vec2<i32>(0i, i32(-2147483648)), Struct_1(vec4<i32>(14151i, -20553i, -35229i, 1i), vec2<f32>(1000f, -604f), 0u, vec3<bool>(true, false, true)), 4294967295u), Struct_2(Struct_1(vec4<i32>(-18563i, -6692i, 57707i, 1220i), vec2<f32>(1040f, -1695f), 48690u, vec3<bool>(true, false, true)), -1835f, vec2<i32>(-1i, 0i), Struct_1(vec4<i32>(-43196i, 12685i, 18955i, -51955i), vec2<f32>(-647f, 774f), 0u, vec3<bool>(true, true, true)), 29397u), Struct_2(Struct_1(vec4<i32>(1i, -27465i, i32(-2147483648), 0i), vec2<f32>(-1000f, -713f), 18880u, vec3<bool>(true, true, false)), -254f, vec2<i32>(-4932i, 20974i), Struct_1(vec4<i32>(2147483647i, -66960i, 1674i, i32(-2147483648)), vec2<f32>(626f, 1149f), 72761u, vec3<bool>(true, false, true)), 1u), Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, 31064i, 16161i), vec2<f32>(1011f, -1666f), 18886u, vec3<bool>(false, false, true)), -711f, vec2<i32>(-4946i, i32(-2147483648)), Struct_1(vec4<i32>(49276i, i32(-2147483648), -44177i, -1i), vec2<f32>(-865f, -588f), 0u, vec3<bool>(false, false, false)), 4294967295u), Struct_2(Struct_1(vec4<i32>(2429i, 0i, 7888i, 2147483647i), vec2<f32>(-739f, 384f), 26255u, vec3<bool>(false, false, true)), -211f, vec2<i32>(0i, -1i), Struct_1(vec4<i32>(27531i, 10697i, 0i, 58446i), vec2<f32>(132f, 795f), 0u, vec3<bool>(false, true, true)), 55505u), Struct_2(Struct_1(vec4<i32>(-21797i, -1i, -1i, 14289i), vec2<f32>(298f, -575f), 4294967295u, vec3<bool>(false, true, true)), -1000f, vec2<i32>(-24172i, 2147483647i), Struct_1(vec4<i32>(2018i, 1i, 56370i, 2147483647i), vec2<f32>(-895f, 657f), 0u, vec3<bool>(true, true, false)), 48935u), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 44913i, 2147483647i, 21263i), vec2<f32>(-1000f, -439f), 4294967295u, vec3<bool>(false, false, false)), -960f, vec2<i32>(2147483647i, -48318i), Struct_1(vec4<i32>(0i, 4547i, 32294i, 6672i), vec2<f32>(-251f, -560f), 39841u, vec3<bool>(false, true, false)), 32724u), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 76228i, 24840i, -60976i), vec2<f32>(2139f, -458f), 22797u, vec3<bool>(true, true, true)), -1000f, vec2<i32>(3566i, 14114i), Struct_1(vec4<i32>(0i, 2021i, 2147483647i, -6399i), vec2<f32>(-711f, 179f), 1u, vec3<bool>(true, true, true)), 9897u), Struct_2(Struct_1(vec4<i32>(-1i, 1i, 59395i, 65414i), vec2<f32>(417f, -659f), 87642u, vec3<bool>(true, true, true)), 1150f, vec2<i32>(-28157i, 2147483647i), Struct_1(vec4<i32>(64430i, 6168i, -1i, 15151i), vec2<f32>(1421f, 2196f), 31245u, vec3<bool>(false, false, false)), 657u), Struct_2(Struct_1(vec4<i32>(-9201i, 7339i, 0i, 2147483647i), vec2<f32>(916f, -1016f), 0u, vec3<bool>(true, true, false)), 345f, vec2<i32>(0i, -1i), Struct_1(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -36907i), vec2<f32>(637f, 564f), 0u, vec3<bool>(false, false, false)), 1u), Struct_2(Struct_1(vec4<i32>(0i, 19573i, 3775i, 19406i), vec2<f32>(-1223f, 657f), 0u, vec3<bool>(false, true, true)), 583f, vec2<i32>(1i, 0i), Struct_1(vec4<i32>(5849i, 1i, 2147483647i, 57514i), vec2<f32>(-378f, -289f), 109251u, vec3<bool>(false, false, true)), 0u), Struct_2(Struct_1(vec4<i32>(1i, 2147483647i, 14918i, -20251i), vec2<f32>(1674f, 569f), 1u, vec3<bool>(false, true, true)), 272f, vec2<i32>(-42144i, -52281i), Struct_1(vec4<i32>(1i, -43184i, i32(-2147483648), 0i), vec2<f32>(-382f, 647f), 4294967295u, vec3<bool>(false, false, true)), 82796u), Struct_2(Struct_1(vec4<i32>(-10836i, i32(-2147483648), 11592i, 0i), vec2<f32>(1039f, -1665f), 4294967295u, vec3<bool>(false, false, true)), 1291f, vec2<i32>(-48374i, 1i), Struct_1(vec4<i32>(0i, 1i, 2147483647i, -20641i), vec2<f32>(1115f, -961f), 55427u, vec3<bool>(true, true, false)), 1u), Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -21917i), vec2<f32>(114f, 1000f), 1u, vec3<bool>(false, false, true)), -2222f, vec2<i32>(31864i, 2147483647i), Struct_1(vec4<i32>(6832i, -1i, 1i, 50422i), vec2<f32>(-1207f, 410f), 4294967295u, vec3<bool>(true, true, true)), 59925u), Struct_2(Struct_1(vec4<i32>(39170i, 0i, -1i, 19240i), vec2<f32>(-465f, -314f), 0u, vec3<bool>(true, false, false)), -124f, vec2<i32>(41057i, -1i), Struct_1(vec4<i32>(255i, 7206i, -34217i, -41157i), vec2<f32>(1441f, -1110f), 1u, vec3<bool>(true, true, false)), 27094u), Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, 6894i, 0i), vec2<f32>(324f, -328f), 69880u, vec3<bool>(true, false, false)), -1383f, vec2<i32>(1i, 15977i), Struct_1(vec4<i32>(-10060i, 2147483647i, -58684i, i32(-2147483648)), vec2<f32>(1720f, -158f), 40101u, vec3<bool>(true, false, true)), 4294967295u), Struct_2(Struct_1(vec4<i32>(19705i, i32(-2147483648), -1i, -26697i), vec2<f32>(-225f, -1031f), 61297u, vec3<bool>(false, true, false)), -730f, vec2<i32>(i32(-2147483648), -1065i), Struct_1(vec4<i32>(-15646i, -23935i, 0i, 1i), vec2<f32>(291f, 1088f), 4294967295u, vec3<bool>(false, true, false)), 81930u), Struct_2(Struct_1(vec4<i32>(1i, 2147483647i, -5013i, 2147483647i), vec2<f32>(180f, -1984f), 64099u, vec3<bool>(false, false, false)), -225f, vec2<i32>(-43313i, i32(-2147483648)), Struct_1(vec4<i32>(2147483647i, 2147483647i, 4378i, 30172i), vec2<f32>(-1919f, -265f), 80523u, vec3<bool>(false, true, true)), 5945u), Struct_2(Struct_1(vec4<i32>(2147483647i, -32985i, 2147483647i, -1i), vec2<f32>(-1000f, -144f), 0u, vec3<bool>(true, true, false)), 181f, vec2<i32>(-2815i, 39098i), Struct_1(vec4<i32>(i32(-2147483648), 189i, 0i, -4092i), vec2<f32>(1162f, 502f), 12435u, vec3<bool>(false, false, false)), 4294967295u), Struct_2(Struct_1(vec4<i32>(2147483647i, 1i, 20416i, -35692i), vec2<f32>(-1697f, 307f), 0u, vec3<bool>(false, false, false)), -264f, vec2<i32>(-25223i, 16525i), Struct_1(vec4<i32>(39407i, -13948i, 27612i, -1i), vec2<f32>(1000f, -1000f), 0u, vec3<bool>(true, false, false)), 6022u), Struct_2(Struct_1(vec4<i32>(-8968i, -10700i, 2147483647i, -27699i), vec2<f32>(896f, -370f), 27852u, vec3<bool>(false, false, false)), 1182f, vec2<i32>(0i, 0i), Struct_1(vec4<i32>(14516i, 3048i, -10111i, 2147483647i), vec2<f32>(-1390f, -387f), 1u, vec3<bool>(true, false, false)), 0u), Struct_2(Struct_1(vec4<i32>(0i, -23473i, -1i, -11510i), vec2<f32>(-768f, -327f), 88140u, vec3<bool>(false, false, false)), 2040f, vec2<i32>(-15005i, -12831i), Struct_1(vec4<i32>(47668i, 0i, 0i, 2147483647i), vec2<f32>(-164f, -790f), 7836u, vec3<bool>(true, false, false)), 1u), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -24793i, -21387i, 1i), vec2<f32>(1141f, -103f), 1u, vec3<bool>(false, true, false)), 286f, vec2<i32>(-17616i, 2147483647i), Struct_1(vec4<i32>(45498i, 0i, -34185i, -63236i), vec2<f32>(2359f, -896f), 4294967295u, vec3<bool>(true, false, true)), 75590u), Struct_2(Struct_1(vec4<i32>(-27483i, 2147483647i, 30955i, 53404i), vec2<f32>(1000f, 589f), 11362u, vec3<bool>(false, true, true)), -1111f, vec2<i32>(0i, 1i), Struct_1(vec4<i32>(1723i, -1i, 917i, 0i), vec2<f32>(184f, 1149f), 43614u, vec3<bool>(true, true, false)), 4294967295u), Struct_2(Struct_1(vec4<i32>(-25291i, 6304i, 0i, -1i), vec2<f32>(225f, 1243f), 0u, vec3<bool>(true, true, false)), 1231f, vec2<i32>(-1i, 46421i), Struct_1(vec4<i32>(2147483647i, 19882i, 1i, 0i), vec2<f32>(-1000f, 1073f), 27068u, vec3<bool>(true, true, true)), 0u), Struct_2(Struct_1(vec4<i32>(1i, 32066i, 7643i, i32(-2147483648)), vec2<f32>(-941f, -977f), 71345u, vec3<bool>(true, true, false)), 1323f, vec2<i32>(23401i, 2147483647i), Struct_1(vec4<i32>(-8723i, 1i, -8293i, 2147483647i), vec2<f32>(-1390f, 1000f), 24298u, vec3<bool>(false, true, false)), 61261u));

var<private> global1: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: vec3<u32>) -> f32 {
    global1 = arg_2.b;
    let var_0 = Struct_4(global1.c, _wgslsmith_mult_i32(-arg_1, arg_1));
    global1 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(~global1.a.xz, vec2<i32>(arg_2.c.c.x, 45208i)), -1i, -firstTrailingBit(4173i), arg_1), ~vec4<i32>(arg_1, -28184i, -2147483647i, arg_2.b.a.x >> (var_0.a % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(538f, arg_2.b.b.x))), global1.b)) + arg_2.b.b) * _wgslsmith_f_op_vec2_f32(abs(global1.b))), 0u, !(!(!vec3<bool>(global1.d.x, arg_2.c.d.d.x, false))));
    var var_1 = Struct_3(abs(firstTrailingBit(u_input.a)), Struct_1(vec4<i32>(0i, -41133i, -1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(global1.a.x, -2147483647i), arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b)), 14896u, !select(select(vec3<bool>(arg_0, global1.d.x, arg_0), vec3<bool>(false, false, global1.d.x), vec3<bool>(arg_0, true, true)), arg_2.b.d, !arg_2.b.d.x)), Struct_2(Struct_1(min(vec4<i32>(arg_2.b.a.x, global1.a.x, var_0.b, -7754i) >> (vec4<u32>(u_input.a.x, 9987u, 31581u, 14796u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(2055i, arg_1, -18034i, -42821i), vec4<i32>(0i, 1i, arg_2.c.a.a.x, 2147483647i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-391f, -511f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1377f, -392f)))), 1u, vec3<bool>(true, arg_0, !global1.d.x)), arg_2.b.b.x, vec2<i32>(-51i ^ _wgslsmith_sub_i32(global1.a.x, var_0.b), var_0.b), arg_2.b, 0u));
    let var_2 = Struct_1(max(var_1.b.a, ~(~_wgslsmith_sub_vec4_i32(global1.a, vec4<i32>(global1.a.x, global1.a.x, -31107i, 0i)))), arg_2.c.a.b, var_1.b.c, !select(select(!var_1.c.a.d, select(var_1.b.d, vec3<bool>(true, false, arg_2.c.a.d.x), global1.d.x), global1.d), vec3<bool>(arg_2.b.d.x, all(vec2<bool>(false, global1.d.x)), true), !select(vec3<bool>(false, arg_0, var_1.c.a.d.x), vec3<bool>(true, false, var_1.c.a.d.x), arg_2.c.d.d)));
    return global1.b.x;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_div_f32(_wgslsmith_div_f32(542f, _wgslsmith_f_op_f32(func_3(true, global1.a.x & global1.a.x, Struct_3(vec2<u32>(0u, global1.c), Struct_1(global1.a, global1.b, 51156u, global1.d), global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(all(global1.d), global1.a.x, Struct_3(u_input.b.zz, Struct_1(vec4<i32>(17387i, -1i, 2147483647i, global1.a.x), global1.b, 46646u, vec3<bool>(global1.d.x, global1.d.x, global1.d.x)), Struct_2(Struct_1(vec4<i32>(global1.a.x, -11296i, global1.a.x, 1i), vec2<f32>(-608f, global1.b.x), 45985u, vec3<bool>(false, false, global1.d.x)), 543f, global1.a.zx, Struct_1(vec4<i32>(global1.a.x, 65601i, 38611i, global1.a.x), global1.b, global1.c, vec3<bool>(global1.d.x, global1.d.x, global1.d.x)), 30193u)), vec3<u32>(4294967295u, 48417u, 1u))))));
    var var_1 = Struct_3(u_input.b.zy, Struct_1(~(-global1.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.b * vec2<f32>(global1.b.x, 755f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1520f, 1514f) + _wgslsmith_f_op_vec2_f32(-global1.b)), select(global1.d.xy, select(global1.d.yy, global1.d.zy, global1.d.xz), any(vec4<bool>(true, global1.d.x, global1.d.x, global1.d.x))))), ~global1.c, vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(global1.d.x, global1.d.x), global1.d.x)), any(!vec3<bool>(global1.d.x, false, global1.d.x)), 1000f > _wgslsmith_f_op_f32(sign(global1.b.x)))), global0[_wgslsmith_index_u32(~max(firstLeadingBit(u_input.a.x) << (_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x)) % 32u), 1u), 30u)]);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.b.b.x, _wgslsmith_f_op_f32(global1.b.x * -194f))) * 611f)) - _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(select(-1587f, 504f, all(vec3<bool>(global1.d.x, global1.d.x, true))))));
    global1 = Struct_1(firstTrailingBit(vec4<i32>(1i, var_1.c.a.a.x, abs(countOneBits(global1.a.x)), abs(min(var_1.c.d.a.x, 50213i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(var_1.b.b)), var_1.b.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global1.b - var_1.b.b))))), u_input.a.x, !select(var_1.c.d.d, !var_1.c.a.d, all(vec3<bool>(true, true, false))));
    let var_3 = u_input.b.x | 1926u;
    return !(1i != global1.a.x);
}

fn func_1() -> u32 {
    let var_0 = vec2<f32>(620f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-524f - _wgslsmith_f_op_f32(f32(-1f) * -1465f)))));
    var var_1 = select(func_2(), true, true | !global1.d.x);
    let var_2 = global1.c | ~(~abs(~global1.c));
    let var_3 = Struct_4(1u, select(-global1.a.x, ~min(-724i, -2147483647i), true) & -global1.a.x);
    let var_4 = Struct_4(4294967295u, -17995i);
    return countOneBits(49529u);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(0i, -1i), _wgslsmith_mult_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(-1i, global1.a.x) >> (vec2<u32>(11098u, 110367u) % vec2<u32>(32u)), min(vec2<i32>(-2147483647i, global1.a.x), global1.a.xw)), vec2<i32>(~(-2147483647i), arg_0.d.a.x)));
    let var_1 = Struct_1(vec4<i32>(0i, global1.a.x, -reverseBits(-29786i), ~(-select(global1.a.x, var_0.x, true))), arg_0.a.b, 0u, vec3<bool>(false, false, true));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(102f, var_1.b.x)), var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, -1133f, var_1.b.x) - vec3<f32>(global1.b.x, 271f, var_1.b.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(338f, -1027f, -975f))), global1.d.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(564f, var_1.b.x, 1449f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-456f, var_1.b.x, arg_0.a.b.x) + vec3<f32>(-212f, -1000f, global1.b.x)), global1.d)), arg_0.a.d.x)), !all(select(vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x), vec4<bool>(false, arg_0.d.d.x, true, global1.d.x), vec4<bool>(global1.d.x, true, false, global1.d.x)))))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(516f)), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x - var_1.b.x)) - _wgslsmith_f_op_f32(-var_2.x))));
    var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1551f, arg_0.a.b.x, -594f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, 1204f, var_2.x)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(307f, 512f, var_1.b.x) + vec3<f32>(arg_0.d.b.x, -202f, var_1.b.x))))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-400f)))))));
    var var_1 = true;
    var var_2 = Struct_2(func_4(global0[_wgslsmith_index_u32(func_1() ^ _wgslsmith_mod_u32(1u, 4294967295u), 30u)]), 1531f, global1.a.ww, func_4(global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), global1.c);
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_f32(188f - -951f), _wgslsmith_mult_vec2_i32(vec2<i32>(~(~global1.a.x), func_4(Struct_2(Struct_1(vec4<i32>(var_2.a.a.x, global1.a.x, -36944i, 2147483647i), vec2<f32>(-1000f, global1.b.x), var_2.a.c, var_2.d.d), var_0, vec2<i32>(5888i, var_2.a.a.x), Struct_1(var_2.d.a, vec2<f32>(var_0, global1.b.x), var_2.a.c, vec3<bool>(var_2.d.d.x, true, false)), 4525u)).a.x), _wgslsmith_div_vec2_i32(global1.a.zx, abs(reverseBits(vec2<i32>(2147483647i, -1i))))), func_4(Struct_2(func_4(global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1517f))), ~var_2.c, Struct_1(vec4<i32>(0i, 44147i, -18567i, var_2.c.x), _wgslsmith_f_op_vec2_f32(exp2(var_2.a.b)), ~0u, !vec3<bool>(var_2.a.d.x, true, true)), global1.c)), func_1());
    global0 = array<Struct_2, 30>();
    var var_3 = vec4<bool>(select(all(var_2.a.d), true, true), true, _wgslsmith_f_op_f32(func_3((1i << (global1.c % 32u)) > 20548i, ~select(var_2.d.a.x, global1.a.x, global1.d.x), Struct_3(~u_input.a, func_4(Struct_2(Struct_1(vec4<i32>(18480i, -13229i, 0i, 0i), vec2<f32>(-569f, -419f), var_2.a.c, global1.d), 618f, global1.a.zz, Struct_1(var_2.d.a, var_2.d.b, 1u, global1.d), var_2.a.c)), global0[_wgslsmith_index_u32(52508u, 30u)]), vec3<u32>(24323u, 1u, u_input.a.x >> (4294967295u % 32u)))) >= global1.b.x, var_2.d.d.x);
    var var_4 = ~(~func_4(global0[_wgslsmith_index_u32(global1.c, 30u)]).c);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~abs(var_2.e))), _wgslsmith_sub_u32(func_1(), _wgslsmith_dot_vec4_u32(vec4<u32>(32523u, var_2.d.c, 4294967295u, global1.c), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.a.c, 20937u, 44253u, 0u), vec4<u32>(var_2.e, var_2.d.c, global1.c, 0u)))) ^ ~_wgslsmith_mod_u32(4294967295u << (global1.c % 32u), ~92355u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(751f, -1295f, var_0) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_2.d.b.x, 705f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.b.x, global1.b.x, -962f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, var_0, 832f)))))), u_input.b | u_input.b);
}

