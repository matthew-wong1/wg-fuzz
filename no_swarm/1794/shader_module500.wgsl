struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-1000f, -1000f, -287f, 275f, -2408f, -1000f, -120f, -136f, 1020f, -950f, -1504f, 102f, -1259f, -521f, -2036f, -1687f, 985f, -791f, 1653f, 1000f, 1270f, -662f, -306f, 1622f, -378f, -1000f, -1642f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<i32> {
    var var_0 = ~vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 62372u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x << (u_input.a.x % 32u))), _wgslsmith_clamp_u32(76978u, 1u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 70852u, 1u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u))), _wgslsmith_mod_u32((u_input.a.x ^ u_input.a.x) | u_input.a.x, u_input.a.x));
    var_0 = _wgslsmith_sub_vec4_u32(~(~countOneBits(vec4<u32>(66989u, 1u, 0u, 35987u)) ^ ~(~vec4<u32>(0u, var_0.x, 0u, u_input.a.x))), vec4<u32>(1u, 0u & _wgslsmith_mult_u32(0u, u_input.a.x), reverseBits(reverseBits(_wgslsmith_clamp_u32(43608u, 16108u, 48153u))), 70828u ^ _wgslsmith_mult_u32(var_0.x << (var_0.x % 32u), ~u_input.a.x)));
    global0 = array<f32, 27>();
    let var_1 = Struct_1(abs((i32(-1i) * -9892i) ^ ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -26759i, 0i), vec3<i32>(40446i, -42704i, 2147483647i))));
    var_0 = firstTrailingBit(max(vec4<u32>(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(var_0.x, 1u)), u_input.a.x, u_input.a.x), vec4<u32>(abs(~13329u), ~_wgslsmith_add_u32(u_input.a.x, var_0.x), abs(~u_input.a.x), ~reverseBits(u_input.a.x))));
    return vec2<i32>(~_wgslsmith_clamp_i32(countOneBits(~var_1.a), -1i, 1i), ~firstLeadingBit(abs(29762i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: u32) -> u32 {
    let var_0 = -(~(-_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1, 9439i), vec2<i32>(arg_1, -25024i)), func_3())));
    var var_1 = Struct_4(41020i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1095f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(62572u, 27u)]))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(arg_2, 27u)], global0[_wgslsmith_index_u32(0u, 27u)])) + -203f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~23821u, 27u)]), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(43544u, 27u)])), 1699f))))));
    let var_2 = !(!any(vec3<bool>(true, true, true)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(181f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(min(1u, u_input.a.x)), 27u)]) - var_1.b));
    var var_4 = all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec2<bool>(false, var_2))), vec2<bool>(true, var_2), vec2<bool>(any(vec3<bool>(var_2, var_2, true)), -1i > var_0.x)), select(!(!vec2<bool>(true, var_2)), select(vec2<bool>(var_2, false), !vec2<bool>(var_2, var_2), !vec2<bool>(var_2, false)), var_2), select(!var_2, var_2, !var_2)));
    return _wgslsmith_div_u32(~min(~arg_2, arg_0.x), _wgslsmith_mod_u32(0u, min(select(arg_2, 4294967295u, var_2), _wgslsmith_sub_u32(46978u, 0u)) ^ _wgslsmith_div_u32(countOneBits(arg_2), ~37658u)));
}

fn func_1() -> Struct_4 {
    let var_0 = -601f;
    global0 = array<f32, 27>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~func_2(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), 2147483647i, 77245u), ~1u), 27u)], any(vec2<bool>(true, true)))) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 27u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a.x, 27u)]))))));
    let var_2 = ~u_input.a;
    var var_3 = true;
    return Struct_4(-2490i, -256f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 1051f), vec3<f32>(var_0, global0[_wgslsmith_index_u32(1036u, 27u)], -397f)) * vec3<f32>(-1076f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 243f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1765f, global0[_wgslsmith_index_u32(var_2.x, 27u)], -303f), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, global0[_wgslsmith_index_u32(43691u, 27u)], var_0), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], 418f, global0[_wgslsmith_index_u32(1u, 27u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<f32, 27>();
    var var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(reverseBits(var_0.a) >> (countOneBits(73413u) % 32u), func_1().a), 1i);
    var var_2 = !select(vec2<bool>(false, 1f < _wgslsmith_f_op_f32(exp2(var_0.c.x))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, all(vec3<bool>(true, true, true))));
    global0 = array<f32, 27>();
    let var_3 = vec4<u32>(43364u, ~firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), ~(u_input.a.x & 1u), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x, var_3.xxw, _wgslsmith_dot_vec4_i32(-select(vec4<i32>(-52864i, -10862i, 19207i, var_0.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-15306i, var_0.a, var_0.a, 8660i), vec4<i32>(21704i, var_0.a, var_0.a, -18113i)), !var_2.x), vec4<i32>(var_0.a, var_0.a, reverseBits(-13563i), _wgslsmith_add_i32(var_0.a, ~var_0.a))), 7446i);
}

