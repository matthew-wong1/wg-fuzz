struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_2,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<i32>(-15603i, 1535i, 2147483647i), vec4<f32>(2150f, -511f, -302f, 1007f), Struct_2(4294967295u, vec2<u32>(4294967295u, 29202u)), -1000f, Struct_3(30271i, -1490i, Struct_1(1u, vec2<bool>(false, true), vec4<f32>(-733f, -1962f, 1824f, -1044f), false), -1i, vec4<f32>(-337f, -1000f, -1000f, -703f)));

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(0i, i32(-2147483648), Struct_1(26434u, vec2<bool>(false, true), vec4<f32>(1578f, 338f, 1041f, 177f), false), 1i, vec4<f32>(842f, 284f, 1000f, 1262f)), Struct_3(0i, -21275i, Struct_1(4294967295u, vec2<bool>(true, true), vec4<f32>(-429f, 116f, -782f, 2141f), false), 1698i, vec4<f32>(1508f, 1032f, 938f, -560f)), Struct_3(1i, i32(-2147483648), Struct_1(2814u, vec2<bool>(true, true), vec4<f32>(-1792f, -1000f, 327f, -1557f), false), 1i, vec4<f32>(2455f, -370f, 191f, 834f)), Struct_3(0i, 1i, Struct_1(3830u, vec2<bool>(true, true), vec4<f32>(-405f, -309f, 2462f, 759f), false), 2147483647i, vec4<f32>(527f, -397f, -901f, -534f)), Struct_3(2147483647i, 1i, Struct_1(85484u, vec2<bool>(true, false), vec4<f32>(696f, 1403f, 915f, -749f), false), i32(-2147483648), vec4<f32>(-111f, 968f, -313f, -1645f)), Struct_3(48243i, 2147483647i, Struct_1(23466u, vec2<bool>(false, false), vec4<f32>(-900f, 1000f, -866f, 740f), false), 0i, vec4<f32>(-455f, 230f, 2017f, 762f)), Struct_3(54777i, -1i, Struct_1(0u, vec2<bool>(false, false), vec4<f32>(1024f, -1208f, -409f, 1053f), false), 1i, vec4<f32>(-1870f, -419f, -362f, 1273f)), Struct_3(4198i, 41283i, Struct_1(28211u, vec2<bool>(false, false), vec4<f32>(-1195f, 843f, -853f, -1605f), true), i32(-2147483648), vec4<f32>(-1568f, 266f, 1545f, -1173f)), Struct_3(-33406i, -19417i, Struct_1(0u, vec2<bool>(true, true), vec4<f32>(866f, 217f, 218f, -1024f), true), 20645i, vec4<f32>(-1060f, 753f, -355f, 1632f)), Struct_3(3780i, 0i, Struct_1(0u, vec2<bool>(true, true), vec4<f32>(2143f, -1000f, 489f, 309f), false), 19709i, vec4<f32>(-1000f, 1886f, 2726f, -741f)), Struct_3(-1i, -49759i, Struct_1(51181u, vec2<bool>(true, false), vec4<f32>(2373f, 1594f, 256f, -468f), true), i32(-2147483648), vec4<f32>(494f, -961f, -828f, -125f)), Struct_3(i32(-2147483648), 0i, Struct_1(83930u, vec2<bool>(true, false), vec4<f32>(390f, 2550f, 632f, 226f), false), i32(-2147483648), vec4<f32>(242f, -1932f, -742f, 136f)), Struct_3(10149i, 1i, Struct_1(42101u, vec2<bool>(true, false), vec4<f32>(654f, 1217f, 660f, 854f), false), 1i, vec4<f32>(-256f, 304f, -938f, 399f)), Struct_3(-5496i, 34257i, Struct_1(1u, vec2<bool>(true, true), vec4<f32>(533f, 2575f, 1146f, 100f), false), 7824i, vec4<f32>(781f, -827f, 1000f, 2248f)), Struct_3(-50148i, i32(-2147483648), Struct_1(1u, vec2<bool>(true, true), vec4<f32>(1374f, 401f, 1704f, -1138f), false), -15460i, vec4<f32>(295f, -149f, -1021f, 1000f)), Struct_3(-46216i, 0i, Struct_1(36635u, vec2<bool>(false, false), vec4<f32>(-204f, -855f, -1477f, -438f), true), -12997i, vec4<f32>(-247f, -667f, 1666f, 306f)), Struct_3(2147483647i, 2147483647i, Struct_1(1u, vec2<bool>(true, true), vec4<f32>(286f, -1641f, -172f, -723f), true), 35264i, vec4<f32>(271f, 973f, -630f, 1837f)), Struct_3(-16979i, -8238i, Struct_1(1u, vec2<bool>(true, false), vec4<f32>(-1369f, -1749f, 222f, 782f), false), -1i, vec4<f32>(1306f, 137f, 646f, 612f)), Struct_3(-27908i, 2147483647i, Struct_1(10414u, vec2<bool>(true, false), vec4<f32>(166f, -1002f, -674f, -1089f), false), 2147483647i, vec4<f32>(1544f, -1371f, -2465f, 135f)), Struct_3(1i, i32(-2147483648), Struct_1(1195u, vec2<bool>(false, true), vec4<f32>(-1293f, -1667f, -1000f, -960f), true), -14811i, vec4<f32>(1143f, -277f, -1101f, -615f)), Struct_3(0i, 11161i, Struct_1(75579u, vec2<bool>(false, false), vec4<f32>(-258f, 627f, 2455f, 2024f), true), -1i, vec4<f32>(599f, -963f, -273f, -343f)), Struct_3(1i, 2147483647i, Struct_1(0u, vec2<bool>(false, false), vec4<f32>(-811f, 908f, -223f, 1661f), true), 2147483647i, vec4<f32>(2019f, 1507f, -1634f, 1173f)), Struct_3(i32(-2147483648), 0i, Struct_1(4294967295u, vec2<bool>(false, false), vec4<f32>(844f, -188f, 1000f, -431f), false), 2147483647i, vec4<f32>(-1315f, -1196f, 1442f, -1659f)), Struct_3(2147483647i, 1i, Struct_1(34059u, vec2<bool>(false, true), vec4<f32>(1869f, 2207f, -1033f, 301f), false), -12339i, vec4<f32>(2223f, 543f, 1397f, 1324f)), Struct_3(0i, 22999i, Struct_1(24640u, vec2<bool>(false, true), vec4<f32>(-447f, 2090f, 300f, -1510f), false), 20929i, vec4<f32>(-601f, -1000f, 204f, 374f)), Struct_3(4909i, -11987i, Struct_1(4294967295u, vec2<bool>(false, true), vec4<f32>(-970f, 840f, 886f, -477f), false), 2147483647i, vec4<f32>(-208f, 986f, 1000f, -345f)), Struct_3(i32(-2147483648), 35869i, Struct_1(1u, vec2<bool>(false, true), vec4<f32>(-417f, 1316f, -141f, 209f), false), 13117i, vec4<f32>(-826f, 1805f, 274f, -1604f)), Struct_3(1i, i32(-2147483648), Struct_1(21733u, vec2<bool>(true, true), vec4<f32>(2399f, 315f, -481f, 317f), true), -1i, vec4<f32>(194f, -181f, -716f, 680f)), Struct_3(4419i, 1i, Struct_1(101344u, vec2<bool>(false, true), vec4<f32>(-1581f, -1000f, 873f, 712f), true), 36417i, vec4<f32>(-139f, 515f, 860f, 959f)));

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(0u, vec2<bool>(true, true), vec4<f32>(-1656f, -354f, 1491f, 1061f), false), Struct_1(89248u, vec2<bool>(false, true), vec4<f32>(-186f, 611f, -1287f, -407f), false), Struct_1(62718u, vec2<bool>(false, true), vec4<f32>(490f, -1581f, 146f, -358f), false), Struct_1(0u, vec2<bool>(true, false), vec4<f32>(-697f, 1064f, -642f, 1364f), false), Struct_1(11487u, vec2<bool>(true, true), vec4<f32>(1108f, 771f, -753f, 279f), true), Struct_1(1u, vec2<bool>(false, false), vec4<f32>(-2582f, 1448f, -905f, -1175f), true), Struct_1(28313u, vec2<bool>(true, true), vec4<f32>(-1093f, 955f, -402f, -1317f), true), Struct_1(82302u, vec2<bool>(true, false), vec4<f32>(515f, 681f, 989f, 159f), true), Struct_1(47349u, vec2<bool>(false, false), vec4<f32>(732f, 240f, 1000f, 388f), true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(min(u_input.a.x, 18473u), vec2<bool>(false, false), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(global0.e.c.c.x * _wgslsmith_f_op_f32(floor(359f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-493f + -351f)))), global0.d), true);
    let var_1 = Struct_4(vec3<i32>(-1i, countOneBits(-(~2147483647i)), reverseBits(62577i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) - _wgslsmith_f_op_f32(global0.e.e.x - global0.d)), _wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_f_op_f32(trunc(1492f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b.x - -253f))))), global0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.c.x, _wgslsmith_f_op_f32(var_0.c.x - 1000f))), -1389f, all(vec4<bool>(global0.e.c.d, false, false, var_0.d)))), _wgslsmith_f_op_f32(global0.e.c.c.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_0.c.x))))), false)), global1[_wgslsmith_index_u32(~(~select(~4294967295u, 122221u, all(vec3<bool>(var_0.b.x, true, global0.e.c.b.x)))), 29u)]);
    var var_2 = global0.e.b;
    global1 = array<Struct_3, 29>();
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(sign(-206f));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<bool>) -> Struct_3 {
    let var_0 = ~18720u;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(712f, _wgslsmith_f_op_f32(-global0.e.e.x), -1072f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e.e))))));
    var var_2 = all(select(arg_3.xyy, vec3<bool>(!global0.e.c.d, !(var_1.x > 1087f), !(true || global0.e.c.d)), true));
    let var_3 = global2[_wgslsmith_index_u32(var_0, 9u)];
    let var_4 = Struct_1(abs(u_input.a.x), vec2<bool>(_wgslsmith_dot_vec2_i32(global0.a.zx | vec2<i32>(global0.e.b, global0.a.x), vec2<i32>(1i, 1i)) <= -reverseBits(-1i), false), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(-global0.d))), -445f, 1000f, -141f))), true);
    return Struct_3(global0.e.d, firstLeadingBit(global0.e.d), Struct_1(_wgslsmith_clamp_u32(min(72540u, 51148u), ~abs(arg_1.x), ~(~arg_2)), select(select(global0.e.c.b, var_4.b, select(global0.e.c.b, vec2<bool>(false, arg_3.x), arg_3.x)), var_3.b, select(!vec2<bool>(false, arg_3.x), !arg_3.zz, vec2<bool>(var_3.b.x, var_3.b.x))), _wgslsmith_div_vec4_f32(var_4.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e.e))), var_3.b.x), -2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) - vec4<f32>(var_4.c.x, _wgslsmith_f_op_f32(f32(-1f) * -397f), 2662f, var_3.c.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: u32) -> i32 {
    var var_0 = vec4<u32>(u_input.a.x, global0.c.a, ~(~22576u), arg_3);
    return reverseBits(arg_2.d);
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_sub_i32(~(_wgslsmith_add_i32(-75387i, -70552i) >> (_wgslsmith_div_u32(global0.e.c.a, 4294967295u) % 32u)) >> (firstLeadingBit(firstTrailingBit(u_input.a.x)) % 32u), max(global0.a.x, max(arg_0.a, -1i) | _wgslsmith_dot_vec4_i32(vec4<i32>(-11331i, global0.e.a, arg_0.b, 2147483647i), vec4<i32>(-10105i, -1i, arg_0.d, global0.e.d))) ^ (firstTrailingBit(~global0.a.x) | (i32(-1i) * -1i)));
    global1 = array<Struct_3, 29>();
    var var_1 = Struct_3(-func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, global0.d) * vec2<f32>(4408f, -1183f)))), arg_0.c, func_2(_wgslsmith_f_op_vec4_f32(sign(global0.b)), select(u_input.a, vec3<u32>(57708u, u_input.a.x, 88285u), vec3<bool>(true, false, arg_0.c.d)), ~u_input.a.x, select(vec4<bool>(false, true, arg_0.c.b.x, arg_0.c.b.x), vec4<bool>(global0.e.c.d, true, true, arg_0.c.b.x), vec4<bool>(arg_0.c.b.x, false, arg_0.c.d, true))), 0u), select(~(-max(global0.a.x, -2147483647i)), _wgslsmith_div_i32(2147483647i, ~(-5492i)), false), Struct_1(_wgslsmith_mult_u32(1u, select(38578u, arg_0.c.a, false)) | (arg_0.c.a | global0.c.b.x), global0.e.c.b, _wgslsmith_f_op_vec4_f32(-global0.b), true), -arg_0.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, -620f, _wgslsmith_f_op_f32(-1595f + arg_0.c.c.x), global0.d))))));
    var var_2 = 47009u;
    var_0 = -1i;
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 29>();
    var var_0 = 24910u;
    global2 = array<Struct_1, 9>();
    global0 = Struct_4(reverseBits(min(-_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.e.d, global0.a.x, -24541i), global0.a, vec3<i32>(global0.e.d, global0.a.x, global0.a.x)), _wgslsmith_mult_vec3_i32(-vec3<i32>(global0.e.d, global0.a.x, global0.e.a), vec3<i32>(-13823i, global0.a.x, 32292i)))), vec4<f32>(1f, 1140f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b.x))), -135f), func_1(global0.e), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.e.c.c.x, -1587f), _wgslsmith_f_op_f32(trunc(global0.e.e.x)))), global1[_wgslsmith_index_u32(u_input.a.x, 29u)]);
    var var_1 = global0.c;
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(-(~(-52353i)), global0.e.b << (global0.c.a % 32u)), 0i, 2147483647i << (u_input.a.x % 32u)) & vec3<i32>(1i, 3934i, global0.a.x);
    var var_3 = -18121i;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_mult_u32(0u, u_input.a.x), 34038i, vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a), min(func_2(global0.b, ~vec3<u32>(0u, var_1.b.x, var_1.a), 1u, !vec4<bool>(global0.e.c.b.x, true, global0.e.c.b.x, true)).c.a, 0u), ~firstTrailingBit(_wgslsmith_sub_u32(84254u, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, 1609f)), -1371f)));
}

