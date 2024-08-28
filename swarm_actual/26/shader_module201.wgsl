struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<u32>(1u, 4294967295u, 10014u), vec3<f32>(-331f, 570f, -316f), vec4<f32>(598f, -553f, -348f, -769f)), Struct_1(vec3<u32>(18020u, 4294967295u, 16754u), vec3<f32>(-1202f, 1716f, 914f), vec4<f32>(-849f, -303f, -420f, -1000f)), Struct_1(vec3<u32>(0u, 4294967295u, 76447u), vec3<f32>(-1000f, 1831f, 1045f), vec4<f32>(-1000f, -462f, 571f, -1370f)), Struct_1(vec3<u32>(0u, 30931u, 50760u), vec3<f32>(-1533f, 2820f, 984f), vec4<f32>(931f, 882f, -1495f, -1579f)), Struct_1(vec3<u32>(1u, 1u, 17494u), vec3<f32>(-500f, -950f, -107f), vec4<f32>(1120f, 245f, -1355f, -875f)), Struct_1(vec3<u32>(0u, 4294967295u, 40516u), vec3<f32>(414f, -1000f, 867f), vec4<f32>(367f, -1536f, -1011f, 180f)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<f32>(1377f, 1000f, -654f), vec4<f32>(529f, -1161f, -224f, 752f)), Struct_1(vec3<u32>(2033u, 50363u, 2172u), vec3<f32>(-754f, 204f, -1000f), vec4<f32>(936f, -2617f, 784f, 296f)), Struct_1(vec3<u32>(62644u, 3749u, 58492u), vec3<f32>(317f, -322f, 950f), vec4<f32>(-679f, 951f, 1000f, -508f)), Struct_1(vec3<u32>(63207u, 4294967295u, 1u), vec3<f32>(-599f, 490f, -326f), vec4<f32>(1815f, 1850f, -1000f, 444f)), Struct_1(vec3<u32>(11226u, 975u, 0u), vec3<f32>(-1409f, 156f, 1024f), vec4<f32>(1549f, -1337f, 3272f, -467f)), Struct_1(vec3<u32>(56685u, 40919u, 1u), vec3<f32>(-1000f, 1417f, 1000f), vec4<f32>(-403f, -425f, -909f, 1063f)), Struct_1(vec3<u32>(12620u, 0u, 4294967295u), vec3<f32>(498f, -123f, 1192f), vec4<f32>(-941f, 661f, -774f, 288f)), Struct_1(vec3<u32>(0u, 4294967295u, 0u), vec3<f32>(-163f, 320f, 196f), vec4<f32>(463f, -651f, 403f, -711f)), Struct_1(vec3<u32>(114099u, 27067u, 4294967295u), vec3<f32>(1000f, -1080f, -779f), vec4<f32>(-1243f, -874f, 962f, 136f)), Struct_1(vec3<u32>(34173u, 45484u, 0u), vec3<f32>(-1000f, -1119f, -747f), vec4<f32>(-1000f, -1520f, 1143f, 1049f)), Struct_1(vec3<u32>(0u, 4294967295u, 0u), vec3<f32>(1396f, -1853f, -746f), vec4<f32>(943f, 258f, 845f, 367f)), Struct_1(vec3<u32>(16613u, 1u, 1u), vec3<f32>(-540f, -1090f, 264f), vec4<f32>(1000f, 1363f, -1000f, -1278f)), Struct_1(vec3<u32>(27385u, 0u, 4294967295u), vec3<f32>(-553f, -782f, 1285f), vec4<f32>(1027f, 290f, 1000f, 819f)), Struct_1(vec3<u32>(13407u, 11186u, 1u), vec3<f32>(-473f, -605f, -1000f), vec4<f32>(1001f, -611f, 1000f, -858f)), Struct_1(vec3<u32>(0u, 4294967295u, 65626u), vec3<f32>(1571f, -1124f, 1068f), vec4<f32>(-145f, -1215f, 597f, -1000f)), Struct_1(vec3<u32>(64078u, 1u, 1u), vec3<f32>(134f, -696f, -1705f), vec4<f32>(-146f, -302f, -1017f, 1492f)), Struct_1(vec3<u32>(17502u, 32206u, 48273u), vec3<f32>(1000f, 736f, 2056f), vec4<f32>(-3321f, -2000f, 410f, -895f)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec3<f32>(303f, -377f, 888f), vec4<f32>(2381f, -2432f, -1110f, 102f)), Struct_1(vec3<u32>(0u, 0u, 52140u), vec3<f32>(-1000f, 467f, 116f), vec4<f32>(401f, -200f, 877f, 1000f)), Struct_1(vec3<u32>(1u, 65882u, 0u), vec3<f32>(-1567f, 669f, -991f), vec4<f32>(-2435f, -295f, -311f, 401f)), Struct_1(vec3<u32>(0u, 13922u, 4294967295u), vec3<f32>(-744f, 448f, 1018f), vec4<f32>(696f, -1795f, 1744f, -296f)), Struct_1(vec3<u32>(18022u, 148048u, 4294967295u), vec3<f32>(-1596f, 1111f, 689f), vec4<f32>(1064f, -1000f, 1000f, -1725f)), Struct_1(vec3<u32>(42794u, 4294967295u, 6827u), vec3<f32>(203f, -1259f, -419f), vec4<f32>(377f, 1000f, 740f, -861f)), Struct_1(vec3<u32>(21477u, 74980u, 47233u), vec3<f32>(255f, -761f, -1313f), vec4<f32>(304f, 1225f, 1013f, -1414f)), Struct_1(vec3<u32>(21789u, 117871u, 0u), vec3<f32>(1009f, 1705f, 220f), vec4<f32>(1000f, -556f, 433f, -1686f)));

