struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: vec2<f32> = vec2<f32>(438f, -1319f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> u32 {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(max(36878i, u_input.d) << (~u_input.b % 32u), ~abs(14585i)) ^ 2147483647i, ~(-(_wgslsmith_sub_i32(-79332i, u_input.c.x) | -10355i)));
    global1 = vec2<f32>(global1.x, arg_0.a.x);
    global0 = array<bool, 6>();
    var var_1 = !(arg_1.a.x >= -1561f);
    var var_2 = vec4<i32>(-var_0.x, -5756i, -12934i, firstLeadingBit(~_wgslsmith_add_i32(u_input.d, u_input.d)) >> (u_input.b % 32u));
    return 58123u;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: u32) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2002f + global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), -1139f, _wgslsmith_f_op_f32(global1.x - global1.x)), global1.x);
    global1 = var_0.a.a.yx;
    return var_0.a.a.yx;
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(991f, arg_1, global1.x, 710f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -159f, 839f, -660f) + vec4<f32>(697f, global1.x, 524f, arg_1))) - vec4<f32>(291f, -705f, _wgslsmith_div_f32(global1.x, 948f), -1173f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 1374f, 1985f, arg_1), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, arg_1, arg_1, 485f))))), vec4<f32>(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(308f, global1.x)) + 670f), -145f, _wgslsmith_f_op_f32(-883f + _wgslsmith_f_op_f32(-global1.x))))), -367f);
    var var_1 = Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(1465f)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(sign(-201f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-814f, global1.x, global1.x, var_0.c))) * vec4<f32>(-126f, _wgslsmith_f_op_f32(-global1.x), -680f, _wgslsmith_f_op_f32(max(var_0.c, var_0.c))))), 1023f);
    global0 = array<bool, 6>();
    let var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -930f), _wgslsmith_f_op_f32(sign(var_0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 6u)], false, u_input.b)).x), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(floor(1041f)))))), vec4<f32>(_wgslsmith_f_op_f32(var_1.c * -1276f), 1283f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1056f - -292f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, var_1.c)) + _wgslsmith_f_op_f32(trunc(arg_1))))), _wgslsmith_f_op_f32(abs(1857f)));
    let var_3 = ~firstLeadingBit(firstLeadingBit(~vec3<u32>(38758u, 33939u, 16291u)));
    return all(vec2<bool>(false, ~select(2147483647i, -40080i, global0[_wgslsmith_index_u32(46454u, 6u)]) < u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_sub_u32(func_1(Struct_1(vec4<f32>(-977f, -150f, global1.x, global1.x)), Struct_1(vec4<f32>(-353f, -594f, -857f, -611f)), Struct_2(Struct_1(vec4<f32>(1198f, global1.x, -1717f, -1300f)), vec4<f32>(-1489f, 640f, global1.x, global1.x), global1.x), vec2<u32>(u_input.b, 0u)), u_input.b), true, false, max(26489u & u_input.b, ~1u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(436f, _wgslsmith_f_op_f32(round(-853f))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-246f + global1.x) * global1.x), _wgslsmith_f_op_f32(118f - _wgslsmith_f_op_f32(-1422f * 866f)))), !all(vec4<bool>(!global0[_wgslsmith_index_u32(u_input.b, 6u)], true || global0[_wgslsmith_index_u32(0u, 6u)], true, true))));
    var var_0 = !vec4<bool>(any(!(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(14961u, 6u)], global0[_wgslsmith_index_u32(18565u, 6u)], true))), !func_3(_wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(u_input.d, u_input.a)), _wgslsmith_f_op_f32(126f + global1.x)), global0[_wgslsmith_index_u32(u_input.b >> ((1u >> (_wgslsmith_sub_u32(1u, u_input.b) % 32u)) % 32u), 6u)], global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(85158u, u_input.b), vec2<u32>(u_input.b, u_input.b)), 8271u)), 6u)]);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -906f))));
    var var_2 = 37675i & u_input.c.x;
    var_0 = !(!select(!select(vec4<bool>(global0[_wgslsmith_index_u32(32046u, 6u)], false, global0[_wgslsmith_index_u32(14949u, 6u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 6u)], false, global0[_wgslsmith_index_u32(u_input.b, 6u)], false), global0[_wgslsmith_index_u32(u_input.b, 6u)]), !select(vec4<bool>(var_0.x, true, global0[_wgslsmith_index_u32(17425u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(u_input.b, 6u)])), !vec4<bool>(false, var_0.x, var_0.x, true)));
    let var_3 = _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(651f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))) + 1854f)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, max(~reverseBits(vec4<u32>(61212u, 1u, u_input.b, 114595u)), reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 93223u, 2197u), vec4<u32>(u_input.b, u_input.b, u_input.b, 75401u) ^ vec4<u32>(u_input.b, 0u, 1u, u_input.b)))));
}

