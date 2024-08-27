struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25>;

var<private> global1: array<Struct_5, 4> = array<Struct_5, 4>(Struct_5(vec2<i32>(-24164i, 0i), Struct_1(-762f, vec4<bool>(false, false, false, false), -841f, false), vec3<f32>(252f, 931f, 158f), true, Struct_1(-575f, vec4<bool>(false, true, true, true), 1328f, true)), Struct_5(vec2<i32>(2147483647i, -41943i), Struct_1(-134f, vec4<bool>(false, true, false, true), -1000f, false), vec3<f32>(213f, 760f, -1053f), true, Struct_1(572f, vec4<bool>(false, false, true, false), 621f, true)), Struct_5(vec2<i32>(-20006i, -17439i), Struct_1(-1000f, vec4<bool>(false, true, true, true), 1384f, true), vec3<f32>(220f, 856f, -659f), true, Struct_1(-1155f, vec4<bool>(true, true, true, true), -263f, false)), Struct_5(vec2<i32>(19799i, -19444i), Struct_1(-1657f, vec4<bool>(true, true, true, false), -176f, true), vec3<f32>(1176f, -406f, 2241f), true, Struct_1(1473f, vec4<bool>(true, true, false, true), -760f, false)));

var<private> global2: Struct_1 = Struct_1(716f, vec4<bool>(false, true, false, false), -352f, false);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec4<bool> {
    global0 = array<vec4<bool>, 25>();
    global2 = Struct_1(_wgslsmith_f_op_f32(floor(131f)), !select(select(vec4<bool>(arg_1.e.b.x, arg_1.b.x, arg_1.b.x, false), select(global0[_wgslsmith_index_u32(arg_0, 25u)], arg_1.c.d.b, true), true), arg_1.e.b, global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(arg_0, 72515u)), 25u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_1.e.a, global2.a)))), !(min(_wgslsmith_div_i32(u_input.e, u_input.e), _wgslsmith_div_i32(1i, -2147483647i)) == -abs(u_input.c.x)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2163f) * arg_1.d));
    var var_1 = global2.b.wxx;
    global0 = array<vec4<bool>, 25>();
    return !vec4<bool>(global2.d, true, false, any(vec4<bool>(arg_1.c.b.b.x, global2.b.x, false, global2.b.x)) & all(!global2.b));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_5) -> bool {
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-244f))))), !func_3(0u, Struct_3(-892f, vec2<bool>(arg_1.e.d, global2.b.x), Struct_2(arg_1.b.a, Struct_1(global2.c, global2.b, 355f, arg_1.b.d), 581f, arg_1.e), 141f, Struct_1(-351f, arg_1.e.b, -930f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-948f)) - _wgslsmith_div_f32(arg_1.e.a, _wgslsmith_f_op_f32(min(arg_1.c.x, _wgslsmith_f_op_f32(arg_1.e.c * global2.a))))), true);
    let var_0 = Struct_4(arg_0.a);
    let var_1 = vec4<i32>(-4980i, reverseBits(72150i), 0i, u_input.b);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-global2.c), Struct_1(_wgslsmith_f_op_f32(-arg_1.e.a), vec4<bool>(true, select(global2.d | global2.d, global2.b.x, arg_1.e.d), global2.b.x, arg_1.e.d), arg_1.c.x, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global2.a)), _wgslsmith_f_op_f32(228f * -847f))) * _wgslsmith_f_op_f32(-arg_1.e.a)), _wgslsmith_f_op_f32(global2.c + arg_1.b.c)), Struct_1(global2.c, !(!arg_1.e.b), global2.a, false));
    let var_3 = arg_0;
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec4<bool>) -> Struct_3 {
    global0 = array<vec4<bool>, 25>();
    var var_0 = 72443u;
    let var_1 = global1[_wgslsmith_index_u32(~reverseBits(firstLeadingBit(reverseBits(1u))), 4u)];
    var var_2 = global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(~37756u, 26996u, 17607u)), vec3<u32>(firstLeadingBit(1u), 1u, abs(1u))), _wgslsmith_mult_u32(max(101389u, ~18591u), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u))), (!arg_0.d || all(vec4<bool>(global2.d, false, true, false))) && arg_0.d), 4u)];
    var_2 = Struct_5(var_1.a >> (select(vec2<u32>(_wgslsmith_mod_u32(1u, 1u), _wgslsmith_mult_u32(83241u, 28980u)), vec2<u32>(1u, 1u), false & arg_3.x) % vec2<u32>(32u)), var_2.b, var_2.c, true, Struct_1(_wgslsmith_f_op_f32(-arg_1.a), vec4<bool>(var_2.d, arg_0.d, true, all(var_1.e.b)), -125f, false));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.c.x)) * _wgslsmith_f_op_f32(global2.c * 432f)), !(!(!var_1.e.b.zw)), Struct_2(_wgslsmith_f_op_f32(round(-1071f)), Struct_1(arg_0.c, !arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(472f, global2.a))), var_2.b.b.x), -1085f, Struct_1(_wgslsmith_f_op_f32(trunc(var_2.b.c)), select(func_3(58994u, Struct_3(arg_0.c, arg_3.zx, Struct_2(497f, Struct_1(868f, vec4<bool>(false, true, var_2.d, var_1.d), 836f, arg_3.x), var_2.c.x, arg_0), -274f, Struct_1(-434f, arg_0.b, global2.c, false))), !vec4<bool>(arg_0.d, arg_0.b.x, true, var_1.b.d), var_2.e.b.x & arg_1.d), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(select(var_1.b.a, 1000f, true)), true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(159f, arg_1.c))) * 888f) - 1f), Struct_1(-365f, !vec4<bool>(true, true & var_2.e.b.x, true, false), _wgslsmith_f_op_f32(2001f - _wgslsmith_f_op_f32(f32(-1f) * -1310f)), true));
}

