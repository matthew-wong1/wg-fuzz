struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(1i, -1213i, 1i, -7348i, -12531i, 1i);

var<private> global1: array<vec2<i32>, 25>;

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec4<f32>(-1137f, 1154f, -601f, 1218f), Struct_1(false, 214f, 1418f, 4294967295u), Struct_2(Struct_1(true, -108f, -200f, 58511u), vec2<u32>(4294967295u, 1u), Struct_1(true, -195f, -1000f, 4294967295u)), vec4<i32>(i32(-2147483648), -27540i, -26552i, -730i), vec4<f32>(-793f, -1045f, -426f, -905f)), Struct_3(vec4<f32>(941f, 494f, -1907f, -1000f), Struct_1(false, 738f, 453f, 5619u), Struct_2(Struct_1(true, 462f, -1000f, 44329u), vec2<u32>(50052u, 1u), Struct_1(true, -1138f, 1078f, 16141u)), vec4<i32>(35755i, -1i, 2318i, 10156i), vec4<f32>(1744f, 966f, 257f, -222f)), Struct_3(vec4<f32>(934f, -559f, 998f, -138f), Struct_1(false, 308f, -1024f, 0u), Struct_2(Struct_1(true, 913f, -790f, 0u), vec2<u32>(0u, 0u), Struct_1(true, 459f, 1035f, 49448u)), vec4<i32>(-16972i, -1i, 2147483647i, 23324i), vec4<f32>(197f, -965f, 1621f, 325f)), Struct_3(vec4<f32>(1286f, -169f, -235f, 304f), Struct_1(true, 224f, -1242f, 53298u), Struct_2(Struct_1(true, 1681f, -445f, 0u), vec2<u32>(55679u, 1u), Struct_1(true, -414f, -114f, 0u)), vec4<i32>(1i, 11868i, 6820i, 0i), vec4<f32>(288f, -578f, 1600f, 200f)), Struct_3(vec4<f32>(-812f, -567f, -1211f, 1566f), Struct_1(false, -520f, -505f, 0u), Struct_2(Struct_1(true, 1286f, -1309f, 28702u), vec2<u32>(0u, 26642u), Struct_1(true, 1522f, 2207f, 45445u)), vec4<i32>(i32(-2147483648), -1i, -18274i, 1i), vec4<f32>(-706f, -663f, 458f, -849f)), Struct_3(vec4<f32>(1306f, -1112f, -1265f, -175f), Struct_1(true, 954f, 1862f, 11885u), Struct_2(Struct_1(true, 1013f, -392f, 157953u), vec2<u32>(0u, 1u), Struct_1(false, -1022f, 487f, 84711u)), vec4<i32>(78i, 32566i, -22809i, 74746i), vec4<f32>(250f, -345f, -141f, -1975f)), Struct_3(vec4<f32>(-1499f, -813f, 387f, 1258f), Struct_1(false, -938f, 1046f, 1u), Struct_2(Struct_1(true, -1042f, 168f, 0u), vec2<u32>(4294967295u, 56368u), Struct_1(false, -786f, 966f, 26264u)), vec4<i32>(-1i, 10130i, 2147483647i, 2147483647i), vec4<f32>(-1000f, 402f, -1520f, 608f)), Struct_3(vec4<f32>(-1617f, -1000f, -786f, -1470f), Struct_1(true, 384f, 1000f, 88556u), Struct_2(Struct_1(true, 572f, -116f, 4294967295u), vec2<u32>(4294967295u, 4294967295u), Struct_1(true, 1000f, 915f, 0u)), vec4<i32>(1i, 1i, 0i, -19036i), vec4<f32>(-136f, -442f, -1994f, 1000f)), Struct_3(vec4<f32>(954f, -595f, 639f, 218f), Struct_1(false, -707f, 148f, 1u), Struct_2(Struct_1(true, -212f, 510f, 1u), vec2<u32>(60922u, 32502u), Struct_1(false, -190f, -549f, 4294967295u)), vec4<i32>(-34778i, -21659i, 0i, 4692i), vec4<f32>(338f, -375f, 950f, 1499f)), Struct_3(vec4<f32>(978f, 1000f, -1020f, -787f), Struct_1(false, -1544f, -589f, 0u), Struct_2(Struct_1(false, 1000f, -1177f, 0u), vec2<u32>(1u, 44233u), Struct_1(true, -123f, -1000f, 0u)), vec4<i32>(24000i, 0i, -1i, 0i), vec4<f32>(-1126f, -502f, -594f, 936f)), Struct_3(vec4<f32>(1861f, -136f, -404f, -1937f), Struct_1(false, -940f, 1435f, 0u), Struct_2(Struct_1(true, 322f, 1832f, 1u), vec2<u32>(56099u, 4294967295u), Struct_1(true, -169f, 2435f, 61607u)), vec4<i32>(-13427i, 1i, i32(-2147483648), 2147483647i), vec4<f32>(529f, -453f, -926f, -577f)), Struct_3(vec4<f32>(864f, 410f, 294f, 263f), Struct_1(false, 1787f, 385f, 4294967295u), Struct_2(Struct_1(true, 1096f, 514f, 40309u), vec2<u32>(22770u, 23920u), Struct_1(false, 250f, 1000f, 4294967295u)), vec4<i32>(-2731i, -1i, -10972i, 50280i), vec4<f32>(1947f, -1889f, 1379f, 294f)), Struct_3(vec4<f32>(430f, -276f, -1000f, 1094f), Struct_1(true, -112f, -976f, 12193u), Struct_2(Struct_1(true, 738f, -483f, 1u), vec2<u32>(0u, 1u), Struct_1(false, 1305f, 573f, 75768u)), vec4<i32>(-18037i, -22728i, 1i, 0i), vec4<f32>(-121f, -1417f, -589f, 433f)), Struct_3(vec4<f32>(-1815f, -1902f, -1291f, 624f), Struct_1(true, -2170f, -1177f, 33457u), Struct_2(Struct_1(true, 232f, 334f, 27110u), vec2<u32>(58473u, 5993u), Struct_1(false, 1000f, 1787f, 0u)), vec4<i32>(44750i, 11824i, -14033i, 17716i), vec4<f32>(1625f, 563f, -3088f, -1475f)), Struct_3(vec4<f32>(-198f, -2383f, 1000f, 689f), Struct_1(false, 2134f, -586f, 4294967295u), Struct_2(Struct_1(true, 172f, -1037f, 41118u), vec2<u32>(0u, 4294967295u), Struct_1(true, 1246f, -1973f, 29757u)), vec4<i32>(-10424i, i32(-2147483648), -1i, -64505i), vec4<f32>(-1825f, -1000f, 1027f, 761f)), Struct_3(vec4<f32>(1061f, -661f, -371f, 709f), Struct_1(false, 2269f, -1000f, 73111u), Struct_2(Struct_1(true, 777f, -1036f, 4294967295u), vec2<u32>(22149u, 405u), Struct_1(false, 165f, 527f, 4294967295u)), vec4<i32>(1i, 49654i, 28239i, 0i), vec4<f32>(1623f, -1454f, 1152f, -1073f)), Struct_3(vec4<f32>(747f, -945f, 461f, -1094f), Struct_1(true, -1623f, 242f, 3755u), Struct_2(Struct_1(false, -549f, -221f, 119682u), vec2<u32>(1u, 0u), Struct_1(false, 778f, 1598f, 4294967295u)), vec4<i32>(-9732i, 2147483647i, 55286i, 15686i), vec4<f32>(-572f, 126f, 1330f, -1436f)), Struct_3(vec4<f32>(1602f, 798f, 1408f, 101f), Struct_1(true, -1332f, 1896f, 23751u), Struct_2(Struct_1(true, -267f, -498f, 4294967295u), vec2<u32>(1u, 35753u), Struct_1(true, -1052f, -852f, 13013u)), vec4<i32>(i32(-2147483648), 0i, -31016i, 0i), vec4<f32>(-903f, 1572f, -1363f, -272f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: f32) -> u32 {
    var var_0 = true;
    var var_1 = ~u_input.a.x;
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 18u)];
    let var_3 = var_2.a.wx;
    let var_4 = var_2.b.a;
    return _wgslsmith_dot_vec4_u32(u_input.c, ~_wgslsmith_mod_vec4_u32(u_input.c, ~max(u_input.c, vec4<u32>(85232u, u_input.c.x, 28064u, 1u))));
}

