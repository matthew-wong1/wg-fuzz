struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20>;

var<private> global1: array<i32, 18> = array<i32, 18>(2147483647i, i32(-2147483648), i32(-2147483648), 0i, i32(-2147483648), -221i, 0i, -9682i, -40846i, -67046i, -4073i, 28796i, i32(-2147483648), -12887i, 38026i, -23605i, 2147483647i, -1i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = Struct_5(any(vec2<bool>(!arg_1 || arg_1, true)), Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), global1[_wgslsmith_index_u32(4294967295u, 18u)], max(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(0u, 27964u, 0u))), ~(~vec4<u32>(0u, 48035u, 1u, 4294967295u)), vec4<u32>(abs(4294967295u), 1u, ~4294967295u, countOneBits(104417u))), Struct_2(max(countOneBits(vec4<u32>(1u, 115550u, 33279u, 4294967295u)), vec4<u32>(65442u, 16380u, 0u, 1u)), _wgslsmith_f_op_f32(-arg_0))));
    let var_1 = 4294967295u;
    global1 = array<i32, 18>();
    global1 = array<i32, 18>();
    global0 = array<vec2<i32>, 20>();
    return _wgslsmith_div_f32(-402f, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(sign(-640f))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = true;
    let var_1 = var_0;
    global0 = array<vec2<i32>, 20>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_3(-912f, true)), 1i, max(abs(vec3<u32>(min(arg_1.b.a.x, 28994u), 11429u, arg_1.a.d.x)), reverseBits(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.a.x, 29596u, 1u), vec3<u32>(11047u, 5627u, arg_1.a.e.x))))), _wgslsmith_div_vec4_u32(select(arg_2.a, arg_2.a, var_0), ~min(countOneBits(vec4<u32>(arg_1.b.a.x, arg_2.a.x, 0u, 5835u)), countOneBits(vec4<u32>(arg_2.a.x, arg_1.b.a.x, 7539u, 41774u)))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(30636u), ~1u, ~arg_0.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(8193u, arg_1.b.a.x, 0u, 0u), arg_2.a)), vec4<u32>(74606u, _wgslsmith_add_u32(arg_1.a.e.x, arg_0.a.a.x), 1u, 1u)), 23876u >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(22178u, 24707u), vec2<u32>(21115u, arg_1.a.d.x)) << (arg_1.a.d.x % 32u)) % 32u), 32077u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 67364u, arg_1.a.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.a.x, 8534u, arg_0.a.a.x), abs(arg_1.a.e.xyy)))));
    let var_3 = arg_2;
    return countOneBits(select(_wgslsmith_div_vec3_i32(-(vec3<i32>(u_input.a, arg_1.a.b, -22279i) >> (arg_2.a.xxz % vec3<u32>(32u))), vec3<i32>(_wgslsmith_clamp_i32(-3394i, arg_1.a.b, 4591i), u_input.a, -1i)), vec3<i32>(18140i, _wgslsmith_add_i32(-1i, global1[_wgslsmith_index_u32(1u, 18u)]), global1[_wgslsmith_index_u32(~arg_2.a.x & var_2.d.x, 18u)]), !(!(!vec3<bool>(arg_0.b.x, arg_0.b.x, true)))));
}

