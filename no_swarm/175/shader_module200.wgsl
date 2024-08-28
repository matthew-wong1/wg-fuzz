struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: i32,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(2679f, -1000f, -907f, 813f, -678f, -355f, -647f, 1000f, -1000f, 341f, -104f, -887f, 1368f, 120f, 1212f, 431f, 101f, 469f, -231f, 516f, 1392f, 1356f, -1002f, -333f, -883f, -842f, -732f, 1000f, -897f, -763f, 2474f);

var<private> global1: array<u32, 12> = array<u32, 12>(71264u, 27385u, 29657u, 0u, 0u, 4294967295u, 47566u, 0u, 4294967295u, 0u, 28640u, 4294967295u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(7508i & var_0, _wgslsmith_add_i32(1i, var_0) << (_wgslsmith_sub_u32(20581u, u_input.d) % 32u)), vec2<i32>(var_0 | ~arg_0.c, arg_0.c)), ~vec2<i32>(-51294i, -23317i));
    let var_2 = arg_0;
    var var_3 = false;
    var_1 = vec2<i32>(var_1.x, -u_input.b);
    return arg_0.b.a.ywz;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_4) -> u32 {
    var var_0 = Struct_1(19323u, arg_0, vec3<f32>(-1000f, 142f, _wgslsmith_f_op_f32(trunc(arg_1.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-817f, arg_1.x, 1000f, -1031f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(203f, 956f, arg_1.x, var_0.b) - vec4<f32>(-2242f, arg_1.x, arg_0, var_0.b)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, -1634f, var_0.c.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 31u)]), vec4<f32>(125f, 432f, -905f, -1000f), true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, arg_1.x, 417f, var_0.c.x), _wgslsmith_f_op_vec4_f32(exp2(arg_1))))));
    let var_2 = Struct_3(arg_3.b.a);
    let var_3 = 46305u;
    return global1[_wgslsmith_index_u32(1u, 12u)];
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> bool {
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_0 = min(~countOneBits(arg_1), ~abs(vec4<u32>(global1[_wgslsmith_index_u32(1u, 12u)] ^ arg_1.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 39347u), 12u)], u_input.a, 33682u)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 31u)], 891f)) - vec2<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8123u, 12u)], 31u)], global0[_wgslsmith_index_u32(1u, 31u)]))))), Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u >> (var_0.x % 32u), 20421u), 1u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 12u)], 19547u), 31u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-448f, global0[_wgslsmith_index_u32(u_input.d, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]))), vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69939u, 12u)], 31u)] * global0[_wgslsmith_index_u32(27563u, 31u)]), _wgslsmith_f_op_f32(-917f * global0[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_f32(976f + global0[_wgslsmith_index_u32(845u, 31u)])))), abs(min(vec4<i32>(arg_0, _wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(arg_0, 1i)), ~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), u_input.c.zz)), -vec4<i32>(-2147483647i, -19942i, -1i, arg_0))), vec2<i32>(~u_input.b, u_input.b), abs(arg_1));
    var_0 = arg_1;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(u_input.b > abs(u_input.b), true, 4294967295u == u_input.d));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(349u, u_input.d, _wgslsmith_mult_u32(25062u, global1[_wgslsmith_index_u32(u_input.a, 12u)])), 31u)]) != global0[_wgslsmith_index_u32(33922u, 31u)], Struct_3(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, 2031u > _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(81551u, 12u)]))), -_wgslsmith_mod_i32(1i, ~u_input.b), u_input.b);
    let var_2 = firstLeadingBit(~reverseBits(_wgslsmith_mult_vec2_i32(~vec2<i32>(var_1.c, -20230i), u_input.c.yy)));
    var_0 = var_1.a;
    var_0 = !func_3(max(min(var_2.x, -52860i), 0i), vec4<u32>(select(u_input.d, global1[_wgslsmith_index_u32(4294967295u, 12u)] & global1[_wgslsmith_index_u32(2529u, 12u)], var_1.a), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(17300u, ~16168u, reverseBits(4294967295u)), 12u)], func_2(_wgslsmith_f_op_f32(max(2283f, global0[_wgslsmith_index_u32(23784u, 31u)])), vec4<f32>(-1353f, 120f, global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 31u)]), func_1(var_1), Struct_4(true, Struct_3(var_1.b.a), u_input.b, u_input.b)), ~(~0u)));
    var var_3 = 25070u;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~reverseBits(1u))), ~(~(~abs(vec2<u32>(u_input.d, 76553u)))), -vec4<i32>(u_input.b, 26645i, -u_input.b, var_1.c), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(29861u, 12u)], 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(107804u, 12u)], 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], 12u)])), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 20972u), vec2<u32>(global1[_wgslsmith_index_u32(21860u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]))), reverseBits(abs(vec2<u32>(863u, u_input.d)))), ~(min(0u, 4996u) ^ global1[_wgslsmith_index_u32(1u, 12u)])), 12826i);
}

