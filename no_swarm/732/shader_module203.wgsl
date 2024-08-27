struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(-1909f, vec4<f32>(-1000f, 887f, -1000f, -732f), vec4<f32>(-133f, -124f, 353f, 670f), vec3<f32>(1000f, -291f, 1000f), vec2<f32>(391f, -120f)), Struct_1(617f, vec4<f32>(-290f, 503f, -297f, -1244f), vec4<f32>(-1000f, 1931f, -977f, -144f), vec3<f32>(-603f, 1234f, -1313f), vec2<f32>(310f, -591f)), Struct_1(-295f, vec4<f32>(729f, -699f, -907f, 191f), vec4<f32>(1338f, 210f, -2708f, 241f), vec3<f32>(-2644f, 1108f, 265f), vec2<f32>(-519f, 758f)), Struct_1(-196f, vec4<f32>(796f, 804f, -2076f, -296f), vec4<f32>(811f, 2698f, -530f, 1677f), vec3<f32>(2379f, 680f, 1165f), vec2<f32>(-590f, 491f)), Struct_1(-687f, vec4<f32>(-1863f, -1324f, -553f, 548f), vec4<f32>(-633f, 1284f, 1758f, 1000f), vec3<f32>(-316f, -1381f, -731f), vec2<f32>(-286f, 759f)), Struct_1(-671f, vec4<f32>(188f, 1379f, 1183f, -685f), vec4<f32>(-387f, 616f, 1682f, -1337f), vec3<f32>(1093f, -275f, -1219f), vec2<f32>(1693f, -992f)), Struct_1(224f, vec4<f32>(-640f, 306f, -336f, -1186f), vec4<f32>(1259f, 1535f, 543f, -1543f), vec3<f32>(-375f, -490f, -695f), vec2<f32>(-717f, -563f)), Struct_1(-1586f, vec4<f32>(-491f, 538f, 616f, -111f), vec4<f32>(657f, -396f, -301f, 815f), vec3<f32>(-235f, 645f, 122f), vec2<f32>(-1704f, -2427f)), Struct_1(-850f, vec4<f32>(1000f, -211f, 520f, -575f), vec4<f32>(106f, 892f, -805f, -1266f), vec3<f32>(-1000f, 454f, -288f), vec2<f32>(2014f, -161f)), Struct_1(-1271f, vec4<f32>(-409f, 567f, -1609f, 1000f), vec4<f32>(1057f, 1388f, -1122f, 282f), vec3<f32>(-1000f, -452f, -1599f), vec2<f32>(-182f, 1154f)), Struct_1(-1126f, vec4<f32>(1336f, 470f, 1000f, 270f), vec4<f32>(867f, 763f, -339f, 560f), vec3<f32>(-1568f, 117f, -642f), vec2<f32>(-710f, 137f)), Struct_1(-119f, vec4<f32>(-1865f, 330f, 1731f, -940f), vec4<f32>(1036f, 1524f, -2704f, -421f), vec3<f32>(577f, 763f, -631f), vec2<f32>(-1206f, -1046f)), Struct_1(601f, vec4<f32>(-1198f, -226f, -1112f, -687f), vec4<f32>(-1303f, -1498f, 622f, -362f), vec3<f32>(651f, 1000f, 1801f), vec2<f32>(-446f, 2610f)), Struct_1(1993f, vec4<f32>(-390f, 1737f, 886f, 597f), vec4<f32>(-259f, -563f, -153f, -1000f), vec3<f32>(-156f, 1000f, 1532f), vec2<f32>(784f, -1289f)), Struct_1(-894f, vec4<f32>(472f, -1150f, -250f, 1442f), vec4<f32>(-147f, -1491f, -263f, -271f), vec3<f32>(-151f, -590f, -2219f), vec2<f32>(1014f, -433f)), Struct_1(-869f, vec4<f32>(-1020f, -1000f, -140f, -1076f), vec4<f32>(1000f, 518f, -1132f, 725f), vec3<f32>(-1098f, -402f, -1860f), vec2<f32>(738f, -540f)), Struct_1(-1446f, vec4<f32>(-1000f, 1838f, -1050f, -514f), vec4<f32>(-2057f, 334f, -241f, -1458f), vec3<f32>(822f, -2029f, -305f), vec2<f32>(457f, 695f)), Struct_1(-2617f, vec4<f32>(-549f, 498f, -281f, 318f), vec4<f32>(1049f, -1144f, -527f, 1299f), vec3<f32>(679f, -437f, 116f), vec2<f32>(213f, -2307f)), Struct_1(1007f, vec4<f32>(-819f, -2405f, 1000f, 1161f), vec4<f32>(884f, -719f, -2136f, 967f), vec3<f32>(-160f, -1888f, 1707f), vec2<f32>(-1074f, -1016f)), Struct_1(2007f, vec4<f32>(-1685f, 828f, -755f, 111f), vec4<f32>(2220f, 653f, -1000f, 151f), vec3<f32>(620f, 1000f, -1410f), vec2<f32>(-1072f, 717f)), Struct_1(1528f, vec4<f32>(-876f, 819f, 424f, -1035f), vec4<f32>(-380f, 759f, -339f, -1000f), vec3<f32>(-522f, -346f, 398f), vec2<f32>(1190f, -191f)), Struct_1(268f, vec4<f32>(-991f, 1000f, 1081f, -1222f), vec4<f32>(-357f, 293f, 702f, -1623f), vec3<f32>(2338f, 537f, -494f), vec2<f32>(1181f, -200f)), Struct_1(617f, vec4<f32>(-616f, -648f, -140f, 492f), vec4<f32>(-406f, -1626f, 646f, -160f), vec3<f32>(1000f, 1282f, 763f), vec2<f32>(1510f, 1521f)), Struct_1(608f, vec4<f32>(-1382f, -813f, -548f, -1000f), vec4<f32>(-1543f, -101f, 1991f, -1000f), vec3<f32>(-1720f, -1629f, -683f), vec2<f32>(-1676f, -425f)), Struct_1(559f, vec4<f32>(621f, -334f, 336f, -161f), vec4<f32>(175f, -617f, 555f, 1577f), vec3<f32>(-835f, -1142f, -372f), vec2<f32>(546f, -1111f)));