fn func_1() -> f32 {
    var var_0 = ~firstLeadingBit(func_2(Struct_4(Struct_2(vec4<u32>(0u, 3347u, 1u, 21163u), -157f), vec3<bool>(false, false, true), -283f), Struct_3(Struct_1(-1000f, global1[_wgslsmith_index_u32(20125u, 18u)], vec3<u32>(0u, 68648u, 17197u), vec4<u32>(64682u, 29351u, 27790u, 87867u), vec4<u32>(4294967295u, 0u, 0u, 0u)), Struct_2(vec4<u32>(0u, 1u, 58837u, 36460u), -1438f)), Struct_2(vec4<u32>(4294967295u, 60678u, 52561u, 0u), 1601f))) | _wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, u_input.a, global1[_wgslsmith_index_u32(1u, 18u)]) ^ countOneBits(vec3<i32>(6275i, u_input.a, 6057i) | vec3<i32>(-1i, 0i, global1[_wgslsmith_index_u32(0u, 18u)])), _wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(914u, 18u)], -1i), vec3<i32>(0i, -23687i, global1[_wgslsmith_index_u32(20480u, 18u)])) | abs(vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(0u, 18u)], u_input.a)));
    let var_1 = true && all(vec4<bool>(!all(vec2<bool>(true, false)), true, !all(vec3<bool>(false, true, true)), select(var_0.x, global1[_wgslsmith_index_u32(4294967295u, 18u)], false) > global1[_wgslsmith_index_u32(1u, 18u)]));
    var var_2 = Struct_1(1f, -10000i, firstTrailingBit(firstTrailingBit(~(~vec3<u32>(0u, 10881u, 18659u)))), ~vec4<u32>(abs(1u), ~1u, _wgslsmith_mod_u32(reverseBits(13770u), abs(4294967295u)), ~1u), vec4<u32>(29442u, _wgslsmith_sub_u32(~1u, firstLeadingBit(abs(0u))), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(vec4<u32>(12246u, 0u, 1u, 4294967295u)))), 1u));
    let var_3 = Struct_2(vec4<u32>(reverseBits(var_2.e.x), countOneBits(var_2.c.x), reverseBits(max(~76414u, 77663u << (var_2.c.x % 32u))), var_2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1421f, -247f))))) - _wgslsmith_f_op_f32(trunc(751f))));
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(311f, 213f, 312f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1832f, -257f, 309f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-863f, -793f, var_2.a), vec3<f32>(var_3.b, 1290f, var_3.b), var_1)))), -(~var_0.x) > var_2.b))));
    return var_4.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(658f, _wgslsmith_f_op_f32(f32(-1f) * -326f))) - arg_0.b)), arg_0.b);
    global0 = array<vec2<i32>, 20>();
    global1 = array<i32, 18>();
    global1 = array<i32, 18>();
    global0 = array<vec2<i32>, 20>();
    return vec4<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(~arg_1.d.x), 18u)] >= _wgslsmith_mod_i32(-41043i & (6277i ^ u_input.a), 1i), all(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true))), true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 20>();
    let var_0 = func_4(Struct_2(~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(func_1())), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(368f + _wgslsmith_div_f32(281f, -442f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f))), -1i, vec3<u32>(1u, 1u, 1u), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 13516u, 49080u), vec3<u32>(1u, 4294967295u, 25999u)), 8841u, ~4294967295u, _wgslsmith_mult_u32(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(0u, 17777u))), ~abs(vec4<u32>(25051u, 1u, 10713u, 1u))), ~(~(~vec3<u32>(4294967295u, 4294967295u, 11128u))), Struct_2(select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(8328u, 1u), vec2<u32>(9309u, 67506u)), ~90574u, select(43270u, 36710u, true), 1u), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(685f * -348f))));
    global0 = array<vec2<i32>, 20>();
    var var_1 = Struct_3(Struct_1(-200f, 44355i, vec3<u32>(countOneBits(~0u), max(select(1u, 0u, false), _wgslsmith_clamp_u32(20474u, 37959u, 13414u)), countOneBits(select(1u, 0u, true))), max(~(~vec4<u32>(0u, 1u, 4294967295u, 1u)), min(~vec4<u32>(12989u, 84558u, 15364u, 4294967295u), ~vec4<u32>(0u, 0u, 0u, 0u))), vec4<u32>(4294967295u, ~(~18116u), 1u, _wgslsmith_mult_u32(countOneBits(155622u), 1u))), Struct_2(vec4<u32>(~min(0u, 0u), 4294967295u, 1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 4650u), vec3<u32>(49235u, 4294967295u, 1u)), countOneBits(0u), 1u)), -1000f));
    let var_2 = var_1.b.a.x;
    let var_3 = _wgslsmith_clamp_u32(var_1.b.a.x, var_1.a.d.x, ~(~3153u));
    var_1 = Struct_3(var_1.a, var_1.b);
    global0 = array<vec2<i32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u), var_1.b.a.x | reverseBits(~1u));
}

