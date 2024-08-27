struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    let var_0 = 338f;
    let var_1 = true;
    var var_2 = Struct_1(any(vec3<bool>(var_1, true, !var_1)), select(u_input.a.x, 92275u, (u_input.c.x >> (u_input.a.x % 32u)) < _wgslsmith_clamp_i32(~1i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(2147483647i, -27073i, 0i, 1i)), ~1679i)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1220f, var_0) + vec3<f32>(-840f, var_0, var_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1530f, var_0))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(641f, var_0, 1598f)))))), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(7244u, 11865u, 27207u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), u_input.a >> (vec3<u32>(u_input.b, 30303u, u_input.a.x) % vec3<u32>(32u)))), vec3<u32>(~(u_input.b & 85024u), ~(u_input.a.x & u_input.a.x), u_input.b)), false);
    let var_3 = var_1;
    let var_4 = _wgslsmith_clamp_vec3_i32(-abs(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-35603i, u_input.c.x, -1i), u_input.c.wwy, u_input.c.zxy)), u_input.c.yzx, -select(firstTrailingBit(-u_input.c.yyx), vec3<i32>(-11623i, ~(-24498i), -1i), !any(vec2<bool>(var_1, true))));
    return select(!(!vec3<bool>(!var_2.e, !var_3, false)), !vec3<bool>(true, var_3, any(vec4<bool>(false, true, true, true))), select(vec3<bool>(false, any(!vec4<bool>(var_1, var_3, false, false)), false), select(select(vec3<bool>(true, var_1, var_2.e), select(vec3<bool>(var_3, true, true), vec3<bool>(var_1, var_3, var_2.a), var_1), var_2.e), select(vec3<bool>(true, var_3, var_1), select(vec3<bool>(var_2.a, false, var_2.a), vec3<bool>(var_1, false, true), var_3), select(vec3<bool>(var_1, var_2.a, var_2.a), vec3<bool>(var_3, var_1, var_2.a), var_2.e)), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(var_3, false, true), vec3<bool>(var_1, false, var_3), vec3<bool>(true, var_1, var_3)), !vec3<bool>(true, var_3, false))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>) -> f32 {
    var var_0 = arg_2;
    let var_1 = !all(!vec4<bool>(any(var_0.zy), true, true, all(vec3<bool>(true, arg_0.a, true))));
    let var_2 = -614f;
    var var_3 = !vec2<bool>(var_0.x, any(!select(vec4<bool>(var_0.x, arg_0.a, true, true), vec4<bool>(false, false, true, false), false)));
    var_0 = func_3();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1185f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - 490f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -959f), _wgslsmith_f_op_f32(floor(-1030f))))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = 41512u;
    return vec3<f32>(603f, _wgslsmith_f_op_f32(func_2(arg_2, _wgslsmith_mult_u32(1u, 4294967295u), !vec3<bool>(all(vec3<bool>(arg_0, arg_1.a, arg_1.e)), any(vec3<bool>(true, arg_2.e, true)), u_input.c.x < 0i))), arg_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-148f, -1447f, 457f, 222f) * vec4<f32>(1000f, 677f, 872f, 627f)), vec4<f32>(1412f, 976f, -460f, -309f))))));
    var var_1 = Struct_1(true | ((9972i <= u_input.c.x) || true), ~(30865u << (~u_input.b % 32u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(false, Struct_1(true, u_input.b, var_0.xwy, u_input.a, false), Struct_1(true, u_input.b, vec3<f32>(154f, 134f, var_0.x), vec3<u32>(u_input.b, 64178u, 1u), true))) - _wgslsmith_f_op_vec3_f32(exp2(var_0.yww)))))), u_input.a >> (u_input.a % vec3<u32>(32u)), all(vec3<bool>(true, true, true)));
    let var_2 = Struct_1(true, _wgslsmith_div_u32(~4294967295u, _wgslsmith_mult_u32(var_1.b, select(4294967295u, 41627u, false))) ^ (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(66394u, 1u, u_input.a.x), var_1.d), ~0u) | u_input.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c.x)) + -883f), -381f) + var_1.c), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.d.x, 7790u) ^ (u_input.a << (vec3<u32>(var_1.d.x, u_input.b, 89849u) % vec3<u32>(32u))), ~(u_input.a << (vec3<u32>(28231u, u_input.a.x, var_1.b) % vec3<u32>(32u)))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, u_input.b & 1u), var_1.b, reverseBits(67853u)), 1u), func_3().x);
    let var_3 = _wgslsmith_mod_u32(19745u, ~var_1.d.x);
    let var_4 = var_2;
    var_1 = Struct_1(any(select(select(select(vec2<bool>(true, var_4.a), vec2<bool>(var_1.a, true), vec2<bool>(var_4.a, var_2.e)), vec2<bool>(true, true), true), func_3().zx, var_2.a)), var_3 ^ _wgslsmith_div_u32(~(~u_input.b), abs(var_3)), _wgslsmith_div_vec3_f32(var_0.wyx, var_1.c), (var_4.d & vec3<u32>(~var_2.b, var_1.d.x, 1u)) << (_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~var_2.d, ~var_2.d), abs(var_1.d)) % vec3<u32>(32u)), select(max(_wgslsmith_dot_vec3_i32(u_input.c.xwz, u_input.c.ywx), -u_input.d) == u_input.d, !(24192i == u_input.d) & true, select(false, true, var_1.e)));
    let var_5 = u_input.c;
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, ~var_2.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.c.x, var_2.c.x) + var_4.c.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.c.xx))))));
}

