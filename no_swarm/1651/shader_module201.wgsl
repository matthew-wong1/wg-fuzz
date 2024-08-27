struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(191f, 560f, -553f), vec3<i32>(2147483647i, 60187i, -32467i), 17821u);

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec2<i32>(7862i, 2147483647i), 0u, Struct_1(vec3<f32>(525f, -1842f, 383f), vec3<i32>(i32(-2147483648), -50754i, -32755i), 1u), 1162f), Struct_2(vec2<i32>(-50933i, 2147483647i), 0u, Struct_1(vec3<f32>(2059f, 105f, 1167f), vec3<i32>(-1i, 6876i, 17875i), 32973u), -614f), Struct_2(vec2<i32>(i32(-2147483648), 0i), 23577u, Struct_1(vec3<f32>(-1832f, -703f, -704f), vec3<i32>(-31567i, 0i, 1i), 1u), -1000f), Struct_2(vec2<i32>(24400i, -9508i), 13245u, Struct_1(vec3<f32>(306f, -1131f, -1000f), vec3<i32>(1i, i32(-2147483648), 0i), 4452u), 236f), Struct_2(vec2<i32>(-20027i, 1i), 61213u, Struct_1(vec3<f32>(-2066f, 156f, -1826f), vec3<i32>(i32(-2147483648), -30106i, -23865i), 10974u), -566f), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), 1u, Struct_1(vec3<f32>(-812f, -294f, 175f), vec3<i32>(2147483647i, i32(-2147483648), -1i), 12610u), -120f), Struct_2(vec2<i32>(-41675i, 2147483647i), 1u, Struct_1(vec3<f32>(1000f, -1000f, 427f), vec3<i32>(-1i, -8362i, 11425i), 28035u), -1007f), Struct_2(vec2<i32>(2147483647i, -1i), 0u, Struct_1(vec3<f32>(-147f, -197f, -848f), vec3<i32>(-18208i, 27228i, 2147483647i), 84317u), -1032f), Struct_2(vec2<i32>(0i, 48745i), 15107u, Struct_1(vec3<f32>(-1729f, 1615f, -1738f), vec3<i32>(1i, -4131i, 0i), 0u), -1056f), Struct_2(vec2<i32>(i32(-2147483648), -2185i), 1u, Struct_1(vec3<f32>(713f, 1454f, -374f), vec3<i32>(-28272i, -1i, i32(-2147483648)), 13217u), 105f), Struct_2(vec2<i32>(1i, 13171i), 162098u, Struct_1(vec3<f32>(-161f, -1423f, 247f), vec3<i32>(-20145i, 5916i, i32(-2147483648)), 66194u), -643f), Struct_2(vec2<i32>(-31720i, 2147483647i), 1u, Struct_1(vec3<f32>(-357f, -256f, -933f), vec3<i32>(3611i, -1i, 9467i), 63448u), 122f), Struct_2(vec2<i32>(21709i, 2147483647i), 3189u, Struct_1(vec3<f32>(1879f, 293f, 1726f), vec3<i32>(2147483647i, 0i, 2147483647i), 5130u), 941f), Struct_2(vec2<i32>(12643i, -1i), 50279u, Struct_1(vec3<f32>(-1283f, -998f, 1205f), vec3<i32>(1i, 0i, 1242i), 48872u), -1992f), Struct_2(vec2<i32>(i32(-2147483648), -12486i), 40091u, Struct_1(vec3<f32>(1265f, 560f, 1113f), vec3<i32>(32147i, 29094i, 2147483647i), 15567u), 721f), Struct_2(vec2<i32>(-60473i, -11405i), 1u, Struct_1(vec3<f32>(-377f, 237f, -143f), vec3<i32>(2147483647i, 875i, i32(-2147483648)), 1u), 689f), Struct_2(vec2<i32>(0i, 1i), 38111u, Struct_1(vec3<f32>(-518f, -1561f, -676f), vec3<i32>(i32(-2147483648), 1i, 50121i), 0u), -346f), Struct_2(vec2<i32>(15603i, 0i), 0u, Struct_1(vec3<f32>(-254f, -1108f, 1000f), vec3<i32>(2147483647i, 26137i, 2147483647i), 1u), -1125f), Struct_2(vec2<i32>(-4671i, 67353i), 39875u, Struct_1(vec3<f32>(505f, 641f, -774f), vec3<i32>(0i, 1i, -1i), 0u), -1236f), Struct_2(vec2<i32>(1i, i32(-2147483648)), 0u, Struct_1(vec3<f32>(1000f, -334f, -238f), vec3<i32>(-29065i, 0i, i32(-2147483648)), 0u), -787f), Struct_2(vec2<i32>(-1i, i32(-2147483648)), 4294967295u, Struct_1(vec3<f32>(-1082f, 219f, 815f), vec3<i32>(-1i, -52482i, 0i), 66797u), 247f), Struct_2(vec2<i32>(2147483647i, -66249i), 0u, Struct_1(vec3<f32>(964f, -2536f, 304f), vec3<i32>(1310i, -35346i, -36063i), 0u), 1340f), Struct_2(vec2<i32>(1i, -14888i), 35264u, Struct_1(vec3<f32>(537f, 252f, 496f), vec3<i32>(0i, -18671i, -12405i), 1u), -1000f), Struct_2(vec2<i32>(-58160i, 1i), 79910u, Struct_1(vec3<f32>(905f, -421f, 1000f), vec3<i32>(43455i, -1i, -43572i), 630u), -1000f), Struct_2(vec2<i32>(-43243i, i32(-2147483648)), 70187u, Struct_1(vec3<f32>(428f, 1425f, 403f), vec3<i32>(1i, 0i, 1i), 4294967295u), -688f), Struct_2(vec2<i32>(-5835i, i32(-2147483648)), 121441u, Struct_1(vec3<f32>(-633f, 1714f, 198f), vec3<i32>(33862i, 17988i, i32(-2147483648)), 8659u), -116f), Struct_2(vec2<i32>(-30695i, 0i), 4294967295u, Struct_1(vec3<f32>(561f, -426f, -335f), vec3<i32>(0i, 2059i, 32420i), 20491u), 1000f), Struct_2(vec2<i32>(-32230i, -74848i), 0u, Struct_1(vec3<f32>(-173f, -1705f, 923f), vec3<i32>(0i, 1i, -785i), 1u), 838f), Struct_2(vec2<i32>(-1287i, 2147483647i), 0u, Struct_1(vec3<f32>(102f, -1030f, -531f), vec3<i32>(2147483647i, 42285i, 30761i), 1u), 3427f), Struct_2(vec2<i32>(-48264i, 6431i), 1u, Struct_1(vec3<f32>(1725f, 935f, -1025f), vec3<i32>(4394i, 1742i, -34532i), 4294967295u), -618f), Struct_2(vec2<i32>(-42863i, 60581i), 4294967295u, Struct_1(vec3<f32>(-828f, 1000f, -918f), vec3<i32>(45527i, 55690i, 2147483647i), 60689u), 1020f), Struct_2(vec2<i32>(-1i, -12361i), 86938u, Struct_1(vec3<f32>(431f, 1540f, 1718f), vec3<i32>(1i, 2147483647i, 2147483647i), 13080u), -1415f));

