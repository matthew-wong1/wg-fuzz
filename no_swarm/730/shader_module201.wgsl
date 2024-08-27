struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(2147483647i, 70773i), vec2<i32>(3476i, 2147483647i), vec2<i32>(11215i, 2147483647i), vec2<i32>(23418i, 0i), vec2<i32>(0i, 51381i), vec2<i32>(-26632i, 39576i), vec2<i32>(61268i, -44036i), vec2<i32>(6132i, 0i), vec2<i32>(-26i, 7957i), vec2<i32>(i32(-2147483648), -50112i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), -19920i), vec2<i32>(-5507i, 30912i), vec2<i32>(64806i, i32(-2147483648)), vec2<i32>(-52972i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 13389i), vec2<i32>(-10755i, 0i), vec2<i32>(-41199i, -1i), vec2<i32>(-21142i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(25809i, 20723i), vec2<i32>(-1i, 1i), vec2<i32>(-5672i, i32(-2147483648)), vec2<i32>(-34840i, 1i), vec2<i32>(-12330i, -1i), vec2<i32>(51734i, 23799i), vec2<i32>(16225i, 23229i), vec2<i32>(1i, 0i), vec2<i32>(-38427i, i32(-2147483648)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global1 = array<vec2<i32>, 30>();
    return ~(~(u_input.b.x ^ 22690u)) << (~_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(27071u, 1u, 13298u, 53671u))), ~vec4<u32>(1u, u_input.a, 4294967295u, 40876u)) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> f32 {
    global1 = array<vec2<i32>, 30>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, 1763f, -1734f)) - vec3<f32>(674f, -1360f, 1145f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-306f, -735f, global0.x), arg_3.a)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a.x, 1148f, 2061f), vec3<f32>(642f, global0.x, arg_3.a.x))))))), vec2<bool>(!(true || arg_3.b.x), true), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1465f) + arg_3.c.x), global0.x), arg_3.c)), vec4<u32>(~arg_0.d.x, 91249u, _wgslsmith_div_u32(41649u, arg_3.d.x | 0u), _wgslsmith_add_u32(u_input.b.x, countOneBits(111870u))), ~(~_wgslsmith_add_u32(163007u, arg_0.d.x) & _wgslsmith_add_u32(~69089u, func_3())));
    var var_1 = var_0;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(max(var_1.c.x, _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(977f, 963f))))));
    var var_2 = _wgslsmith_div_vec2_i32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(31726u << (var_1.e % 32u), 0u << (arg_3.d.x % 32u)), 30u)], global1[_wgslsmith_index_u32(reverseBits(abs(4294967295u)), 30u)]);
    return -812f;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(2933f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.a.x))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(max(1647f, _wgslsmith_f_op_f32(arg_3 * arg_2.c.x))))));
    var var_2 = -1i;
    var var_3 = arg_2;
    let var_4 = Struct_1(var_3.a, vec2<bool>(true, !var_3.b.x), vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1146f)), vec4<u32>(85434u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.e, var_3.e, 72275u, var_3.e), var_3.d), vec4<u32>(0u, 1u, arg_1, 42908u) ^ u_input.b), 26880u), ~var_0.e, ~(~arg_1) ^ u_input.a), arg_1);
    return Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(var_3.a.x)), var_4.a.x, _wgslsmith_f_op_f32(-arg_3)) * _wgslsmith_f_op_vec3_f32(ceil(var_3.a))))), !select(!select(vec2<bool>(var_0.b.x, true), var_3.b, vec2<bool>(arg_0, true)), select(!var_3.b, !vec2<bool>(var_3.b.x, arg_0), true), true), vec2<f32>(var_4.a.x, _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(u_input.b, var_0.d), vec4<u32>(max(var_0.e, 1u), 33202u, 9105u, _wgslsmith_dot_vec4_u32(vec4<u32>(44546u, 4294967295u, arg_2.d.x, 1u), vec4<u32>(var_4.d.x, 4294967295u, 24244u, var_0.e)))), vec4<u32>(1u, u_input.a, ~(~0u), ~select(var_0.e, 36939u, true))), 0u);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1402f + -1285f), 1972f)))), global0.x)));
    let var_0 = _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(57683u, 30u)], -global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(57140u, 3188u), vec2<u32>(4294967295u, 60313u)), 1u)), 30u)]);
    global0 = _wgslsmith_f_op_vec2_f32(-arg_1.a.yy);
    global1 = array<vec2<i32>, 30>();
    let var_1 = func_4(func_4(true, arg_0.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-591f, global0.x, global0.x)))), vec2<bool>(func_4(true, u_input.a, arg_1, arg_1.c.x).b.x, true), func_4(!arg_1.b.x, u_input.a, arg_1, _wgslsmith_f_op_f32(221f * global0.x)).a.yz, countOneBits(vec4<u32>(arg_1.d.x, arg_0.x, 4294967295u, 102929u)), ~0u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(arg_1.c.x + 762f))).b.x, ~u_input.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1066f, arg_1.c.x)))), arg_1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(-global0.x))), vec4<u32>(1u, 4294967295u, func_4(false, 44156u, arg_1, 1294f).e ^ _wgslsmith_mod_u32(1u, 47473u), 18495u), arg_0.x), _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(trunc(arg_1.c.x))));
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> vec4<u32> {
    let var_0 = func_5(reverseBits(vec3<u32>(countOneBits(63208u), _wgslsmith_sub_u32(u_input.a << (u_input.a % 32u), u_input.a), ~u_input.b.x)), func_4(arg_0, _wgslsmith_sub_u32(~52897u, 1u), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(889f, 401f, 1000f) + vec3<f32>(global0.x, global0.x, 263f)), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0), vec2<bool>(true, true)), vec2<f32>(_wgslsmith_f_op_f32(min(-921f, 288f)), _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(-136f, -1020f, global0.x), vec2<bool>(arg_0, arg_0), vec2<f32>(global0.x, -1000f), u_input.b, 860u), vec4<bool>(true, false, true, true), -28524i, Struct_1(vec3<f32>(1764f, -666f, global0.x), vec2<bool>(arg_0, arg_0), vec2<f32>(636f, global0.x), u_input.b, u_input.b.x)))), (u_input.b ^ vec4<u32>(u_input.a, 42592u, u_input.b.x, 1u)) << (vec4<u32>(u_input.a, 1u, u_input.a, u_input.b.x) % vec4<u32>(32u)), u_input.b.x), _wgslsmith_f_op_f32(328f * _wgslsmith_f_op_f32(-global0.x))));
    return _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(15956u, u_input.a), u_input.b.xz), 23179u, var_0.d.x), ~(~58671u), ~(~(~var_0.d.x)), func_4(true, 1u, func_5(_wgslsmith_add_vec3_u32(var_0.d.xzy, u_input.b.zww), var_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x * 924f)))).d.x), vec4<u32>(1u, u_input.b.x, 5582u, 4294967295u & ~_wgslsmith_sub_u32(var_0.e, var_0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 30>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1f * global0.x), global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1422f, global0.x)), global0.x))), !vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), !(-1000f > global0.x)), vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_div_f32(-931f, 451f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))))), vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 30633u), abs(u_input.a), 64250u, _wgslsmith_dot_vec4_u32(~func_1(false, vec3<i32>(-1i, -1i, 49979i)), _wgslsmith_add_vec4_u32(vec4<u32>(67817u, u_input.b.x, u_input.b.x, u_input.a), firstLeadingBit(vec4<u32>(52906u, u_input.a, 14923u, 4294967295u))))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a & u_input.a, _wgslsmith_mult_u32(select(u_input.a, 4294967295u, true), abs(0u)), 74004u), u_input.b.zxx));
    global1 = array<vec2<i32>, 30>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1092f + func_4(false == var_0.b.x, var_0.e, func_5(var_0.d.wzx, var_0), 1f).a.x)));
    global1 = array<vec2<i32>, 30>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * func_4(var_0.b.x, 1u, var_0, global0.x).c.x)))), _wgslsmith_div_f32(var_0.c.x, global0.x));
    var var_1 = !(global0.x > _wgslsmith_f_op_f32(exp2(global0.x)));
    var var_2 = func_4(var_0.b.x, var_0.d.x, var_0, global0.x);
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-605f, -996f)), var_2.a.x, !any(vec3<bool>(true, var_2.b.x, false)))), max(-(~68933i), 1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x * 298f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c.x, var_2.a.x, false)) * -950f))), vec4<i32>(0i, 0i, -12981i, 1i));
}

