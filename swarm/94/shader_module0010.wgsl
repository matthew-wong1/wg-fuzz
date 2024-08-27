struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: array<f32, 6>;

var<private> global2: u32 = 1u;

var<private> global3: array<f32, 14> = array<f32, 14>(-816f, 1689f, 1482f, 435f, -1931f, -824f, 1074f, 1000f, 613f, 1556f, 1000f, 350f, -810f, -1508f);

var<private> global4: array<f32, 30> = array<f32, 30>(-1422f, 211f, -926f, -1439f, 286f, -845f, -648f, -1016f, 369f, 854f, 299f, -913f, -1073f, 816f, 423f, -736f, 805f, 2041f, -1051f, 601f, 724f, 126f, 1000f, 1617f, 247f, 108f, 1000f, -1202f, 493f, -852f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1063f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(403f, 963f, global1[_wgslsmith_index_u32(arg_1.b, 6u)]) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 399f, -383f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-228f, -722f, arg_1.c) - vec3<f32>(1080f, arg_1.c, var_0.a)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3[_wgslsmith_index_u32(1u, 14u)], 1000f, arg_1.c)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2056f, global4[_wgslsmith_index_u32(u_input.d, 30u)], -1994f)))), select(vec3<bool>(u_input.b.x >= -2147483647i, any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(22148u, 30u)], true)), true), !vec3<bool>(arg_1.a.a.d, arg_1.a.a.d, false), !vec3<bool>(arg_1.a.a.d, arg_1.a.a.d, true)))));
    global1 = array<f32, 6>();
    return _wgslsmith_div_vec3_u32(firstTrailingBit(select(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(28349u, arg_1.b, u_input.c.x), vec3<u32>(4294967295u, 1u, arg_1.b))), ~(vec3<u32>(u_input.c.x, u_input.d, 0u) >> (vec3<u32>(89120u, 7559u, arg_1.b) % vec3<u32>(32u))), vec3<bool>(true, select(arg_1.a.a.d, arg_1.a.a.d, arg_1.a.a.d), arg_1.a.a.d))), ~(~vec3<u32>(~arg_1.b, abs(arg_1.b), 52789u)));
}

fn func_3(arg_0: vec3<u32>) -> Struct_4 {
    var var_0 = !select(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(11955u, 30u)]))), select(vec3<bool>(true, u_input.b.x < -17740i, global0[_wgslsmith_index_u32(countOneBits(arg_0.x), 30u)]), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 30u)], true), vec3<bool>(true, true, true), !vec3<bool>(false, true, global0[_wgslsmith_index_u32(arg_0.x, 30u)])), false), true || (global4[_wgslsmith_index_u32(u_input.c.x, 30u)] > -888f));
    return Struct_4(-548f);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: Struct_4) -> f32 {
    global3 = array<f32, 14>();
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1294f, -790f))))));
    global4 = array<f32, 30>();
    global0 = array<bool, 30>();
    global1 = array<f32, 6>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~u_input.d, 6u)])));
}

fn func_1() -> Struct_4 {
    global3 = array<f32, 14>();
    global2 = ~_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, abs(4294967295u)), u_input.d) ^ max(u_input.d, 6359u);
    global0 = array<bool, 30>();
    global4 = array<f32, 30>();
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(func_4(true, func_3(func_2(u_input.a, Struct_3(Struct_2(Struct_1(vec4<i32>(u_input.b.x, 2113i, -7526i, u_input.b.x), -32506i, vec2<f32>(global4[_wgslsmith_index_u32(21093u, 30u)], -303f), false), vec3<i32>(0i, -2147483647i, u_input.a)), 4294967295u, -174f, u_input.b.x))), !select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], true, global0[_wgslsmith_index_u32(4294967295u, 30u)]), false), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1186f)))) <= global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.d, 41440u), min(vec3<u32>(u_input.d, 4294967295u, 0u), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u))), 30u)], global0[_wgslsmith_index_u32(~(~(~1u)) >> (~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.d, 0u), vec3<u32>(1u, u_input.d, u_input.d)), select(0u, u_input.d, false)) % 32u), 30u)]);
    return Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(24838u, 6u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(18060u, 6u)]))))));
}

fn func_5(arg_0: Struct_4) -> f32 {
    let var_0 = Struct_1(countOneBits(vec4<i32>(_wgslsmith_clamp_i32(select(u_input.a, u_input.a, true), max(12569i, u_input.b.x), -1i), 2147483647i, max(-23590i, u_input.a), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, u_input.b.x)), _wgslsmith_mod_vec2_i32(u_input.b, u_input.b)))), abs(reverseBits(~u_input.a)), vec2<f32>(-194f, global4[_wgslsmith_index_u32(u_input.c.x | u_input.d, 30u)]), all(vec4<bool>(!(global0[_wgslsmith_index_u32(u_input.d, 30u)] & true), all(select(vec2<bool>(true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 30u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 30u)]))), !global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(~u_input.d, 30u)])));
    global1 = array<f32, 6>();
    var var_1 = false;
    var var_2 = var_0.d;
    let var_3 = ~_wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(var_0.a.x, -1i)), u_input.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)) * -396f), 208f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1782f, -1696f, true)), func_3(vec3<u32>(u_input.c.x, u_input.d, u_input.d)).a)))) * 1272f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    var var_0 = -_wgslsmith_mod_vec4_i32(select(abs(vec4<i32>(2147483647i, -23878i, 30694i, u_input.a)) << (~vec4<u32>(u_input.c.x, u_input.d, 0u, u_input.d) % vec4<u32>(32u)), -vec4<i32>(u_input.a, -33825i, 2147483647i, 1i), !vec4<bool>(global0[_wgslsmith_index_u32(34970u, 30u)], false, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(28053u, 30u)])), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b.x, -74994i, u_input.b.x, 50879i), vec4<i32>(-1i) * -vec4<i32>(0i, -2147483647i, u_input.a, u_input.a), -vec4<i32>(u_input.b.x, 0i, u_input.b.x, -2147483647i)));
    global4 = array<f32, 30>();
    global4 = array<f32, 30>();
    let var_1 = false;
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 14u)], 756f, global3[_wgslsmith_index_u32(u_input.d, 14u)])))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(step(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1())) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(516f + global1[_wgslsmith_index_u32(9863u, 6u)]))))));
    global0 = array<bool, 30>();
    let var_4 = Struct_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 14u)], 573f, _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, 4294967295u), 30u)]))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(var_2.a, vec3<f32>(255f, -595f, -162f)))), !(-u_input.b.x > 87832i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(66434u, 27567u, u_input.c.x, 29327u) | ~vec4<u32>(u_input.c.x, 87672u, u_input.d, u_input.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(46389u, 108961u, 0u, u_input.c.x) << (vec4<u32>(u_input.c.x, u_input.d, 0u, 36060u) % vec4<u32>(32u)), vec4<u32>(u_input.d, u_input.d, u_input.c.x, u_input.c.x))), ~abs(vec4<u32>(u_input.c.x, 12120u, 0u, 69295u))), _wgslsmith_add_i32(~(2147483647i << (u_input.d % 32u)), var_0.x << (_wgslsmith_div_u32(48827u, 1u) % 32u)) << (abs(u_input.c.x) % 32u), 25162u);
}