var<private> global2: Struct_2;

var<private> global3: vec2<f32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> vec2<f32> {
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.x - global0.d.x), _wgslsmith_f_op_f32(abs(-244f)))))), _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-369f)), _wgslsmith_f_op_f32(f32(-1f) * -1444f)))));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.a.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a.c.x - 505f), arg_1.a))) - _wgslsmith_f_op_f32(-499f * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1178f, global0.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    var var_1 = Struct_1(272f, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 257f) - _wgslsmith_f_op_f32(f32(-1f) * -2387f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - -399f)), _wgslsmith_f_op_f32(-var_0.x), arg_1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global3.x))))), _wgslsmith_f_op_vec4_f32(-global0.c), _wgslsmith_f_op_vec3_f32(global2.a.c.yyx + global2.a.c.zxz), global0.d.yy);
    var var_2 = !vec2<bool>(select(!arg_0.x, arg_0.x, false | arg_0.x), !arg_0.x);
    let var_3 = min(abs(vec2<i32>(24629i, firstTrailingBit(countOneBits(arg_2)))), u_input.a.xy);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(global0.e.x, 832f), vec2<f32>(global0.c.x, 1517f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.yz)))));
}

fn func_2(arg_0: f32) -> u32 {
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(true, false, false), global1[_wgslsmith_index_u32(1252u, 25u)], -20392i))))))));
    global0 = global2.a;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), global0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(153f, global2.a.c.x)) + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(true, true, false), Struct_1(global2.a.a, vec4<f32>(global0.c.x, arg_0, 205f, -1658f), global0.c, vec3<f32>(920f, 315f, -1430f), global2.a.d.zx), u_input.a.x)).x, _wgslsmith_div_f32(global2.a.e.x, _wgslsmith_f_op_f32(1275f - 1295f)), -1608f) + vec4<f32>(global2.a.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -337f), -367f)), global0.c.yxy, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.x), 578f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.x, global3.x) + _wgslsmith_f_op_vec2_f32(trunc(global0.d.zz))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.a.c.xz)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 752f), global2.a.e))))));
    var var_1 = global1[_wgslsmith_index_u32(~(~38433u), 25u)];
    var var_2 = _wgslsmith_f_op_f32(floor(-356f));
    return _wgslsmith_clamp_u32(41704u, 17080u, ~1u);
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = firstLeadingBit(~vec4<u32>(1u, 1u, 1u, 1u)) << (~vec4<u32>(func_2(global3.x), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 10088u) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(64289u, 1u), vec2<u32>(80930u, 32449u))), 39270u) % vec4<u32>(32u));
    global2 = Struct_2(global1[_wgslsmith_index_u32(57513u, 25u)]);
    var var_1 = _wgslsmith_dot_vec4_u32(~max(min(vec4<u32>(4294967295u, 4156u, var_0.x, var_0.x), vec4<u32>(4712u, 3886u, var_0.x, 1u)), ~vec4<u32>(6051u, var_0.x, 18660u, 4565u)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(0u, 48697u, var_0.x, var_0.x)), vec4<u32>(1u, 11091u, 26222u, var_0.x)), ~min(vec4<u32>(24121u, 38141u, 4294967295u, var_0.x), vec4<u32>(var_0.x, 18369u, 70913u, var_0.x)))) << (_wgslsmith_div_u32(_wgslsmith_mod_u32(reverseBits(var_0.x), ~_wgslsmith_mult_u32(var_0.x, var_0.x)), var_0.x) % 32u);
    let var_2 = 12388u;
    var var_3 = ~min(_wgslsmith_mod_i32(_wgslsmith_div_i32(-10086i, u_input.a.x), u_input.a.x), u_input.a.x);
    return select(select(vec4<bool>(!all(vec4<bool>(true, false, true, true)), true, true, select(true, any(vec2<bool>(false, false)), all(vec4<bool>(true, false, true, false)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), false), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), !vec4<bool>(false, any(vec4<bool>(true, false, false, true)), true, true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-595f, global3.x) * global3.x) + _wgslsmith_div_f32(-499f, global3.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(global2.a.c)))), vec4<f32>(global3.x, global0.a, -432f, 1f)), vec4<f32>(global0.d.x, global0.e.x, -810f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -798f))))), vec4<f32>(_wgslsmith_f_op_f32(-global2.a.d.x), global3.x, global0.a, global3.x), vec3<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.x * -719f), global3.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1194f, -190f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global0.c.yy * _wgslsmith_div_vec2_f32(vec2<f32>(-689f, global2.a.e.x), global2.a.d.zy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.xx)))))));
    global3 = _wgslsmith_f_op_vec2_f32(-var_0.d.zy);
    global0 = var_0;
    var var_1 = select(func_1(firstTrailingBit(-(vec2<i32>(u_input.a.x, 2147483647i) >> (vec2<u32>(0u, 15993u) % vec2<u32>(32u))))), func_1(~(~(-vec2<i32>(-28384i, u_input.a.x)))), func_1(vec2<i32>(u_input.a.x ^ max(-1i, -2147483647i), (i32(-1i) * -49940i) | (u_input.a.x ^ u_input.a.x))));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1252f))), -465f, !(u_input.a.x >= reverseBits(14593i)) != select(var_1.x, any(vec4<bool>(true, var_1.x, false, false)), var_1.x)));
    var var_3 = -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 18609i), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -76650i, u_input.a.x, 1i), vec4<i32>(-60360i, u_input.a.x, u_input.a.x, u_input.a.x)), -vec4<i32>(u_input.a.x, u_input.a.x, -27143i, 2147483647i))) << (1u % 32u);
    let var_4 = !vec4<bool>(var_1.x, var_1.x, var_1.x, !var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_vec4_f32(global2.a.c - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.d.x, global3.x, 473f, 823f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.a.b - vec4<f32>(693f, global2.a.d.x, var_0.a, var_0.d.x)) * global0.c)))), 9394i);
}

