struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -273f;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(583f, 652f, -710f, 251f), Struct_1(30068u, true, -3820i, vec4<f32>(2433f, 632f, -863f, -1000f)));

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec4<f32>(-843f, -347f, -1827f, 664f), Struct_1(59132u, true, 63613i, vec4<f32>(139f, 702f, 146f, -3026f))), Struct_2(vec4<f32>(2854f, -139f, 231f, 1831f), Struct_1(1u, false, 19667i, vec4<f32>(474f, 1000f, 406f, -328f))), Struct_2(vec4<f32>(1108f, -619f, -779f, 292f), Struct_1(4294967295u, true, i32(-2147483648), vec4<f32>(1000f, -1000f, -1045f, 494f))), Struct_2(vec4<f32>(-684f, -684f, 1358f, 774f), Struct_1(47480u, false, 1i, vec4<f32>(1000f, -1736f, 1346f, -663f))), Struct_2(vec4<f32>(-589f, -1000f, -1237f, -1286f), Struct_1(4294967295u, true, 3691i, vec4<f32>(804f, -724f, 1000f, -677f))), Struct_2(vec4<f32>(-915f, 485f, 607f, -478f), Struct_1(29512u, true, 29009i, vec4<f32>(-1012f, 256f, 503f, -755f))), Struct_2(vec4<f32>(1311f, 1059f, 176f, 248f), Struct_1(21483u, true, -1426i, vec4<f32>(445f, 124f, -1566f, -1000f))), Struct_2(vec4<f32>(-475f, 2129f, -415f, -725f), Struct_1(15028u, true, -10264i, vec4<f32>(-644f, -567f, -855f, 189f))), Struct_2(vec4<f32>(-1000f, 2826f, -1529f, -187f), Struct_1(15369u, true, 31616i, vec4<f32>(1358f, -120f, -915f, -2189f))), Struct_2(vec4<f32>(-915f, -245f, -879f, -1440f), Struct_1(4294967295u, true, 52114i, vec4<f32>(921f, -409f, -1241f, 1000f))), Struct_2(vec4<f32>(-873f, -1778f, 733f, -1063f), Struct_1(20819u, false, 54337i, vec4<f32>(1470f, 645f, -726f, 1433f))), Struct_2(vec4<f32>(241f, 244f, 1029f, 722f), Struct_1(4294967295u, true, i32(-2147483648), vec4<f32>(1207f, -1994f, -1000f, -512f))), Struct_2(vec4<f32>(341f, -976f, -736f, 1213f), Struct_1(1u, false, 1i, vec4<f32>(1379f, 209f, 808f, 791f))), Struct_2(vec4<f32>(-210f, 882f, -564f, -558f), Struct_1(60105u, false, 0i, vec4<f32>(781f, -1438f, -456f, 666f))), Struct_2(vec4<f32>(784f, -100f, 678f, -328f), Struct_1(1u, true, 2147483647i, vec4<f32>(1453f, -122f, -1083f, -1246f))), Struct_2(vec4<f32>(1163f, -2120f, 246f, 169f), Struct_1(28780u, false, -16600i, vec4<f32>(588f, 2506f, -852f, 295f))), Struct_2(vec4<f32>(1969f, 511f, -207f, 548f), Struct_1(2286u, false, -40539i, vec4<f32>(-296f, 1466f, 786f, -256f))), Struct_2(vec4<f32>(-388f, 664f, 1000f, 2084f), Struct_1(4294967295u, true, 1i, vec4<f32>(1198f, 756f, -364f, -2189f))), Struct_2(vec4<f32>(-819f, -1174f, 344f, 2881f), Struct_1(40781u, true, 0i, vec4<f32>(398f, -734f, -199f, -186f))), Struct_2(vec4<f32>(1000f, -1000f, 1793f, 262f), Struct_1(1u, true, -5103i, vec4<f32>(1245f, 993f, -2009f, 329f))), Struct_2(vec4<f32>(-453f, 429f, -1182f, 481f), Struct_1(37201u, false, -1i, vec4<f32>(1216f, 465f, -1270f, -1456f))), Struct_2(vec4<f32>(-710f, 975f, 505f, -1278f), Struct_1(4294967295u, false, -1i, vec4<f32>(-571f, -2165f, 1272f, 512f))), Struct_2(vec4<f32>(-2611f, 1094f, -353f, -939f), Struct_1(0u, false, 2147483647i, vec4<f32>(810f, -434f, 1296f, -818f))), Struct_2(vec4<f32>(1792f, -1059f, -1877f, 777f), Struct_1(4294967295u, true, 667i, vec4<f32>(524f, 189f, -198f, 1574f))), Struct_2(vec4<f32>(357f, 148f, 655f, 1000f), Struct_1(4294967295u, true, -2578i, vec4<f32>(1000f, -1000f, 507f, -194f))), Struct_2(vec4<f32>(-391f, 165f, -1340f, 1804f), Struct_1(4294967295u, true, -54696i, vec4<f32>(-1861f, -863f, -328f, -349f))), Struct_2(vec4<f32>(-428f, 1000f, 1096f, 345f), Struct_1(4294967295u, true, 1i, vec4<f32>(-401f, -793f, -1220f, -760f))), Struct_2(vec4<f32>(547f, 1202f, 339f, 435f), Struct_1(13057u, true, 8408i, vec4<f32>(822f, 1986f, 509f, 266f))), Struct_2(vec4<f32>(-880f, -435f, -801f, 503f), Struct_1(55498u, true, i32(-2147483648), vec4<f32>(-194f, 264f, 1660f, 1132f))), Struct_2(vec4<f32>(-333f, -1262f, -2176f, 180f), Struct_1(0u, false, 32293i, vec4<f32>(1413f, 2324f, -625f, -1681f))), Struct_2(vec4<f32>(437f, 2047f, 667f, -374f), Struct_1(15412u, true, -12215i, vec4<f32>(-1516f, -2058f, 597f, 1204f))), Struct_2(vec4<f32>(-1831f, -774f, -715f, 130f), Struct_1(1u, false, 2147483647i, vec4<f32>(-536f, 1055f, 1701f, 3826f))));

