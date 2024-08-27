struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(34545u, 45408u, 0u), vec3<u32>(78504u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 95105u, 1011u), vec3<u32>(0u, 17051u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 18244u, 48274u), vec3<u32>(12743u, 35745u, 1u), vec3<u32>(14860u, 754u, 13791u), vec3<u32>(28073u, 72997u, 34714u), vec3<u32>(19849u, 0u, 26554u), vec3<u32>(1u, 71768u, 4294967295u), vec3<u32>(64767u, 4294967295u, 15150u), vec3<u32>(27415u, 0u, 22571u), vec3<u32>(0u, 27565u, 1u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 33618u, 4294967295u), vec3<u32>(64707u, 65745u, 0u), vec3<u32>(1u, 10208u, 1u), vec3<u32>(18752u, 1138u, 0u), vec3<u32>(22376u, 4294967295u, 1u), vec3<u32>(1u, 0u, 46662u), vec3<u32>(52720u, 19325u, 4294967295u), vec3<u32>(28513u, 4294967295u, 22310u), vec3<u32>(1763u, 4294967295u, 66210u), vec3<u32>(1u, 35782u, 9470u), vec3<u32>(0u, 3539u, 4294967295u), vec3<u32>(0u, 43766u, 44199u), vec3<u32>(56004u, 0u, 0u), vec3<u32>(24259u, 7526u, 59185u), vec3<u32>(1u, 75185u, 2912u));

var<private> global1: array<bool, 27> = array<bool, 27>(true, false, true, false, true, false, false, true, false, true, false, true, true, true, true, true, false, true, true, true, true, true, true, false, true, false, true);

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.d, 27u)];
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d >> (_wgslsmith_mult_u32(firstTrailingBit(u_input.e), u_input.e) % 32u), u_input.d, firstLeadingBit(_wgslsmith_clamp_u32(~1u, u_input.e, 9464u)), u_input.e), countOneBits(~(~vec4<u32>(1u, 106222u, 11660u, u_input.d))), ~select(vec4<u32>(u_input.e, u_input.d, 50864u, u_input.d) | _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.d, 1u, u_input.e), vec4<u32>(u_input.d, 30048u, 1u, u_input.d), vec4<u32>(1u, 4294967295u, 0u, 88877u)), vec4<u32>(~4294967295u, 34682u, abs(u_input.d), ~105462u), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 27u)], false, global1[_wgslsmith_index_u32(u_input.d, 27u)]))));
    let var_2 = _wgslsmith_f_op_f32(-119f + _wgslsmith_f_op_f32(sign(-705f)));
    var var_3 = vec3<i32>(~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(13965i, arg_1.b, 2147483647i), vec3<i32>(arg_1.b, arg_1.b, arg_0.b), vec3<i32>(arg_1.b, arg_1.b, arg_1.b)), ~vec3<i32>(1i, 30019i, u_input.a)), -14229i, -arg_0.b) ^ countOneBits(-(~firstLeadingBit(vec3<i32>(0i, u_input.c, 398i))));
    global0 = array<vec3<u32>, 31>();
    return 45705u;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global2 = array<Struct_1, 14>();
    global0 = array<vec3<u32>, 31>();
    global2 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_dot_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, u_input.e, 52914u), global0[_wgslsmith_index_u32(u_input.d, 31u)])) & ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e, u_input.d) << (func_3(Struct_1(vec4<f32>(2280f, -1823f, -320f, 1335f), 0i, vec4<f32>(413f, -986f, 1144f, 492f)), global2[_wgslsmith_index_u32(4151u, 14u)]) % 32u), 31u)], _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(10594u, 1u, u_input.d), ~global0[_wgslsmith_index_u32(0u, 31u)]), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, u_input.e), _wgslsmith_sub_vec2_u32(vec2<u32>(32600u, u_input.d), vec2<u32>(u_input.e, u_input.e))), 1u)));
    var var_1 = vec3<i32>(abs(0i), -1i, reverseBits(~countOneBits(u_input.c & 1i)));
    return 23768u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, ~func_2(-reverseBits(vec2<i32>(-7924i, u_input.b.x)))), 14u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(429f, -607f, arg_1.c.x, -1533f), vec4<f32>(arg_0.c.x, -547f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.c.x)) * _wgslsmith_f_op_f32(arg_0.a.x * 989f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -789f), arg_1.a.x)), !(var_0.a.x > var_0.c.x))), ~2147483647i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a - var_0.c), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-803f, arg_1.c.x, global1[_wgslsmith_index_u32(12989u, 27u)])), _wgslsmith_f_op_f32(sign(arg_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1297f) - _wgslsmith_f_op_f32(f32(-1f) * -339f)), -518f, _wgslsmith_f_op_f32(sign(var_0.c.x)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(var_0.a)), arg_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, 806f, arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-604f))))));
    global1 = array<bool, 27>();
    let var_3 = arg_0;
    return firstLeadingBit(_wgslsmith_mod_u32(u_input.e, u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_sub_i32(-17289i, max(-(-14346i ^ u_input.a), -_wgslsmith_div_i32(59499i, 2147483647i))) >> (u_input.e % 32u);
    global0 = array<vec3<u32>, 31>();
    var_0 = ~_wgslsmith_mod_i32(((i32(-1i) * -5728i) >> (func_1(Struct_1(vec4<f32>(-749f, -646f, -630f, -1363f), -2147483647i, vec4<f32>(372f, -1358f, 947f, -216f)), global2[_wgslsmith_index_u32(u_input.d, 14u)]) % 32u)) ^ u_input.a, ~(~u_input.c));
    let var_1 = select(select(select(select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 27u)]), vec2<bool>(false, true), true), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(u_input.d, 27u)]), vec2<bool>(false, false)), vec2<bool>(false, any(vec3<bool>(true, true, global1[_wgslsmith_index_u32(17345u, 27u)]))), select(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 27u)], true), !vec2<bool>(global1[_wgslsmith_index_u32(13428u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]), true)), vec2<bool>(all(!vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(u_input.e, 27u)], global1[_wgslsmith_index_u32(u_input.e, 27u)])), all(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(33621u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)]))), true), !vec2<bool>(false, all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 27u)], false, global1[_wgslsmith_index_u32(u_input.e, 27u)], global1[_wgslsmith_index_u32(15480u, 27u)]))), true || !global1[_wgslsmith_index_u32(~0u, 27u)]);
    global0 = array<vec3<u32>, 31>();
    global1 = array<bool, 27>();
    global0 = array<vec3<u32>, 31>();
    var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(~(~39495i), -53786i), min(u_input.b.x, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(-447f, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2246f, 862f, u_input.a >= -9773i)))));
}

