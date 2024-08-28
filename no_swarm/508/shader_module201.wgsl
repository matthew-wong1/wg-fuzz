struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_2) -> u32 {
    return 28826u;
}

fn func_3(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -296f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1798f - -1000f)))), _wgslsmith_f_op_f32(1f - 1000f))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 601f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 2038f))) - vec2<f32>(1f, var_0.x))));
    return Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(var_0.x >= var_0.x, false, any(vec2<bool>(false, false)), false))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<i32> {
    let var_0 = func_3(~_wgslsmith_mod_u32(max(~86436u, 16081u), func_2(arg_2)));
    let var_1 = vec4<bool>(var_0.a, !(u_input.a.x <= _wgslsmith_div_i32(~u_input.a.x, ~(-2147483647i))), true, arg_2.a);
    var var_2 = !func_3(34429u | _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_2.b, 0u), _wgslsmith_div_u32(arg_1.x, 35059u))).a;
    var_2 = !(all(vec4<bool>(var_0.a, u_input.d.x < u_input.d.x, arg_2.c.x && arg_2.a, arg_2.c.x)) | (_wgslsmith_f_op_f32(f32(-1f) * -887f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))));
    var_2 = true;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(~1i, _wgslsmith_dot_vec4_i32(u_input.a, func_1(vec3<f32>(1000f, -563f, -1016f), u_input.c, Struct_2(true, u_input.d.x, vec2<bool>(true, true)), vec2<f32>(594f, -1453f))) & -u_input.a.x, -1i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, u_input.b), 2147483647i)), firstTrailingBit(~(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, vec4<i32>(u_input.b, u_input.e, u_input.e, 13696i)) | func_1(vec3<f32>(1921f, -1974f, -799f), vec2<u32>(26710u, u_input.c.x), Struct_2(false, 18187u, vec2<bool>(true, true)), vec2<f32>(1305f, -572f)))));
    let var_1 = Struct_2(any(select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), func_3(9403u).a), true)), 1u, vec2<bool>(any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, false, false), true)), all(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(284f)), _wgslsmith_f_op_f32(trunc(-1101f))))), ~(~u_input.d), 196f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-931f, _wgslsmith_f_op_f32(floor(872f))))))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -449f);
    var_3 = 1000f;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_2.c, var_2.a))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-881f, var_2.c)), var_2.c))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-var_2.c)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - 730f)), var_2.c))));
    var_3 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x & -21202i, ~0i, u_input.b), ~vec3<i32>(var_0.x, -29414i, 1i)), _wgslsmith_f_op_f32(var_4.x - var_2.c), _wgslsmith_add_u32(~countOneBits(844u), abs(~u_input.d.x)), _wgslsmith_f_op_f32(-var_2.a));
}

