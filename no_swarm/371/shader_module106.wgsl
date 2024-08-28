struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(54495u, vec4<f32>(715f, -775f, 253f, 716f), 424u, vec4<f32>(-354f, 1000f, 1438f, -695f), vec2<i32>(-1504i, 2147483647i)), Struct_1(4294967295u, vec4<f32>(-697f, -440f, 1546f, 813f), 4294967295u, vec4<f32>(-524f, 1568f, -1230f, 771f), vec2<i32>(2147483647i, 2147483647i)), Struct_1(36723u, vec4<f32>(-515f, 2169f, 954f, -1962f), 4294967295u, vec4<f32>(-608f, 1556f, 439f, 398f), vec2<i32>(-1i, -18428i)), Struct_1(1u, vec4<f32>(1115f, 1000f, -633f, 1944f), 0u, vec4<f32>(-1581f, -421f, -129f, 130f), vec2<i32>(1i, 2147483647i)), Struct_1(27740u, vec4<f32>(-1535f, -181f, -398f, 154f), 66687u, vec4<f32>(-940f, 357f, 170f, 1395f), vec2<i32>(i32(-2147483648), 64544i)), Struct_1(0u, vec4<f32>(-287f, 1958f, 1425f, -2113f), 0u, vec4<f32>(-694f, -1320f, -387f, 360f), vec2<i32>(61262i, -1i)), Struct_1(35062u, vec4<f32>(1166f, 721f, 1000f, 1096f), 1u, vec4<f32>(-571f, 912f, 862f, -1000f), vec2<i32>(23667i, -1i)), Struct_1(0u, vec4<f32>(682f, -466f, -1102f, 1553f), 67508u, vec4<f32>(-271f, 506f, 1323f, -1746f), vec2<i32>(23987i, -1104i)), Struct_1(1u, vec4<f32>(-606f, -1082f, -1284f, -103f), 1u, vec4<f32>(635f, -1000f, 372f, -1697f), vec2<i32>(2147483647i, 0i)), Struct_1(47040u, vec4<f32>(-915f, -112f, -1390f, -1076f), 36532u, vec4<f32>(-1940f, -205f, 812f, 958f), vec2<i32>(-1i, i32(-2147483648))), Struct_1(0u, vec4<f32>(-160f, -598f, -722f, 1000f), 4294967295u, vec4<f32>(-663f, 976f, -858f, 1402f), vec2<i32>(44204i, -1i)), Struct_1(99798u, vec4<f32>(-647f, -1179f, -749f, 1463f), 31357u, vec4<f32>(978f, -190f, 744f, -1781f), vec2<i32>(1i, -1938i)), Struct_1(4294967295u, vec4<f32>(713f, -324f, 1216f, 499f), 43747u, vec4<f32>(1000f, 535f, -1103f, -506f), vec2<i32>(37200i, i32(-2147483648))), Struct_1(92057u, vec4<f32>(-1736f, -1041f, 358f, 1227f), 0u, vec4<f32>(840f, 1071f, 952f, -1227f), vec2<i32>(-14860i, 0i)), Struct_1(4294967295u, vec4<f32>(-1000f, -734f, -390f, 977f), 0u, vec4<f32>(562f, -239f, 671f, 1000f), vec2<i32>(-1i, 2147483647i)), Struct_1(11478u, vec4<f32>(-1000f, -610f, -724f, 285f), 1u, vec4<f32>(-901f, 1192f, 460f, -676f), vec2<i32>(-6103i, 0i)), Struct_1(4294967295u, vec4<f32>(966f, 938f, -1363f, 1000f), 0u, vec4<f32>(-306f, 1477f, 965f, 1130f), vec2<i32>(i32(-2147483648), 0i)), Struct_1(0u, vec4<f32>(-2053f, -210f, 1000f, 1192f), 34681u, vec4<f32>(706f, 1009f, 565f, -146f), vec2<i32>(-32946i, 2147483647i)), Struct_1(0u, vec4<f32>(-1000f, -898f, 1944f, -417f), 25460u, vec4<f32>(-1000f, 1860f, 1088f, 554f), vec2<i32>(-1i, 20831i)), Struct_1(0u, vec4<f32>(283f, 1371f, 434f, 1807f), 33936u, vec4<f32>(518f, -1519f, 1000f, -177f), vec2<i32>(0i, 6197i)), Struct_1(30414u, vec4<f32>(-606f, -348f, 1820f, -1000f), 31766u, vec4<f32>(-482f, -834f, -392f, -1000f), vec2<i32>(-32857i, 2147483647i)), Struct_1(1u, vec4<f32>(760f, 131f, 1523f, 1466f), 4294967295u, vec4<f32>(222f, -430f, -473f, 292f), vec2<i32>(0i, 18669i)), Struct_1(0u, vec4<f32>(-809f, -1000f, 950f, 1000f), 18533u, vec4<f32>(-864f, -1722f, 1165f, 871f), vec2<i32>(1i, -9420i)), Struct_1(50502u, vec4<f32>(-1179f, 1000f, 2006f, -1056f), 4294967295u, vec4<f32>(795f, -799f, -805f, 1210f), vec2<i32>(1i, 1i)), Struct_1(56016u, vec4<f32>(-311f, -1033f, -1331f, 1737f), 102339u, vec4<f32>(1352f, -1490f, 846f, 453f), vec2<i32>(-1i, -24453i)), Struct_1(0u, vec4<f32>(794f, -1055f, -949f, -1608f), 2360u, vec4<f32>(960f, -1541f, 172f, 971f), vec2<i32>(-2150i, -17363i)), Struct_1(93015u, vec4<f32>(-683f, 913f, 1772f, -904f), 4294967295u, vec4<f32>(-839f, 522f, -710f, -1981f), vec2<i32>(1i, 29548i)), Struct_1(1u, vec4<f32>(-1818f, -1000f, 158f, 592f), 0u, vec4<f32>(-824f, 1945f, -537f, 110f), vec2<i32>(-3148i, 2147483647i)));

