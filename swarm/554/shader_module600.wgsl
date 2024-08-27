struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1053f) + _wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(min(global0.e, global0.e)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.c.x))))))));
    var_0 = global0.c.x;
    let var_1 = Struct_1(select(true, arg_0.x, !(!any(vec4<bool>(global0.a, true, arg_0.x, arg_0.x)))), 2105f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, -1000f, _wgslsmith_f_op_f32(round(-476f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-635f, 608f, global0.e), _wgslsmith_f_op_vec3_f32(global0.c * global0.c), vec3<bool>(global0.a, arg_0.x, false))))), _wgslsmith_mod_i32(i32(-1i) * -16633i, 37103i), _wgslsmith_f_op_f32(-global0.e));
    let var_2 = Struct_1(false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.c.x), var_1.e, -613i >= ~(-var_1.d))), vec3<f32>(var_1.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.c.x)))))), var_1.e), 24243i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(908f + global0.b) + 992f));
    let var_3 = global0.c;
    return var_2.a;
}

fn func_2() -> bool {
    var var_0 = true;
    var_0 = all(!vec2<bool>(_wgslsmith_f_op_f32(min(1000f, global0.e)) <= _wgslsmith_f_op_f32(max(global0.b, 254f)), true));
    let var_1 = 329f;
    var_0 = global0.a;
    var var_2 = 31894i;
    return true || (func_3(!select(vec2<bool>(false, true), vec2<bool>(global0.a, global0.a), global0.a)) && all(select(vec3<bool>(global0.a, true, false), select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(false, true, global0.a), false), !vec3<bool>(global0.a, false, global0.a))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = arg_1;
    global0 = arg_2;
    var var_0 = any(select(vec4<bool>(true, func_2(), true, !func_3(vec2<bool>(true, arg_2.a))), vec4<bool>(false, func_3(vec2<bool>(arg_2.a, false)) | any(vec4<bool>(arg_1.a, arg_0, false, false)), arg_2.a, ~1u <= ~u_input.a.x), (_wgslsmith_mod_i32(global0.d, u_input.c.x) >= -12026i) || !arg_1.a));
    var var_1 = !(!all(!vec3<bool>(arg_1.a, true, true))) && (~33941u > (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, 23199u, 0u), max(4294967295u, u_input.a.x)) & ~_wgslsmith_mod_u32(1u, u_input.a.x)));
    var_0 = true;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.a, Struct_1(select(global0.a, true, true), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, _wgslsmith_f_op_f32(-global0.c.x), global0.e)), -u_input.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1837f - _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f), -344f)))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), abs(vec4<u32>(u_input.a.x, 1u, 27327u, u_input.a.x))) >= ~85722u, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-122f, global0.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c) - vec3<f32>(-400f, 1499f, global0.b))), 8466i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b, global0.e)))))));
    let var_0 = Struct_1(!any(select(vec3<bool>(global0.a, true, global0.a), select(vec3<bool>(true, false, global0.a), vec3<bool>(global0.a, global0.a, true), false), vec3<bool>(false, global0.a, global0.a))), global0.e, global0.c, ~abs(_wgslsmith_add_i32(-2147483647i | global0.d, global0.d)), global0.c.x);
    global0 = func_1(global0.a, var_0, var_0);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + global0.c.x))))), -1000f)) + func_1(var_0.a, func_1(global0.a, Struct_1(true, -1000f, vec3<f32>(1026f, 439f, -1457f), 2147483647i, _wgslsmith_f_op_f32(min(global0.c.x, -2078f))), func_1(true, Struct_1(false, var_0.e, vec3<f32>(var_0.e, 1131f, -215f), 2147483647i, 777f), Struct_1(true, -475f, var_0.c, -5176i, 447f))), func_1(!(var_0.c.x != -762f), Struct_1(true, _wgslsmith_f_op_f32(min(global0.e, global0.c.x)), var_0.c, u_input.b, 1000f), Struct_1(global0.a, -719f, _wgslsmith_f_op_vec3_f32(var_0.c * vec3<f32>(-1447f, 288f, var_0.e)), u_input.c.x, _wgslsmith_f_op_f32(1652f + -1093f)))).e);
    global0 = Struct_1(false, _wgslsmith_f_op_f32(exp2(global0.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.c)))), reverseBits(global0.d), _wgslsmith_f_op_f32(max(-1401f, _wgslsmith_f_op_f32(-global0.c.x))));
    let var_2 = vec3<i32>(min(i32(-1i) * -12405i, 2147483647i), ~(-global0.d), 33218i);
    let var_3 = var_0;
    var var_4 = Struct_1(true, -1228f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-970f, var_1, 1946f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.x, var_0.c.x, 1676f) + vec3<f32>(var_1, -1054f, -972f))))), -37400i, var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(83278u, firstLeadingBit(u_input.a.x)) & vec2<u32>(min(14521u, 1u), ~29443u), countOneBits(~_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(1u, u_input.a.x))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(var_4.a, var_0.a), vec2<bool>(false, var_3.a)), vec2<bool>(true, var_3.a))), select(_wgslsmith_mod_vec2_i32((vec2<i32>(global0.d, u_input.b) | var_2.zz) | vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.d, 58432i), vec2<i32>(var_2.x, -12929i)), -vec2<i32>(var_4.d, var_4.d), vec2<i32>(0i, 20521i))), select(vec2<i32>(~1i, _wgslsmith_dot_vec3_i32(var_2, vec3<i32>(var_3.d, 5929i, -26281i))), u_input.c.yz, vec2<bool>(false, -955f <= var_0.c.x)), var_0.a), ~u_input.a, 0i, abs(u_input.a));
}

