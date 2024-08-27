struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-170f, -1729f, -467f, -1427f);

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(vec3<f32>(1405f, -677f, 507f), 14399u, vec4<bool>(true, true, true, true)), Struct_1(vec3<f32>(-208f, -137f, -1223f), 1u, vec4<bool>(false, false, true, true)), -1i, 5892u, Struct_1(vec3<f32>(-1888f, 1000f, -544f), 0u, vec4<bool>(false, true, false, true))), Struct_2(Struct_1(vec3<f32>(1382f, -1700f, 355f), 0u, vec4<bool>(false, true, true, true)), Struct_1(vec3<f32>(1606f, 571f, -305f), 1u, vec4<bool>(true, true, true, false)), 56076i, 8344u, Struct_1(vec3<f32>(200f, 1356f, -624f), 0u, vec4<bool>(false, true, false, false))), Struct_2(Struct_1(vec3<f32>(196f, -1039f, 1047f), 0u, vec4<bool>(true, true, false, true)), Struct_1(vec3<f32>(-311f, 2249f, -274f), 18735u, vec4<bool>(true, true, true, true)), -1i, 0u, Struct_1(vec3<f32>(-1016f, 1000f, 161f), 51582u, vec4<bool>(false, false, true, true))), Struct_2(Struct_1(vec3<f32>(-1167f, 715f, 1000f), 0u, vec4<bool>(false, true, true, true)), Struct_1(vec3<f32>(-1032f, 377f, 498f), 1u, vec4<bool>(false, false, true, true)), -15271i, 0u, Struct_1(vec3<f32>(1241f, 1000f, -1075f), 2810u, vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec3<f32>(1000f, 1637f, -578f), 60260u, vec4<bool>(false, true, true, false)), Struct_1(vec3<f32>(930f, 1972f, 129f), 75978u, vec4<bool>(true, true, false, false)), 36442i, 46662u, Struct_1(vec3<f32>(398f, 318f, 730f), 1u, vec4<bool>(true, true, true, true))), Struct_2(Struct_1(vec3<f32>(369f, 874f, -246f), 1u, vec4<bool>(true, true, false, false)), Struct_1(vec3<f32>(742f, 894f, 750f), 6278u, vec4<bool>(false, true, true, true)), -3968i, 96164u, Struct_1(vec3<f32>(-1041f, -871f, 323f), 4294967295u, vec4<bool>(true, true, true, true))), Struct_2(Struct_1(vec3<f32>(243f, 1656f, 1899f), 43007u, vec4<bool>(true, false, false, false)), Struct_1(vec3<f32>(1755f, 647f, -558f), 0u, vec4<bool>(false, false, false, false)), -5943i, 66053u, Struct_1(vec3<f32>(332f, 1193f, 340f), 51844u, vec4<bool>(true, true, false, true))), Struct_2(Struct_1(vec3<f32>(1654f, -542f, 559f), 23558u, vec4<bool>(false, true, true, true)), Struct_1(vec3<f32>(-1645f, -327f, -1028f), 0u, vec4<bool>(false, false, false, true)), 76110i, 4294967295u, Struct_1(vec3<f32>(-1142f, 1052f, -189f), 62731u, vec4<bool>(false, true, true, true))), Struct_2(Struct_1(vec3<f32>(804f, 705f, 246f), 4294967295u, vec4<bool>(false, true, true, true)), Struct_1(vec3<f32>(-1351f, 304f, 153f), 1u, vec4<bool>(false, false, true, false)), -1i, 67107u, Struct_1(vec3<f32>(-2026f, 141f, -1711f), 0u, vec4<bool>(false, false, true, true))));

var<private> global2: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(-28039i, 1671i), vec2<i32>(-10983i, 2147483647i), vec2<i32>(-12344i, 24710i), vec2<i32>(1905i, 24184i), vec2<i32>(1i, 2147483647i), vec2<i32>(-56969i, 1i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, 44798i), vec2<i32>(1i, -24439i), vec2<i32>(162i, 9377i), vec2<i32>(62712i, -7473i), vec2<i32>(-16996i, 12212i), vec2<i32>(-14948i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(-33791i, 2147483647i), vec2<i32>(68550i, 0i), vec2<i32>(1069i, 48852i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_mod_vec3_u32(~(~vec3<u32>(select(50182u, 11607u, false), u_input.c >> (35025u % 32u), u_input.c)), ~(~reverseBits(vec3<u32>(u_input.c, 1u, 53003u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.xwz) - global0.zxz), vec3<f32>(global0.x, 1464f, -208f)))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(11664u, 1u, var_0.x, 22591u) ^ min(vec4<u32>(4294967295u, 1u, var_0.x, u_input.c), vec4<u32>(u_input.a, 1u, u_input.c, var_0.x)), ~(~vec4<u32>(39340u, var_0.x, u_input.c, u_input.c))), !vec4<bool>(false, u_input.a < _wgslsmith_clamp_u32(u_input.c, u_input.a, 0u), true, true));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(557f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, -601f)))), ~4294967295u, !select(!var_1.c, var_1.c, true & var_1.c.x)), var_1, u_input.b.x, 2653u, var_1);
    var var_3 = Struct_1(global0.zww, countOneBits(_wgslsmith_dot_vec2_u32(var_0.yz, _wgslsmith_mult_vec2_u32(abs(vec2<u32>(var_1.b, 53620u)), ~vec2<u32>(0u, 1050u)))), vec4<bool>(true, true, var_2.e.c.x, true));
    global1 = array<Struct_2, 9>();
    return u_input.b.x;
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: f32) -> bool {
    global1 = array<Struct_2, 9>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, arg_2)), _wgslsmith_f_op_f32(max(-690f, -1428f)), 1083f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, arg_2, -1018f), vec3<f32>(arg_1.x, arg_1.x, -953f)), arg_1.xzw, select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)))))), u_input.a, vec4<bool>(~u_input.c <= u_input.c, true, false, u_input.b.x == reverseBits(_wgslsmith_mod_i32(-47720i, arg_0))));
    var var_1 = 1386f;
    let var_2 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(reverseBits(var_0.b), 1172u, ~(var_0.b ^ 4294967295u)), _wgslsmith_div_u32(u_input.a, reverseBits(4294967295u)), 0u), 4294967295u, var_0.b & countOneBits(abs(var_0.b)));
    global1 = array<Struct_2, 9>();
    return all(select(!(!(!var_0.c)), var_0.c, vec4<bool>(!var_0.c.x, false, _wgslsmith_f_op_f32(select(var_0.a.x, arg_1.x, true)) > _wgslsmith_f_op_f32(abs(var_0.a.x)), true)));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    global2 = array<vec2<i32>, 17>();
    let var_0 = Struct_1(arg_0.a.a, ~(~(~(u_input.a | arg_0.d))), !vec4<bool>(func_4(func_3(), vec4<f32>(-1997f, global0.x, 1590f, 1145f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0.e.c.x, func_4(28768i, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.a.x, 1585f, -473f, -1907f) * vec4<f32>(-1000f, -496f, global0.x, global0.x)), arg_0.a.a.x), true));
    var var_1 = arg_0.e.c;
    let var_2 = vec3<i32>(-2147483647i, i32(-1i) * -1i, countOneBits(u_input.b.x));
    let var_3 = var_2.x;
    return Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -586f, arg_0.e.a.x) + vec3<f32>(arg_1, arg_0.e.a.x, -632f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-192f, -2093f, -302f))))), 17977u, arg_0.a.c), arg_0.a, var_3, ~abs(firstLeadingBit(0u >> (u_input.c % 32u))), arg_0.a);
}

