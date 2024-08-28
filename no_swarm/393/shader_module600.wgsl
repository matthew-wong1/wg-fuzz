struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: i32) -> f32 {
    let var_0 = arg_2.b.d;
    let var_1 = select(vec3<bool>(!any(!vec4<bool>(false, false, arg_2.d.b.x, false)), arg_2.b.e, arg_2.b.b & !all(vec2<bool>(true, arg_2.d.d.b))), !vec3<bool>(arg_2.a.x & true, arg_2.b.e, any(select(vec4<bool>(arg_2.d.b.x, false, arg_2.d.b.x, false), vec4<bool>(false, arg_2.b.e, true, arg_2.b.e), vec4<bool>(false, true, arg_2.a.x, arg_2.a.x)))), select(vec3<bool>(true & (var_0.x == 552f), true, true), select(select(arg_2.d.b, select(vec3<bool>(arg_2.d.d.b, false, arg_2.b.e), arg_2.d.b, arg_2.d.b), true), select(!vec3<bool>(false, false, arg_2.b.b), !vec3<bool>(arg_2.d.c.e, arg_2.b.b, true), u_input.a >= -7901i), true), arg_2.d.b));
    global0 = arg_2.a.x;
    global0 = arg_2.b.b;
    var var_2 = ~arg_1.x;
    return -1325f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: f32, arg_3: vec3<i32>) -> vec3<u32> {
    global0 = arg_1.x;
    var var_0 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2, arg_2), vec2<f32>(701f, arg_2)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 1015f) + vec2<f32>(-1552f, -181f))))), -firstTrailingBit(-15278i << (arg_0.x % 32u)) << (arg_0.x % 32u), arg_3 & arg_3);
    var_0 = Struct_5(var_0.a, 48028i, -vec3<i32>(1i, arg_3.x, var_0.b));
    let var_1 = Struct_2(arg_0.x, !vec3<bool>(false, all(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true))), all(vec2<bool>(arg_1.x, true))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(-252f, var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x - 203f), _wgslsmith_f_op_f32(637f + _wgslsmith_f_op_f32(var_0.a.x + 1952f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(var_0.a, -1i, vec3<i32>(var_0.b, -6761i, 0i)), vec4<u32>(64280u, arg_0.x, 1u, arg_0.x), Struct_4(arg_1, Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), true, 35340u, vec4<f32>(arg_2, var_0.a.x, arg_2, var_0.a.x), arg_1.x), var_0.a, Struct_2(arg_0.x, vec3<bool>(false, arg_1.x, arg_1.x), Struct_1(vec4<f32>(-1105f, 1587f, -873f, var_0.a.x), arg_1.x, arg_0.x, vec4<f32>(924f, var_0.a.x, -888f, var_0.a.x), true), Struct_1(vec4<f32>(arg_2, var_0.a.x, -164f, -796f), false, 3000u, vec4<f32>(-852f, arg_2, var_0.a.x, -3088f), arg_1.x))), u_input.a)))), arg_1.x, firstLeadingBit(~0u ^ (arg_0.x ^ arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, 340f, var_0.a.x) - vec4<f32>(var_0.a.x, var_0.a.x, arg_2, arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, -1000f, var_0.a.x))))), arg_1.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, 318f, 854f, -161f)))), any(select(vec3<bool>(true, false, true), !vec3<bool>(false, arg_1.x, arg_1.x), any(arg_1))), arg_0.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(496f, -1632f, var_0.a.x, arg_2)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1232f, -733f, var_0.a.x, var_0.a.x), vec4<f32>(var_0.a.x, var_0.a.x, 537f, 1225f), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-336f, -533f, var_0.a.x, 1028f))), select(all(arg_1), !arg_1.x, true))), arg_1.x));
    var var_2 = u_input.a;
    return firstTrailingBit(~vec3<u32>(~_wgslsmith_clamp_u32(64927u, 0u, 4294967295u), _wgslsmith_clamp_u32(~var_1.a, var_1.d.c, ~var_1.a), arg_0.x >> (77879u % 32u)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4) -> vec2<bool> {
    let var_0 = max(~_wgslsmith_add_vec3_u32(~vec3<u32>(arg_1.b.c, 13261u, 3807u), vec3<u32>(arg_0.d.d.c, 4294967295u, 0u)) ^ func_2(firstTrailingBit(vec2<u32>(4294967295u, 0u)) ^ ~vec2<u32>(arg_0.d.d.c, 37977u), vec2<bool>(true, arg_1.a.x), -1517f, vec3<i32>(u_input.a, max(u_input.a, u_input.a), ~2147483647i)), ~(~vec3<u32>(29326u, arg_1.b.c, arg_1.d.a)) >> (~(~reverseBits(vec3<u32>(4294967295u, arg_0.b.c, 7946u))) % vec3<u32>(32u)));
    var var_1 = arg_1.d.c;
    var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.d * vec4<f32>(-1000f, var_1.d.x, 1456f, -1767f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.a)) - arg_0.b.a)), true, _wgslsmith_dot_vec2_u32(var_0.yx, _wgslsmith_mod_vec2_u32(~abs(vec2<u32>(arg_1.d.a, 0u)), var_0.xz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(var_1.a)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, 635f, var_1.d.x, arg_1.b.a.x), arg_1.b.d))))), false);
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(arg_1.c - _wgslsmith_f_op_vec2_f32(var_1.a.wz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1879f, -1000f) * vec2<f32>(arg_1.b.a.x, arg_0.b.d.x))))), -2147483647i, countOneBits(vec3<i32>(~(u_input.a >> (1u % 32u)), countOneBits(~(-2147483647i)), countOneBits(18322i) >> (~var_0.x % 32u))));
    var var_3 = arg_1.d.c.e && true;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !all(!select(func_1(Struct_4(vec2<bool>(false, false), Struct_1(vec4<f32>(-1917f, -148f, -1000f, -982f), false, 69862u, vec4<f32>(-512f, 1508f, -1000f, -547f), false), vec2<f32>(-301f, -157f), Struct_2(37230u, vec3<bool>(true, true, false), Struct_1(vec4<f32>(1925f, -498f, 918f, -1032f), true, 1u, vec4<f32>(924f, 1000f, 2411f, 937f), false), Struct_1(vec4<f32>(-2018f, -613f, -566f, -1288f), false, 4294967295u, vec4<f32>(-429f, -924f, 1516f, -370f), false))), Struct_4(vec2<bool>(false, false), Struct_1(vec4<f32>(-1117f, -490f, -1000f, -1273f), true, 5115u, vec4<f32>(-1470f, -111f, 393f, 697f), true), vec2<f32>(-956f, -274f), Struct_2(4294967295u, vec3<bool>(false, false, false), Struct_1(vec4<f32>(1541f, 396f, 231f, -926f), true, 79454u, vec4<f32>(799f, 328f, 320f, -1186f), false), Struct_1(vec4<f32>(-1043f, -1000f, 1095f, 1000f), false, 1u, vec4<f32>(427f, 325f, 488f, 751f), true)))), vec2<bool>(false, true), vec2<bool>(true, true)));
    global0 = false;
    let var_0 = select(!select(vec4<bool>(true, any(vec3<bool>(true, true, false)), false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, any(vec2<bool>(true, false)), true)), !(!vec4<bool>(true, true, all(vec2<bool>(false, false)), func_1(Struct_4(vec2<bool>(false, false), Struct_1(vec4<f32>(-1026f, -224f, -1342f, -2843f), true, 12320u, vec4<f32>(-1119f, -341f, -583f, -404f), false), vec2<f32>(-419f, 992f), Struct_2(4294967295u, vec3<bool>(true, true, true), Struct_1(vec4<f32>(298f, -697f, 1598f, -748f), false, 29477u, vec4<f32>(155f, -694f, 272f, -496f), false), Struct_1(vec4<f32>(1513f, -682f, 862f, -1271f), false, 2857u, vec4<f32>(-152f, 265f, 522f, -443f), false))), Struct_4(vec2<bool>(true, false), Struct_1(vec4<f32>(-939f, 484f, -1017f, 578f), false, 46450u, vec4<f32>(947f, -1105f, -130f, 172f), false), vec2<f32>(475f, -1406f), Struct_2(5622u, vec3<bool>(true, false, true), Struct_1(vec4<f32>(1634f, 1474f, 258f, 1700f), false, 68978u, vec4<f32>(520f, 1007f, -834f, 2422f), true), Struct_1(vec4<f32>(-141f, 1125f, 1020f, 352f), true, 31364u, vec4<f32>(483f, 1217f, -835f, -553f), true)))).x)), true);
    let var_1 = ~(~firstLeadingBit(~vec3<u32>(1u, 1u, 1u)));
    var var_2 = abs(163i);
    var var_3 = Struct_2(var_1.x, vec3<bool>(var_0.x && true, !all(select(var_0.xzx, vec3<bool>(var_0.x, var_0.x, var_0.x), true)), _wgslsmith_clamp_i32(2147483647i, firstTrailingBit(0i), _wgslsmith_div_i32(43373i, u_input.a)) >= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i) | vec2<i32>(u_input.a, 1i), -vec2<i32>(u_input.a, u_input.a))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1328f, -1000f, 787f) * vec4<f32>(-1113f, -1671f, -136f, -1019f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1158f, -1117f, 410f, 1017f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-799f, 231f, 965f, 727f), vec4<f32>(887f, -204f, 1413f, -716f)))))), true, ~(firstTrailingBit(0u) << ((var_1.x << (22527u % 32u)) % 32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(974f, -711f, -182f, -1089f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(1f, 1f, 1f, 1f)))), var_0.x), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1000f, 2171f)), 1921f)), _wgslsmith_div_f32(117f, _wgslsmith_f_op_f32(func_3(Struct_5(vec2<f32>(-1187f, -1379f), 33714i, vec3<i32>(u_input.a, u_input.a, 60936i)), vec4<u32>(1u, var_1.x, 84546u, var_1.x), Struct_4(vec2<bool>(false, true), Struct_1(vec4<f32>(502f, -1000f, -489f, 1077f), var_0.x, 4294967295u, vec4<f32>(-251f, 1545f, 914f, -949f), false), vec2<f32>(-888f, 1461f), Struct_2(4294967295u, var_0.yxz, Struct_1(vec4<f32>(1342f, -151f, -668f, 719f), true, 17259u, vec4<f32>(-403f, 192f, 697f, 1207f), false), Struct_1(vec4<f32>(363f, 350f, -757f, 321f), false, var_1.x, vec4<f32>(188f, -898f, -154f, 1479f), true))), -50986i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-433f * -242f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-440f * 803f))), var_0.x, 12437u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1518f, 1405f, -932f, -620f), vec4<f32>(859f, -1000f, 523f, 228f)) + vec4<f32>(-1621f, -1118f, 1124f, 995f))), (u_input.a << (_wgslsmith_add_u32(65823u, var_1.x) % 32u)) < ~u_input.a));
    var_3 = Struct_2(49449u, var_3.b, Struct_1(var_3.d.d, any(!var_0), ~_wgslsmith_sub_u32(~var_3.a, _wgslsmith_mult_u32(var_1.x, 4294967295u)), _wgslsmith_div_vec4_f32(var_3.d.a, _wgslsmith_f_op_vec4_f32(var_3.d.d * vec4<f32>(378f, var_3.c.d.x, var_3.c.d.x, var_3.d.d.x))), !var_3.d.e), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_3.c.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-160f, 2173f, 1382f, var_3.d.d.x))), func_1(Struct_4(select(vec2<bool>(var_0.x, var_0.x), var_3.b.xz, vec2<bool>(true, var_3.c.b)), Struct_1(var_3.c.d, true, var_3.c.c, vec4<f32>(281f, var_3.c.d.x, var_3.c.d.x, var_3.d.d.x), var_0.x), var_3.c.a.wx, Struct_2(44745u, var_3.b, var_3.d, Struct_1(vec4<f32>(1123f, var_3.d.d.x, 804f, 166f), false, 17116u, vec4<f32>(380f, var_3.d.a.x, -871f, var_3.d.d.x), var_0.x))), Struct_4(vec2<bool>(var_0.x, var_3.d.b), var_3.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.d.a.x, var_3.d.a.x)), Struct_2(4294967295u, var_0.yyw, var_3.d, Struct_1(var_3.c.d, var_3.c.e, 82116u, var_3.d.d, false)))).x, 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.d.a * var_3.c.a))), !(!any(vec3<bool>(var_0.x, var_0.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-8848i, u_input.a) & vec2<i32>(u_input.a, -51987i), vec2<i32>(1i, -2147483647i), vec2<i32>(u_input.a, u_input.a)), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 25104i), vec2<i32>(u_input.a, -2147483647i)))), max(vec3<i32>(11352i, -20335i, ~u_input.a) | -vec3<i32>(u_input.a, -1i, -1i), max(~firstTrailingBit(vec3<i32>(87608i, 2147483647i, 45220i)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 1i), vec3<i32>(1i, -49459i, 1i))))), 309f, var_3.c.a.x);
}

