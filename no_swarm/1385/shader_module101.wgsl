struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(-66955i, 919i, -1i), vec3<i32>(8899i, i32(-2147483648), 39877i), vec3<i32>(-1i, -9779i, 4823i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(34350i, -36659i, -9697i), vec3<i32>(-1i, i32(-2147483648), -17962i));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, select(false, true, true)), true), vec4<bool>(false, true, true, true), false);
    let var_1 = abs(~u_input.d);
    global0 = array<Struct_2, 27>();
    var var_2 = arg_2;
    let var_3 = vec3<bool>(true, true, true);
    return var_2.c & _wgslsmith_mod_u32(14202u, 4294967295u);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: f32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(arg_0, _wgslsmith_div_u32(u_input.d, 47038u), _wgslsmith_mod_u32(u_input.a, 5337u)) & u_input.d), 27u)];
    var var_1 = select(select(!select(var_0.e.zxw, vec3<bool>(var_0.e.x, true, false), vec3<bool>(var_0.e.x, true, false)), vec3<bool>(false, (u_input.b << (var_0.c.c % 32u)) <= (75024i ^ var_0.d.a), !var_0.e.x), true), vec3<bool>(~var_0.c.c > _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.c, arg_0), vec2<u32>(var_0.a.c, 1u) & vec2<u32>(49811u, arg_0)), _wgslsmith_mod_u32(9024u, select(11333u, 4294967295u, var_0.e.x)) > func_3(var_0.d, vec2<f32>(-1000f, -427f), var_0.c, var_0.d), var_0.e.x), var_0.e.x);
    global0 = array<Struct_2, 27>();
    var var_2 = global0[_wgslsmith_index_u32(0u, 27u)];
    var_2 = global0[_wgslsmith_index_u32(func_3(Struct_1((_wgslsmith_dot_vec4_i32(vec4<i32>(22134i, -1i, 47303i, u_input.c.x), vec4<i32>(1i, 0i, -2147483647i, var_0.c.a)) >> (4294967295u % 32u)) & (u_input.c.x & var_2.b), 1012f, 77415u), arg_1.zz, Struct_1(_wgslsmith_sub_i32(~(-14806i | u_input.b), -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(trunc(var_2.c.b))) + 560f), 101819u), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(-10863i, -1i), _wgslsmith_mod_i32(u_input.b, 9290i), abs(-1i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-22897i, 1i, 5501i, var_0.a.a), vec4<i32>(var_2.c.a, -3543i, var_2.d.a, 1i))), var_0.a.b, ~var_0.a.c ^ var_0.c.c)), 27u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(-var_2.a.b), false)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = !arg_1.x;
    var var_1 = arg_0;
    global0 = array<Struct_2, 27>();
    global1 = array<vec3<i32>, 7>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(~u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(1429f, arg_0.b, arg_0.b, 1963f) - vec4<f32>(var_1.b, -1120f, -106f, 267f)), _wgslsmith_div_f32(var_1.b, -451f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b + arg_0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -495f), _wgslsmith_f_op_f32(round(var_1.b))))));
    return Struct_1(18607i, var_2.x, func_3(arg_0, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_2.x) - vec2<f32>(var_2.x, 626f)), var_2.xx))), arg_0, arg_0));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> u32 {
    global1 = array<vec3<i32>, 7>();
    var var_0 = arg_0.www;
    var var_1 = Struct_2(Struct_1(~1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.b) + func_1(Struct_1(0i, 1008f, arg_1.a.c), vec4<bool>(false, true, arg_1.e.x, arg_3.e.x)).b)), 0u), i32(-1i) * -15186i, func_1(arg_3.a, vec4<bool>(any(arg_3.e.zz), true, all(select(arg_1.e, vec4<bool>(true, false, true, arg_3.e.x), vec4<bool>(false, arg_1.e.x, true, arg_3.e.x))), false)), arg_1.a, vec4<bool>(all(!arg_3.e) | !any(arg_3.e), true, u_input.a == _wgslsmith_sub_u32(~u_input.d, ~u_input.d), all(!arg_1.e.wzx)));
    global1 = array<vec3<i32>, 7>();
    let var_2 = global0[_wgslsmith_index_u32(~7783u, 27u)];
    return _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d.c, ~(~(~0u))), ~vec2<u32>(reverseBits(u_input.a << (37066u % 32u)), ~abs(var_1.c.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 27>();
    global1 = array<vec3<i32>, 7>();
    global0 = array<Struct_2, 27>();
    var var_0 = -1076f;
    let var_1 = 30110u >= (_wgslsmith_mult_u32(1u, 0u) ^ func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(228f, -233f, 878f, -422f) + vec4<f32>(1000f, -713f, 1959f, -456f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(991f, -278f, -1100f, 1466f), vec4<f32>(1485f, -211f, 472f, -664f), vec4<bool>(false, true, true, false))))), global0[_wgslsmith_index_u32(~4294967295u | abs(u_input.a), 27u)], -1000f, Struct_2(func_1(Struct_1(15870i, -1678f, 26265u), vec4<bool>(false, true, false, true)), i32(-1i) * -17635i, Struct_1(44917i, 662f, 1u), Struct_1(u_input.c.x, -528f, u_input.d), vec4<bool>(true, true, true, true))));
    let var_2 = select(-_wgslsmith_div_vec4_i32(abs(vec4<i32>(-72316i, u_input.b, 12194i, u_input.c.x) << (vec4<u32>(4294967295u, u_input.d, 8949u, u_input.a) % vec4<u32>(32u))), max(~vec4<i32>(-1136i, 63445i, -1i, 29244i), vec4<i32>(44431i, u_input.b, u_input.b, u_input.c.x) ^ vec4<i32>(u_input.b, -30965i, -23077i, u_input.c.x))), vec4<i32>(u_input.c.x, 0i, u_input.b ^ _wgslsmith_add_i32(0i, -10244i), ~u_input.c.x), select(select(vec4<bool>(var_1, false, any(vec2<bool>(true, false)), false), vec4<bool>(false, false && var_1, var_1, any(vec3<bool>(true, var_1, true))), false), vec4<bool>(true, !all(vec3<bool>(false, var_1, true)), true, true), select(select(vec4<bool>(false, var_1, var_1, var_1), select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(true, false, false, false), vec4<bool>(true, var_1, false, false)), all(vec2<bool>(true, var_1))), !(!vec4<bool>(var_1, true, var_1, false)), vec4<bool>(var_1, true, true, !var_1))));
    let var_3 = true;
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1012f)) - -1289f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1516f, -915f)))), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -912f))), any(select(vec3<bool>(true, true, var_1), vec3<bool>(var_3, var_3, true), vec3<bool>(true, var_1, var_3))) & var_3)));
    var var_5 = func_1(Struct_1(_wgslsmith_add_i32(_wgslsmith_add_i32(-17042i, _wgslsmith_mod_i32(2147483647i, u_input.c.x)), -(~u_input.c.x)), _wgslsmith_f_op_f32(var_4.x + 284f), ~(u_input.a | u_input.a)), select(select(!(!vec4<bool>(true, var_1, false, true)), vec4<bool>(true, !var_1, true, all(vec2<bool>(var_1, false))), var_1), !select(vec4<bool>(false, var_3, var_1, var_3), vec4<bool>(var_3, false, var_1, var_1), vec4<bool>(var_1, false, var_1, false)), any(vec2<bool>(false, false)) & !(!var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(max(~func_3(Struct_1(-2147483647i, var_5.b, var_5.c), var_4, Struct_1(u_input.b, 527f, u_input.a), Struct_1(u_input.b, 287f, 0u)) << (4294967295u % 32u), 22384u), vec4<u32>(_wgslsmith_div_u32(var_5.c, ~0u) >> (~(~33320u) % 32u), 4294967295u, countOneBits(u_input.a), ~u_input.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.x, var_5.b, var_5.b, -330f), vec4<f32>(933f, 1301f, -1667f, var_4.x), vec4<bool>(false, true, true, var_3))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, -1346f, var_5.b, -1535f))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(-701f)), var_5.b, var_5.b, 862f)), vec4<f32>(874f, _wgslsmith_div_f32(-128f, _wgslsmith_f_op_f32(-369f - var_5.b)), _wgslsmith_div_f32(607f, var_4.x), -725f)));
}