fn func_1() -> bool {
    let var_0 = func_2(global1[_wgslsmith_index_u32(0u, 9u)], _wgslsmith_f_op_f32(714f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-839f * global0.x)), _wgslsmith_f_op_f32(-1000f + 903f)))));
    global1 = array<Struct_2, 9>();
    let var_1 = _wgslsmith_f_op_f32(-global0.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1009f * -1000f) - -523f) - -2346f) - _wgslsmith_f_op_f32(-var_0.a.a.x));
    global2 = array<vec2<i32>, 17>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec4<bool>(func_1(), false, _wgslsmith_f_op_f32(global0.x + global0.x) == _wgslsmith_f_op_f32(-102f * 1051f), !all(vec2<bool>(true, true))));
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 9u)];
    var_1 = Struct_2(var_1.a, Struct_1(vec3<f32>(2164f, 1000f, _wgslsmith_f_op_f32(floor(-1940f))), _wgslsmith_clamp_u32(max(u_input.a, u_input.c), ~var_1.e.b, abs(4294967295u)) | (_wgslsmith_clamp_u32(u_input.c, 4294967295u, var_1.a.b) << (~0u % 32u)), !var_0), -18636i, abs(15839u), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-635f, global0.x), 1548f, _wgslsmith_div_f32(global0.x, -1784f)) - vec3<f32>(-300f, _wgslsmith_f_op_f32(ceil(var_1.a.a.x)), _wgslsmith_f_op_f32(round(var_1.b.a.x)))), 28127u, vec4<bool>(true || (1i >= u_input.b.x), true, any(func_2(Struct_2(var_1.b, var_1.a, u_input.b.x, 4294967295u, var_1.e), var_1.a.a.x).e.c.yww), !(u_input.b.x > -7036i))));
    var var_2 = Struct_2(Struct_1(global0.zyw, var_1.a.b, var_0), func_2(func_2(func_2(func_2(global1[_wgslsmith_index_u32(u_input.c, 9u)], -1171f), _wgslsmith_f_op_f32(global0.x - var_1.e.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(select(1000f, var_1.a.a.x, var_0.x)))), _wgslsmith_f_op_f32(1344f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -251f)))).b, _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-65219i, u_input.b.x, var_1.c), u_input.b), func_3()), 1i), abs(1u), Struct_1(var_1.b.a, 0u & var_1.e.b, func_2(func_2(func_2(Struct_2(Struct_1(vec3<f32>(-1319f, global0.x, 145f), 5812u, vec4<bool>(false, var_0.x, var_1.a.c.x, var_0.x)), Struct_1(var_1.b.a, 30150u, var_1.b.c), -34632i, u_input.a, var_1.e), global0.x), -770f), var_1.a.a.x).e.c));
    global1 = array<Struct_2, 9>();
    let var_3 = ~_wgslsmith_add_vec2_u32(countOneBits(reverseBits(max(vec2<u32>(var_2.e.b, 1u), vec2<u32>(39375u, 25252u)))), abs(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.d, u_input.c), vec2<u32>(1u, u_input.c))));
    var_2 = global1[_wgslsmith_index_u32(1u, 9u)];
    let var_4 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(~(~(vec2<i32>(28174i, -37533i) | u_input.b.xy)), _wgslsmith_add_vec2_i32(vec2<i32>(min(var_1.c, 30155i), 3163i), select(u_input.b.zy, countOneBits(u_input.b.zx), var_0.x))), -countOneBits(~(~global2[_wgslsmith_index_u32(0u, 17u)])));
    let x = u_input.a;
    s_output = StorageBuffer(2106f, ~(~var_2.b.b), ~(-(~abs(vec4<i32>(var_1.c, -1i, var_2.c, var_2.c)))));
}