var<private> global1: array<f32, 18>;

var<private> global2: u32 = 4294967295u;

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = -466f;
    global2 = _wgslsmith_sub_u32(u_input.b, 0u);
    return u_input.b;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(func_3(), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(min(781f, global1[_wgslsmith_index_u32(16707u, 18u)]))), 713f, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(1u, 18u)])), arg_0.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(245f, 733f, -744f, global1[_wgslsmith_index_u32(u_input.b, 18u)]) + vec4<f32>(125f, -1419f, global1[_wgslsmith_index_u32(78939u, 18u)], arg_0.x))))))), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(1u, 1u, 50187u, 61186u)), ~vec4<u32>(51911u, u_input.b, 1u, u_input.a)), firstLeadingBit(~(~vec4<u32>(0u, u_input.a, 67313u, u_input.b)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, 1628f, 740f, global1[_wgslsmith_index_u32(countOneBits(1u), 18u)]))))), ~vec2<i32>(-31443i, countOneBits(-1i)));
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(i32(-1i) * -var_0.e.x, -9442i), var_0.e.x), -1i | var_0.e.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(select(0i, 1i, true), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-6550i, -1i, var_0.e.x), vec3<i32>(0i, var_0.e.x, var_0.e.x)))), (i32(-1i) * -2147483647i) | (-27559i | -var_0.e.x)));
    global2 = ~reverseBits(1u);
    var var_2 = Struct_1(0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 125f, _wgslsmith_f_op_f32(max(-1290f, 776f)), global1[_wgslsmith_index_u32(abs(var_0.c), 18u)]) * _wgslsmith_f_op_vec4_f32(var_0.d - _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(107552u, 18u)], arg_0.x, 1400f, -519f), var_0.b))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.b, _wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(u_input.b, 18u)], arg_0.x, -2174f)))))), abs(firstLeadingBit(var_0.c << (u_input.b % 32u))) >> (u_input.b % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.d)))))), min(_wgslsmith_mult_vec2_i32(var_0.e, var_0.e), var_1.zx));
    global0 = array<Struct_1, 28>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(var_0.d)))), var_1.x, var_0.d, global0[_wgslsmith_index_u32(1u, 28u)]);
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    global3 = 24148i;
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, 5213u), 28u)];
    global1 = array<f32, 18>();
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(-var_0.b.wx));
    var var_2 = Struct_1(firstTrailingBit(~(~26715u) << (1u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 18u)]) * _wgslsmith_f_op_f32(step(1656f, global1[_wgslsmith_index_u32(var_0.c, 18u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 18u)])) * _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(672f, 390f))), global1[_wgslsmith_index_u32(8505u, 18u)], var_1.d.d.x), abs(u_input.a), var_1.c, max(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(min(var_0.e, vec2<i32>(var_0.e.x, var_1.b)), vec2<i32>(var_0.e.x, 19255i)), var_1.d.e, var_1.d.e), firstTrailingBit(~firstLeadingBit(var_0.e))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1420f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.b), 18u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))))));
    global3 = _wgslsmith_dot_vec3_i32(min(~vec3<i32>(_wgslsmith_sub_i32(53000i, -36431i), _wgslsmith_mult_i32(-2147483647i, 1i), 31210i >> (u_input.b % 32u)), vec3<i32>(-2147483647i, -func_2(vec2<f32>(var_0, 1926f)).b, ~2147483647i)), -(reverseBits(vec3<i32>(-2147483647i, 28052i, -1i)) >> (~vec3<u32>(u_input.b, 3553u, u_input.b) % vec3<u32>(32u))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 872f, -702f, var_0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, global1[_wgslsmith_index_u32(4294967295u, 18u)], -316f) * vec4<f32>(1134f, -1633f, global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(u_input.b, 18u)])))))), i32(-1i) * -2147483647i, _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec2_f32(max(func_2(vec2<f32>(var_0, var_0)).a.yy, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], 1980f) * vec2<f32>(global1[_wgslsmith_index_u32(31564u, 18u)], -804f))))).a + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], 475f, -169f, -373f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], 1844f, -476f, global1[_wgslsmith_index_u32(u_input.b, 18u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1759f, global1[_wgslsmith_index_u32(u_input.a, 18u)], -880f, global1[_wgslsmith_index_u32(u_input.a, 18u)]) * vec4<f32>(var_0, global1[_wgslsmith_index_u32(u_input.a, 18u)], 1173f, -1144f)))))), func_2(vec2<f32>(-1261f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), -1432f)))).d);
    var var_2 = select(select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), all(vec3<bool>(false, true, true)) | any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), true), select(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), !vec4<bool>(any(vec2<bool>(true, true)), false, all(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true)), true);
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-42850i, 46938i, -2147483647i, 16533i), vec4<i32>(var_1.d.e.x, var_1.b, -2147483647i, -1i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(var_1.d.e.x, 28076i, 0i, 2147483647i), vec4<i32>(var_1.d.e.x, var_1.b, var_1.d.e.x, var_1.d.e.x) << (vec4<u32>(u_input.b, u_input.a, 12929u, u_input.b) % vec4<u32>(32u)))), var_1.b, var_1.d.e.x, var_1.b), -vec4<i32>(-(2147483647i >> (var_1.d.a % 32u)), _wgslsmith_div_i32(~2147483647i, var_1.b), var_1.d.e.x, var_1.b));
    global2 = 41633u;
    let var_4 = Struct_2(vec4<f32>(-438f, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-435f))), _wgslsmith_f_op_f32(1402f * _wgslsmith_f_op_f32(trunc(730f)))), 44981i, vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.d.x), _wgslsmith_f_op_f32(sign(-129f)), 1468f, _wgslsmith_f_op_f32(-func_2(vec2<f32>(var_1.a.x, 1000f)).c.x)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(ceil(-3617f))))).d);
    var_2 = vec4<bool>(var_2.x, !(!(!var_2.x)), var_2.x, all(!var_2.xww));
    let var_5 = ~(var_3.x | var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(10452i, var_3.x, abs(var_5), ~var_3.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1388f + -855f) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_4.d.a, 18u)])) + _wgslsmith_f_op_f32(-var_0)))));
}