fn func_2() -> vec2<i32> {
    global1 = array<vec2<i32>, 25>();
    var var_0 = ~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(~0u, 60389u, firstTrailingBit(4294967295u))), u_input.c.xxz);
    return vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 6u)], select(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(func_3(u_input.b.x, -267f), 6u)], ~(-5558i)), -u_input.a.x, true));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1116f, _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(abs(arg_2.e.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3 * 667f)))))), Struct_1(!arg_2.c.a.a, _wgslsmith_f_op_f32(floor(arg_2.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3, -1647f)))), 0u), Struct_2(Struct_1(arg_2.c.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + arg_2.e.x)), 1150f, select(u_input.d, _wgslsmith_div_u32(1870u, 57224u), all(vec3<bool>(arg_2.c.a.a, arg_2.c.c.a, false)))), ~vec2<u32>(1u, firstLeadingBit(arg_2.b.d)), Struct_1(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(137f)))), arg_2.b.b, u_input.c.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(~(~vec4<i32>(u_input.b.x, 1i, -46626i, -44282i)), ~(vec4<i32>(arg_1.x, 33729i, arg_0.x, -27246i) >> (vec4<u32>(1u, 69800u, arg_2.c.a.d, 5858u) % vec4<u32>(32u)))), vec4<i32>(abs(firstTrailingBit(arg_0.x)), global0[_wgslsmith_index_u32((13721u >> (1u % 32u)) >> (~arg_2.b.d % 32u), 6u)], u_input.a.x, -_wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-600f, arg_3, arg_2.c.c.b, 1000f)))))));
    let var_1 = vec3<bool>(all(vec3<bool>(true, true, true)), true, any(select(vec2<bool>(true, arg_2.b.a), vec2<bool>(var_0.b.a, arg_2.b.a), select(vec2<bool>(false, false), vec2<bool>(false, var_0.c.a.a), vec2<bool>(arg_2.b.a, true)))) & (var_0.b.d > ((u_input.c.x ^ 4294967295u) ^ u_input.d)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.e.x))), _wgslsmith_f_op_f32(994f * _wgslsmith_div_f32(-105f, var_0.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1241f))), Struct_1(var_0.c.c.a, 491f, arg_2.c.c.c, ~27517u), Struct_2(Struct_1(false, arg_3, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_2.c.a.c, arg_3, false)))), 62189u), vec2<u32>(u_input.c.x, 1u), arg_2.b), var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.b.b, -1307f, _wgslsmith_f_op_f32(arg_2.c.c.b * -1000f), 875f))) + arg_2.e));
    let var_3 = _wgslsmith_f_op_f32(floor(-282f));
    var var_4 = var_1.x;
    return Struct_1(arg_2.c.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2.e.x, -2713f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1581f, 1522f))))))), arg_3, max(41456u, arg_2.c.a.d));
}