var<private> global1: f32 = -1263f;

var<private> global2: array<Struct_1, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec2<bool> {
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) * _wgslsmith_f_op_f32(-586f * arg_0))) + _wgslsmith_f_op_f32(-arg_0))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    global2 = array<Struct_1, 28>();
    var var_1 = Struct_2(arg_1, max(firstTrailingBit(vec3<i32>(1i, 1i, 1i)), ~vec3<i32>(-1i, 1256i, 1i)) | vec3<i32>(1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-12i, -1i, -1i, -21345i), vec4<i32>(-2147483647i, 24667i, 2147483647i, 0i)), -24890i), vec3<u32>(1u, (73454u | u_input.a.x) >> (0u % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 0u, 40003u) << (reverseBits(vec4<u32>(22193u, 1u, u_input.a.x, 40427u)) % vec4<u32>(32u)), ~(vec4<u32>(26239u, u_input.a.x, 4294967295u, 60732u) ^ vec4<u32>(4294967295u, u_input.a.x, 1u, 10023u)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1478f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_div_f32(742f, arg_0)));
    let var_2 = Struct_2(!var_1.a, -var_1.b, countOneBits(abs(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.c, vec3<u32>(0u, var_1.c.x, u_input.a.x)), var_1.c & var_1.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2891f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(679f, -207f)), var_1.d.x) * var_1.d));
    return select(vec2<bool>(any(select(vec3<bool>(false, arg_1, false), !vec3<bool>(arg_1, var_1.a, false), vec3<bool>(arg_1, true, true))), true), !(!select(vec2<bool>(true, false), vec2<bool>(var_1.a, var_1.a), !vec2<bool>(var_2.a, false))), true);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    let var_0 = arg_1.x;
    var var_1 = vec4<bool>(arg_2.a, true, false, all(func_3(-367f, true)));
    let var_2 = ~(~vec4<u32>(~arg_0.x, ~_wgslsmith_mod_u32(1u, u_input.a.x), ~27933u, 84293u));
    var var_3 = all(!select(var_1.xyz, !vec3<bool>(var_1.x, var_1.x, arg_2.a), select(select(vec3<bool>(true, true, false), vec3<bool>(arg_2.a, false, arg_2.a), var_1.zzz), var_1.yww, vec3<bool>(false, false, false))));
    var var_4 = var_2.x;
    return 4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(~_wgslsmith_sub_i32(0i, 45659i) >= -firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(6380i, -47877i), vec2<i32>(1i, 31143i))), ~(~_wgslsmith_div_vec3_i32(-vec3<i32>(1i, -1i, 1i), vec3<i32>(1i, 1i, 1i))), arg_1.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-506f, -1144f, arg_1.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.b, _wgslsmith_f_op_vec3_f32(-arg_1.c.wxz)) + _wgslsmith_f_op_vec3_f32(select(arg_0.c.xww, _wgslsmith_f_op_vec3_f32(vec3<f32>(988f, arg_0.c.x, arg_0.c.x) * arg_1.b), vec3<bool>(true, true, true)))))));
    global1 = 181f;
    var var_1 = ~var_0.b.yy;
    var var_2 = !vec4<bool>(!var_0.a, true, all(select(vec2<bool>(true, var_0.a), !vec2<bool>(false, var_0.a), true)), !var_0.a);
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), -1107f), -1097f, !(!var_2.x))))));
    return Struct_2((var_2.x && var_2.x) | !(!func_3(-1795f, false).x), var_0.b ^ vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(0i, var_1.x)), -var_0.b.x ^ var_0.b.x, var_0.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a.x, var_0.c.x, 1u) >> ((arg_1.a >> (~var_0.c % vec3<u32>(32u))) % vec3<u32>(32u)), (var_0.c >> (min(vec3<u32>(u_input.a.x, 4294967295u, 48190u), vec3<u32>(4294967295u, u_input.a.x, 80365u)) % vec3<u32>(32u))) & ~var_0.c), var_0.d);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> bool {
    let var_0 = func_4(arg_2, Struct_1(vec3<u32>(~func_2(vec3<u32>(0u, arg_2.a.x, 0u), vec3<i32>(-2147483647i, arg_0, arg_0), Struct_2(false, vec3<i32>(-9445i, arg_0, arg_0), arg_2.a, vec3<f32>(1381f, arg_2.b.x, 494f)), vec4<u32>(u_input.a.x, 20047u, 84477u, arg_2.a.x)), _wgslsmith_mod_u32(arg_2.a.x, u_input.a.x), 4294967295u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.b - arg_2.b) + _wgslsmith_f_op_vec3_f32(min(arg_2.c.xwz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, 217f, arg_2.c.x))))), arg_2.c));
    let var_1 = ~countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(63156i, arg_0, arg_0, var_0.b.x), vec4<i32>(-34294i, -3265i, 2147483647i, 4688i)), _wgslsmith_mod_i32(firstLeadingBit(-8226i), ~arg_0), -8879i, -1i));
    var var_2 = var_1.wz << ((_wgslsmith_mod_vec2_u32(func_4(global2[_wgslsmith_index_u32(~4294967295u, 28u)], global2[_wgslsmith_index_u32(arg_2.a.x, 28u)]).c.xz, vec2<u32>(~4294967295u, _wgslsmith_mult_u32(arg_2.a.x, var_0.c.x))) >> (vec2<u32>(_wgslsmith_clamp_u32(arg_1.x, arg_2.a.x, u_input.a.x) ^ reverseBits(1u), arg_2.a.x) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_3 = Struct_1(vec3<u32>(countOneBits(~1252u), u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(var_0.d - vec3<f32>(-1022f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.d.x, 514f)) + arg_2.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1207f - -481f), _wgslsmith_f_op_f32(trunc(189f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c.x, arg_2.b.x, _wgslsmith_div_f32(-876f, var_0.d.x), _wgslsmith_div_f32(-999f, arg_2.b.x)), arg_2.c)));
    var var_4 = arg_2;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 106f;
    global0 = array<Struct_1, 31>();
    var var_0 = !any(select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !func_1(-78168i, vec2<u32>(0u, 49674u), Struct_1(vec3<u32>(0u, u_input.a.x, 1u), vec3<f32>(-275f, -915f, 1853f), vec4<f32>(577f, 293f, -1322f, -1312f)))));
    global0 = array<Struct_1, 31>();
    var var_1 = func_1(-(1i | _wgslsmith_clamp_i32(-16661i, 1i, firstTrailingBit(-2147483647i))), u_input.a, Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 12306u, u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 1u, 10162u), vec3<u32>(48486u, 59857u, 51317u))) | _wgslsmith_mult_vec3_u32(~vec3<u32>(14556u, u_input.a.x, 1u), ~vec3<u32>(4294967295u, 0u, u_input.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1673f, -101f, -123f) * vec3<f32>(654f, -1925f, 421f)), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -624f, 1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(305f, 574f, -158f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-118f * 631f)), _wgslsmith_f_op_f32(f32(-1f) * -1072f), _wgslsmith_f_op_f32(max(-1467f, -461f)), _wgslsmith_div_f32(-263f, _wgslsmith_f_op_f32(-252f + 454f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1006f + -1423f));
}

