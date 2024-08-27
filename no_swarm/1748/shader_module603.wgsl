struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global0 = ~(-_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(1i, global0.x, -10986i), -global0.x, _wgslsmith_add_i32(u_input.b.x, 1i), -2147483647i), u_input.b));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c - arg_0.c) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, arg_0.c.x, 973f)))), _wgslsmith_f_op_vec3_f32(-arg_0.c)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    var var_0 = arg_1.b;
    let var_1 = 16237u;
    var var_2 = _wgslsmith_div_i32(global0.x << (_wgslsmith_clamp_u32(1u, var_1, 0u) % 32u), -2147483647i);
    var_2 = arg_1.a.x;
    var var_3 = arg_1.c;
    return _wgslsmith_sub_i32(abs(arg_1.a.x), global0.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    let var_0 = 1808f;
    let var_1 = Struct_4(arg_0, Struct_3(vec2<i32>(arg_3, reverseBits(arg_2.x)) | ~global0.yy, Struct_2(arg_0.wy), Struct_2(arg_0.wz)));
    let var_2 = reverseBits(_wgslsmith_add_u32(~0u, u_input.c));
    global0 = select(vec4<i32>(~41063i, _wgslsmith_mult_i32(39143i, firstLeadingBit(var_1.b.a.x)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))), Struct_3(vec2<i32>(-677i, 2147483647i), Struct_2(var_1.b.c.a), var_1.b.b), Struct_1(~u_input.c, false || arg_1.x, _wgslsmith_f_op_vec3_f32(func_3(Struct_1(u_input.c, arg_0.x, vec3<f32>(260f, var_0, -1907f), var_0))), 1f)), 0i), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, abs(-u_input.b)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.x, 41202i) | (i32(-1i) * -2147483647i), var_1.b.a.x), _wgslsmith_mod_i32(~arg_3, u_input.a) >> (17669u % 32u), _wgslsmith_add_i32(~_wgslsmith_add_i32(-2147483647i, arg_3), -24679i)), !(_wgslsmith_mult_i32(2147483647i, u_input.a) < -1i));
    global0 = u_input.b;
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_clamp_u32(var_2, u_input.c, var_2), ~min(u_input.c, u_input.c)), ~(vec2<u32>(var_2, 71605u) ^ ~vec2<u32>(0u, u_input.c)));
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> vec4<i32> {
    global0 = u_input.b;
    return ~reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -1i, i32(-1i) * -13250i, _wgslsmith_dot_vec3_i32(global0.xyz, vec3<i32>(global0.x, 1i, global0.x)), global0.x), max(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 23852i, 10270i, -2147483647i), vec4<i32>(11204i, global0.x, -12017i, u_input.b.x)), -vec4<i32>(-1i, global0.x, global0.x, -26661i))));
}

fn func_1() -> i32 {
    let var_0 = firstLeadingBit(vec4<u32>(u_input.c, 1u, ~u_input.c, ~abs(u_input.c) & u_input.c));
    global0 = func_5(vec4<bool>(true, true, true, true), _wgslsmith_mod_u32(~func_2(vec4<bool>(true, true, true, false), vec3<bool>(true, true, true), global0.yy, global0.x), _wgslsmith_mod_u32(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 32607u), var_0.yyx))), func_2(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), u_input.a >= 2147483647i), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), -20801i <= u_input.b.x), all(vec2<bool>(false, true))), !vec3<bool>(true, all(vec4<bool>(false, true, true, false)), true), max(reverseBits(-vec2<i32>(u_input.b.x, -2147483647i)), vec2<i32>(u_input.b.x, ~(-13129i))), firstTrailingBit(abs(u_input.b.x))), Struct_2(!vec2<bool>(true, all(vec3<bool>(true, false, false)))));
    var var_1 = true;
    var var_2 = ~(~u_input.c ^ (~_wgslsmith_div_u32(30873u, var_0.x) >> (1u % 32u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-974f + 455f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(920f * -1097f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-854f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1470f, -1022f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-316f)) + 1f), -166f)) + vec3<f32>(-1152f, -433f, 1669f));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(true, u_input.c == u_input.c), vec2<bool>(false, true)), vec2<bool>(true, !all(vec3<bool>(true, true, true))), true);
    global0 = vec4<i32>(func_1(), 0i, -_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, 3678i), u_input.b.x), 31906i), -24698i);
    let var_1 = Struct_3(u_input.b.zy, Struct_2(!select(select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), true), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true))), Struct_2(vec2<bool>(var_0.x, var_0.x)));
    var var_2 = Struct_4(vec4<bool>(true | (u_input.c <= 1u), _wgslsmith_f_op_f32(round(-167f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1511f), true, !all(!var_1.c.a)), Struct_3(-(~global0.zz & vec2<i32>(var_1.a.x, global0.x)), var_1.b, var_1.b));
    let var_3 = firstTrailingBit(~vec2<u32>(~(~u_input.c), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.c, 40481u), 10965u | u_input.c)));
    var_0 = select(!var_1.c.a, vec2<bool>(!(var_1.a.x >= 16866i), var_1.c.a.x), var_0.x);
    global0 = vec4<i32>(func_5(select(vec4<bool>(var_0.x, var_2.a.x, var_1.b.a.x, true), !vec4<bool>(var_2.b.c.a.x, true, var_2.a.x, true), !var_1.c.a.x), select(4294967295u, var_3.x, var_0.x), 0u, var_1.b).x, max(_wgslsmith_mod_i32(~1i, u_input.b.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b.x, 2147483647i), u_input.b.x >> (u_input.c % 32u))), -1i, ~_wgslsmith_mod_i32(56255i, var_2.b.a.x)) ^ firstTrailingBit(abs(_wgslsmith_div_vec4_i32(u_input.b, u_input.b) ^ vec4<i32>(u_input.b.x, -1i, var_1.a.x, -46664i)));
    let var_4 = 101f;
    global0 = vec4<i32>(_wgslsmith_mult_i32(-func_4(-264f, var_1, Struct_1(var_3.x, false, vec3<f32>(var_4, -351f, 1394f), 508f)), ~var_1.a.x), -1i, firstLeadingBit(min(_wgslsmith_clamp_i32(16539i, var_1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, global0.x), var_2.b.a)), -(~(-1i)))), 17205i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_4, var_4, var_4), vec3<f32>(var_4, -1027f, var_4))))), _wgslsmith_f_op_f32(-var_4));
}