fn func_1() -> i32 {
    let var_0 = u_input.d;
    let var_1 = (~4294967295u ^ _wgslsmith_sub_u32(~u_input.c.x, _wgslsmith_mult_u32(1u, reverseBits(0u)))) & ~6696u;
    global0 = array<i32, 6>();
    let var_2 = func_4(_wgslsmith_mod_vec2_i32(~(func_2() ^ vec2<i32>(u_input.a.x, u_input.b.x)), firstLeadingBit(~countOneBits(global1[_wgslsmith_index_u32(var_1, 25u)]))), abs(firstLeadingBit(~u_input.a.yz)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 35606u), 18u)], -309f);
    let var_3 = ((vec4<u32>(var_2.d | var_1, ~var_0, _wgslsmith_add_u32(var_2.d, var_0), _wgslsmith_div_u32(0u, 1u)) & u_input.c) >> (~(vec4<u32>(1u, 0u, u_input.c.x, 4294967295u) ^ vec4<u32>(var_1, 0u, var_1, 0u)) % vec4<u32>(32u))) ^ u_input.c;
    return select(countOneBits(global0[_wgslsmith_index_u32(28191u, 6u)]), i32(-1i) * -1i, false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 25>();
    global0 = array<i32, 6>();
    let var_0 = ~min(vec4<u32>(u_input.c.x, _wgslsmith_div_u32(0u, 4294967295u << (0u % 32u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.d, u_input.c.x), 25272u ^ u_input.c.x), 0u), vec4<u32>(_wgslsmith_mod_u32(0u, u_input.d) | firstTrailingBit(63261u), ~118444u, ~(~18790u), 0u));
    var var_1 = vec4<i32>(i32(-1i) * -select(i32(-1i) * -29391i, u_input.a.x, any(vec3<bool>(true, true, true))), 30329i, 0i, func_1());
    var_1 = countOneBits(reverseBits(select(_wgslsmith_sub_vec4_i32(vec4<i32>(-38940i, -2147483647i, 5303i, -2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(63712u, 6u)], 0i, var_1.x)), -select(vec4<i32>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(20016u, 6u)], -30796i), u_input.a, vec4<bool>(false, true, false, false)), vec4<bool>(true, select(false, false, false), true, true))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1216f * _wgslsmith_f_op_f32(f32(-1f) * -282f)) - 1848f);
    let var_3 = 555f;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-107f, var_3, -1284f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, 375f, var_3))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3, 758f, var_3))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_3, 1458f))))) * vec3<f32>(var_3, _wgslsmith_f_op_f32(trunc(var_3)), 132f)));
    let x = u_input.a;
    s_output = StorageBuffer(0i, u_input.b);
}