var<private> global3: array<i32, 23>;

var<private> global4: array<u32, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>) -> f32 {
    var var_0 = global1.b.c;
    global3 = array<i32, 23>();
    global3 = array<i32, 23>();
    global3 = array<i32, 23>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1339f, _wgslsmith_f_op_f32(-arg_1.x))));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = all(vec4<bool>(global1.b.b, global3[_wgslsmith_index_u32(select(12255u >> (0u % 32u), _wgslsmith_sub_u32(1u, 1u), true), 23u)] == -2035i, global1.b.b, ~(global1.b.a ^ global1.b.a) < ~(~64973u)));
    var var_1 = firstLeadingBit(vec4<u32>(~global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(18005u, 9u)], 9u)], global1.b.a), 9u)], 9u)], ~(~(~global1.b.a)), global4[_wgslsmith_index_u32(global1.b.a, 9u)], ~24037u));
    global2 = array<Struct_2, 32>();
    var_1 = vec4<u32>(0u >> (~(_wgslsmith_div_u32(var_1.x, var_1.x) ^ ~var_1.x) % 32u), ~4294967295u | (4294967295u & ~var_1.x), ~(reverseBits(var_1.x) << (_wgslsmith_dot_vec2_u32(var_1.zw, var_1.wz) % 32u)), countOneBits(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(8023u, global1.b.a), vec2<u32>(global1.b.a, global4[_wgslsmith_index_u32(var_1.x, 9u)]))) ^ global1.b.a));
    global4 = array<u32, 9>();
    return global1.b;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> f32 {
    global1 = Struct_2(arg_2.a, func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(min(1819f, arg_2.b.d.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<i32>(-9271i, global3[_wgslsmith_index_u32(arg_2.b.a, 23u)], arg_2.b.c), arg_2.a.zw)) - _wgslsmith_f_op_f32(global1.b.d.x + -1227f))), global1.a, min(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(84504u, 23u)], 14357i, arg_2.b.c), vec3<i32>(21936i, global1.b.c, arg_2.b.c)), vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(66204u, 23u)], u_input.a), abs(vec3<i32>(2147483647i, -1i, global3[_wgslsmith_index_u32(4294967295u, 23u)]))), vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], 28957i, min(1i, u_input.c)))));
    let var_0 = select(vec3<i32>(2147483647i << (~4294967295u % 32u), abs(arg_2.b.c), global3[_wgslsmith_index_u32(64361u, 23u)]), vec3<i32>(reverseBits(~(-1i)), firstLeadingBit(reverseBits(8654i)), abs(21078i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 37958u, global1.b.a), vec3<u32>(arg_2.b.a, 1u, arg_2.b.a)) % 32u)), vec3<bool>(!global1.b.b, arg_2.b.b, true)) & ~vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, global1.b.c, u_input.c, -22658i), vec4<i32>(0i, u_input.b, arg_2.b.c, global3[_wgslsmith_index_u32(31382u, 23u)])), u_input.c, (u_input.a ^ global1.b.c) << (~2196u % 32u));
    var var_1 = ~var_0;
    global4 = array<u32, 9>();
    var var_2 = Struct_1(arg_2.b.a, false, global1.b.c, _wgslsmith_f_op_vec4_f32(max(global1.b.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1570f, arg_2.a.x, 1118f, 1000f) + _wgslsmith_div_vec4_f32(global1.b.d, vec4<f32>(1702f, arg_1, -229f, global1.b.d.x)))))));
    return 564f;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = global1.b;
    var var_1 = Struct_1(_wgslsmith_mult_u32(56761u, arg_2.b.a), true, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(countOneBits(2147483647i), _wgslsmith_sub_i32(var_0.c, -23148i), var_0.c), -1i), reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.b.c, 15210i), -vec2<i32>(var_0.c, arg_2.b.c)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-712f, var_0.d.x, _wgslsmith_f_op_f32(func_2(-vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(0u, 23u)], var_0.c), var_0.d.xz)), 598f))));
    global0 = -648f;
    let var_2 = func_3(_wgslsmith_f_op_f32(f32(-1f) * -676f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, var_0.d.x, -202f, arg_2.a.x) - _wgslsmith_f_op_vec4_f32(ceil(global1.a))), _wgslsmith_f_op_vec4_f32(exp2(var_0.d)), !select(vec4<bool>(arg_0.b.b, true, true, true), vec4<bool>(arg_0.b.b, global1.b.b, false, arg_0.b.b), vec4<bool>(var_1.b, arg_0.b.b, true, global1.b.b)))), _wgslsmith_div_vec4_f32(global1.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(var_1.d.x + var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -451f), arg_0.b.d.x)), select(vec4<bool>(all(vec4<bool>(arg_2.b.b, var_0.b, arg_0.b.b, true)), var_1.b, true, true), select(select(vec4<bool>(arg_0.b.b, true, global1.b.b, false), vec4<bool>(false, true, var_0.b, true), global1.b.b), vec4<bool>(false, true, arg_0.b.b, arg_0.b.b), arg_2.b.b), false))), vec3<i32>(-2147483647i, 0i, global1.b.c));
    return StorageBuffer(~arg_2.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global4[_wgslsmith_index_u32(max(reverseBits(global4[_wgslsmith_index_u32(1u & global4[_wgslsmith_index_u32(61604u, 9u)], 9u)]), global1.b.a), 9u)], _wgslsmith_f_op_f32(ceil(global1.a.x)) < global1.b.d.x, global1.b.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b.d - global1.a)));
    let x = u_input.a;
    s_output = func_4(Struct_2(vec4<f32>(global1.b.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(global1.a.x, -1973f))), _wgslsmith_f_op_f32(abs(-393f)), _wgslsmith_f_op_f32(func_1(false, _wgslsmith_f_op_f32(-global1.b.d.x), global2[_wgslsmith_index_u32(global1.b.a, 32u)]))), Struct_1(abs(global1.b.a), false, ~(-var_0.c), vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.b.d.x)), _wgslsmith_f_op_f32(-var_0.d.x), var_0.d.x, -279f))), _wgslsmith_div_f32(global1.a.x, var_0.d.x), global2[_wgslsmith_index_u32(global1.b.a, 32u)]);
}

