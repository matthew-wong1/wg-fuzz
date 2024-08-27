struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: i32) -> vec3<u32> {
    var var_0 = global1.x != 74450u;
    let var_1 = 24604u;
    var var_2 = vec4<i32>(-_wgslsmith_div_i32(u_input.c.x, 2147483647i), _wgslsmith_mult_i32(-28902i, -17233i), arg_3, u_input.b.x) ^ abs(u_input.c);
    global1 = _wgslsmith_sub_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(u_input.a & u_input.a, vec3<u32>(4294967295u, var_1, 4294967295u), u_input.a)), u_input.a);
    var var_3 = 34329u;
    return abs(vec3<u32>(~(~_wgslsmith_add_u32(global1.x, 1u)), ~global1.x, _wgslsmith_mult_u32(7078u, 42654u)));
}

fn func_3() -> vec3<f32> {
    global0 = 4294967295u;
    global1 = u_input.a;
    global1 = reverseBits(abs(select(vec3<u32>(global1.x, 4294967295u ^ global1.x, global1.x), _wgslsmith_add_vec3_u32(select(vec3<u32>(4780u, 1u, u_input.a.x), vec3<u32>(0u, u_input.a.x, 4294967295u), true), vec3<u32>(85776u, global1.x, u_input.a.x)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))));
    var var_0 = func_2(3249u, vec3<bool>(true, global1.x < _wgslsmith_mod_u32(1u, 5200u), !(!any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(824f, 370f) - vec2<f32>(1000f, 1907f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1163f, 162f))))), _wgslsmith_div_i32(_wgslsmith_div_i32(~(-u_input.c.x), _wgslsmith_div_i32(2147483647i, -127i)), 1i)).x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(224f, 304f, -673f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-568f, 457f, -272f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(279f, 1423f, 568f) + vec3<f32>(-679f, -225f, -189f))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(101f)), _wgslsmith_f_op_f32(select(-1784f, -2800f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1028f)))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = arg_1;
    global1 = ~(min(vec3<u32>(~u_input.a.x, global1.x, 1u), min(u_input.a, func_2(u_input.a.x, vec3<bool>(false, false, true), vec2<f32>(arg_0, arg_0), 9431i))) ^ u_input.a);
    global1 = ~(~u_input.a);
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_0 - -295f)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-353f, -386f, -1041f), vec3<f32>(arg_0, arg_0, arg_0), true)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, -753f, -480f))) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 1000f, arg_0), vec3<f32>(-928f, arg_0, 421f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * vec3<f32>(1535f, 128f, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-578f, _wgslsmith_f_op_f32(208f - -187f)))), Struct_1(max(u_input.c.xyy, vec3<i32>(-1i, u_input.c.x, u_input.b.x))))), -_wgslsmith_sub_vec2_i32(abs(u_input.c.wx ^ vec2<i32>(44221i, u_input.b.x)), ~u_input.c.xx));
    global1 = _wgslsmith_mult_vec3_u32(~(~(func_2(1u, vec3<bool>(true, true, false), vec2<f32>(-1213f, 1660f), -17785i) | vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_mod_vec3_u32(u_input.a, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xz, global1.yx), ~3098u, 4294967295u), ~vec3<u32>(43439u, u_input.a.x, u_input.a.x))));
    let var_1 = global1.x ^ _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1.x, global1.x, abs(0u), 1u)), countOneBits(reverseBits(~vec4<u32>(global1.x, 102122u, u_input.a.x, 0u))));
    global1 = ~vec3<u32>(1u, _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 42612u, var_1, 19018u), vec4<u32>(4294967295u, var_1, 0u, 78624u)), reverseBits(u_input.a.x >> (var_1 % 32u))), 0u);
    global1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1168f)) * 231f), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)), 967f, -1193f)))));
    var var_3 = var_0;
    var var_4 = reverseBits(reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(8062i, var_0.b.x), abs(u_input.b)), -1i, ~_wgslsmith_sub_i32(-2147483647i, 1i), 1i)));
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(func_2(~4294967295u, vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(round(var_2.yz)), 1i).x, 29650u, global1.x, 55887u), vec4<u32>(~(~8861u), func_2(~4294967295u, vec3<bool>(true, false, true), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.x, -1009f))), firstTrailingBit(var_4.x)).x, _wgslsmith_clamp_u32(~35641u, u_input.a.x, ~global1.x), _wgslsmith_mult_u32(u_input.a.x, abs(66827u))), vec4<u32>(_wgslsmith_mult_u32(4294967295u, firstLeadingBit(var_1)), 4294967295u, countOneBits(_wgslsmith_div_u32(u_input.a.x, 4294967295u)), func_2(58700u & u_input.a.x, vec3<bool>(true, false, true), _wgslsmith_f_op_vec2_f32(round(var_0.a.xz)), firstTrailingBit(0i)).x)), _wgslsmith_f_op_vec3_f32(func_3()), vec3<i32>(u_input.b.x, -_wgslsmith_dot_vec3_i32(firstTrailingBit(var_4.xwz), var_4.wwy | vec3<i32>(var_5.b.x, 1i, var_0.b.x)), var_3.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -2051f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, 1039f), vec2<f32>(var_0.a.x, var_5.a.x))), vec2<f32>(var_5.a.x, _wgslsmith_f_op_f32(f32(-1f) * -287f)), vec2<bool>(true, true)))), ~1u);
}