fn func_1() -> bool {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(-212f - -648f), global2.b, _wgslsmith_f_op_f32(-1417f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -124f) - _wgslsmith_f_op_f32(select(-1495f, global2.c, global2.d)))), func_2(Struct_4(2147483647i), Struct_5(u_input.d.zw, Struct_1(global2.c, vec4<bool>(true, global2.d, false, global2.b.x), -756f, false), vec3<f32>(global2.a, global2.c, global2.a), global2.b.x, Struct_1(941f, vec4<bool>(true, global2.b.x, false, global2.b.x), global2.c, global2.d))) && false), Struct_1(global2.c, select(vec4<bool>(global2.b.x, u_input.b > 0i, true, true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(352u, 34995u, 0u, 4294967295u), select(vec4<u32>(1u, 1u, 31648u, 1u), vec4<u32>(1u, 4294967295u, 0u, 0u), global2.b)), 25u)], !global2.d), global2.c, global2.c <= _wgslsmith_div_f32(832f, _wgslsmith_f_op_f32(-global2.a))), -6993i, !(!vec4<bool>(all(global2.b.ww), global2.b.x, true, select(false, global2.b.x, true))));
    var var_1 = Struct_4(~min(-19853i, _wgslsmith_mod_i32(u_input.a >> (20759u % 32u), -u_input.c.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(firstLeadingBit(u_input.b), -1i, 1i, u_input.c.x);
    let var_1 = select(var_0.yw, select(vec2<i32>(firstLeadingBit(~u_input.c.x), 1i), u_input.d.xx, !global2.b.xw), !select(global2.b.yw, select(select(vec2<bool>(false, global2.d), vec2<bool>(true, false), true), vec2<bool>(false, global2.d), func_1()), true));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(180f + -126f), vec2<bool>(!select(!global2.d, false, global2.b.x), global2.d), func_4(Struct_1(global2.a, !(!global2.b), _wgslsmith_f_op_f32(-global2.a), any(vec2<bool>(global2.b.x, global2.d))), Struct_1(-1637f, !global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), any(func_3(32241u, Struct_3(-1243f, global2.b.wx, Struct_2(global2.c, Struct_1(global2.a, vec4<bool>(false, global2.b.x, false, global2.b.x), global2.c, global2.d), 493f, Struct_1(global2.c, vec4<bool>(true, global2.d, false, global2.b.x), global2.a, global2.d)), -251f, Struct_1(global2.a, vec4<bool>(true, false, false, true), global2.a, global2.b.x))).yzx)), (_wgslsmith_mult_i32(var_0.x, 11893i) ^ abs(0i)) << ((1u >> (0u % 32u)) % 32u), vec4<bool>(global2.d, any(global2.b.xyw), true, true)).c, _wgslsmith_f_op_f32(abs(1152f)), func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -101f), select(vec4<bool>(true, true, global2.d, false), !vec4<bool>(false, false, global2.d, global2.d), global0[_wgslsmith_index_u32(~8306u, 25u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -170f)), true), func_4(func_4(func_4(Struct_1(-106f, global2.b, global2.c, true), Struct_1(1000f, vec4<bool>(false, true, global2.b.x, global2.d), global2.a, true), -7981i, global0[_wgslsmith_index_u32(4294967295u, 25u)]).c.b, Struct_1(820f, global2.b, global2.c, false), min(17115i, var_0.x), select(vec4<bool>(global2.d, global2.d, global2.b.x, global2.d), vec4<bool>(true, false, global2.b.x, global2.d), global2.b)).c.b, func_4(func_4(Struct_1(-1600f, vec4<bool>(false, global2.b.x, false, global2.b.x), 1133f, true), Struct_1(-1000f, global2.b, -1307f, global2.d), var_0.x, global2.b).c.d, func_4(Struct_1(global2.a, global2.b, global2.a, global2.d), Struct_1(-1000f, global2.b, global2.c, global2.b.x), var_0.x, global0[_wgslsmith_index_u32(92858u, 25u)]).c.d, ~var_0.x, global2.b).c.b, min(-14009i, 6454i), vec4<bool>(!global2.b.x, all(global2.b), false || global2.b.x, all(global2.b.zw))).e, 1i, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(0u, 1u))), 4294967295u), 25u)]).e);
    var var_3 = var_2;
    global1 = array<Struct_5, 4>();
    global1 = array<Struct_5, 4>();
    var var_4 = Struct_5(vec2<i32>(_wgslsmith_add_i32(i32(-1i) * -var_1.x, ~select(var_1.x, 0i, var_3.b.x)), u_input.e), var_3.c.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1301f, _wgslsmith_f_op_f32(-global2.a), -210f) + vec3<f32>(_wgslsmith_f_op_f32(trunc(-515f)), _wgslsmith_f_op_f32(round(var_2.a)), global2.c))), func_4(var_2.e, func_4(var_2.e, func_4(Struct_1(932f, vec4<bool>(global2.d, var_3.e.b.x, false, true), 1097f, false), Struct_1(643f, global2.b, global2.c, true), i32(-1i) * -1i, select(vec4<bool>(global2.b.x, false, global2.d, var_3.c.b.d), global2.b, false)).c.d, -var_0.x, global0[_wgslsmith_index_u32(1u, 25u)]).e, -countOneBits(u_input.d.x), vec4<bool>(true, all(select(vec3<bool>(false, global2.b.x, global2.b.x), vec3<bool>(var_2.e.d, var_2.c.b.b.x, false), vec3<bool>(global2.d, global2.d, false))), true, global2.d)).e.d, var_3.c.d);
    global1 = array<Struct_5, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(81782u, 73883u, false) & ~0u), _wgslsmith_mod_vec4_i32(-(~(~u_input.d)), u_input.d << (vec4<u32>(_wgslsmith_div_u32(115027u, 4294967295u), 1u, firstLeadingBit(1u), select(1u, 28021u, var_2.b.x)) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.a, 32192i, -2147483647i), vec4<i32>(var_1.x, -87871i, u_input.d.x, 2147483647i)), ~(var_0 & vec4<i32>(var_4.a.x, 10474i, -63099i, -54892i))) ^ var_0, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(abs(11387u), _wgslsmith_mult_u32(48236u, 0u), 1u), vec3<u32>(min(44093u, 78085u), _wgslsmith_sub_u32(4294967295u, 1u), 1u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(55012u, 1u, 55897u), vec3<u32>(4294967295u, 1u, 4294967295u)), max(1u, 42415u), 1u >> (1u % 32u)) ^ ~(~vec3<u32>(75041u, 10146u, 57734u))));
}