var<private> global2: array<f32, 1> = array<f32, 1>(-1000f);

var<private> global3: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(278f, -1466f), vec2<f32>(-364f, 1000f), vec2<f32>(580f, 2165f), vec2<f32>(-915f, -714f), vec2<f32>(562f, 395f), vec2<f32>(1683f, -1149f), vec2<f32>(-425f, 434f), vec2<f32>(-419f, 1787f), vec2<f32>(-716f, 1812f));

var<private> global4: i32 = -38815i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = arg_0;
    var var_1 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), true);
    var var_2 = var_0.c;
    var var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(4294967295u, 9u)], _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1485f, 281f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.a.x, 627f), vec2<f32>(-863f, arg_3.c.a.x)))))), vec2<f32>(171f, _wgslsmith_f_op_f32(-var_2.a.x))) + var_3.a.zx);
    return countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a.x, arg_3.a.x), vec2<i32>(-2147483647i, -61496i)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> f32 {
    let var_0 = select(true, !(!arg_3 || (any(vec2<bool>(false, arg_3)) && true)), !arg_3);
    global3 = array<vec2<f32>, 9>();
    let var_1 = _wgslsmith_dot_vec2_i32(global0.b.yz, select(func_3(arg_1, arg_1.c, 0u, arg_1), global0.b.yx, !vec2<bool>(any(vec4<bool>(false, true, true, false)), true)));
    var var_2 = arg_1.c;
    let var_3 = false;
    return global0.a.x;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 0u;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) * arg_3.a.x), _wgslsmith_f_op_f32(global0.a.x - global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, max(14438u, 1u)), 1u)]), -698f);
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 137f, global0.a.x) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, 738f, global2[_wgslsmith_index_u32(arg_0, 1u)])))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -633f), _wgslsmith_f_op_f32(step(arg_3.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-384f * -381f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(-26913i, global1[_wgslsmith_index_u32(0u, 32u)], arg_3.c, arg_2.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1653f * -893f))))));
    global0 = arg_3;
    var var_3 = max(abs(vec2<i32>(_wgslsmith_mod_i32(1i, global0.b.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -35905i), vec2<i32>(arg_3.b.x, arg_3.b.x)), ~global0.b.x, -2147483647i))), ~vec2<i32>(arg_1.x, ~(-1i | arg_3.b.x)));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0, 1u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.x))), 1f), arg_3.b, arg_0);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec3<f32> {
    global3 = array<vec2<f32>, 9>();
    global1 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-821f, 582f, arg_1.d, global2[_wgslsmith_index_u32(0u, 1u)])) * vec4<f32>(-900f, 1920f, 1376f, global0.a.x)), vec4<f32>(-1191f, _wgslsmith_f_op_f32(step(-107f, 305f)), 583f, 541f), select(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(false, true, false, true), vec4<bool>(arg_0, false, true, false)), vec4<bool>(false, false, false, arg_0), !arg_0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-544f, 1222f, -1568f, -134f))))));
    let var_1 = arg_1.c;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 1u)] - -362f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(reverseBits(-1i), arg_1, 23561u, false))), !(!arg_0)));
    return arg_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -37530i;
    var var_1 = global0.b.x >> ((u_input.a.x << (global0.c % 32u)) % 32u);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, global0.a.x) * vec3<f32>(global0.a.x, global0.a.x, global0.a.x))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-335f, global2[_wgslsmith_index_u32(10629u, 1u)], -1000f), _wgslsmith_f_op_vec3_f32(-global0.a)))), _wgslsmith_f_op_vec3_f32(func_4(true, Struct_2(~vec2<i32>(-1i, global0.b.x), ~0u, func_1(0u, vec2<i32>(30590i, 0i), vec2<bool>(false, true), Struct_1(global0.a, vec3<i32>(-5348i, global0.b.x, 1i), global0.c)), _wgslsmith_f_op_f32(-global0.a.x)))))), vec3<i32>(2147483647i << (select(34035u, 1u, any(vec3<bool>(false, false, true))) % 32u), global0.b.x, -(~(-global0.b.x))), firstTrailingBit(~firstLeadingBit(global0.c)));
    var var_2 = _wgslsmith_f_op_f32(trunc(-268f));
    global1 = array<Struct_2, 32>();
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 23589u), vec3<u32>(u_input.a.x, global0.c, 7352u)), ~_wgslsmith_mod_u32(global0.c, 7058u)), ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(32823u, u_input.a.x, u_input.a.x), vec3<u32>(47109u, global0.c, global0.c)))), 32u)];
    var_1 = _wgslsmith_add_i32(var_3.a.x, ~_wgslsmith_dot_vec2_i32(~var_3.c.b.yx | vec2<i32>(var_3.c.b.x, -5810i), -global0.b.yx));
    var_0 = -_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(global0.b, vec3<i32>(25090i, -77311i, var_3.c.b.x)) >> (vec3<u32>(16001u, 24077u, 45280u) % vec3<u32>(32u)), var_3.c.b), vec3<i32>(global0.b.x, global0.b.x, global0.b.x));
    var_0 = firstTrailingBit(37157i ^ global0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(min(var_3.c.c, 1u), 1u)], _wgslsmith_f_op_f32(trunc(global0.a.x))), _wgslsmith_f_op_f32(round(global0.a.x)), _wgslsmith_f_op_f32(-var_3.d), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 0u >> (global0.c % 32u)), 1u)])));
}

