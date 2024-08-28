struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> f32 {
    global0 = array<vec4<f32>, 13>();
    let var_0 = vec3<f32>(-858f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -642f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -281f)))))), 1133f);
    global0 = array<vec4<f32>, 13>();
    let var_1 = var_0.x;
    return _wgslsmith_div_f32(1017f, 1815f);
}

fn func_3() -> f32 {
    let var_0 = reverseBits(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(12785u, 1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 47948u, 0u), vec3<u32>(0u, 25800u, 17914u)))) ^ ~1u;
    var var_1 = _wgslsmith_add_vec2_i32(reverseBits(u_input.a.zx | vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.yx) | _wgslsmith_clamp_vec2_i32(vec2<i32>(-25299i, ~(~u_input.a.x)), -_wgslsmith_mult_vec2_i32(abs(vec2<i32>(-1i, u_input.a.x)), vec2<i32>(u_input.a.x, -2147483647i) | u_input.a.xx), select(abs(u_input.a.yz), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 50571i, u_input.a.x, u_input.a.x), vec4<i32>(-1i, 2147483647i, -24386i, -11287i)), -2147483647i), true));
    global0 = array<vec4<f32>, 13>();
    global0 = array<vec4<f32>, 13>();
    let var_2 = ~reverseBits(vec4<i32>(var_1.x, 22729i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 18143i), u_input.a.xy), ~(-var_1.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-963f))))))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> StorageBuffer {
    global0 = array<vec4<f32>, 13>();
    global0 = array<vec4<f32>, 13>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(2135f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), false, _wgslsmith_mult_i32(abs(~arg_1.c >> (arg_2.x % 32u)), u_input.a.x));
    let var_1 = 0u;
    var var_2 = arg_1.a;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_1.a, -1265f), 890f), vec2<f32>(arg_1.a, arg_1.a))), u_input.a, vec2<i32>(arg_1.c, ~(~(-10404i)) >> (~4294967295u % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 13>();
    global0 = array<vec4<f32>, 13>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), 1426f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1603f * -1697f)) + _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f) * 2572f)))), 1499f);
    var var_1 = vec4<bool>(false, false, !any(vec2<bool>(true, select(true, false, true))), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true)));
    var var_2 = Struct_1(var_0.x, all(var_1.yx), u_input.a.x);
    let x = u_input.a;
    s_output = func_2(!var_1.x, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1()))), !var_2.b, ~((i32(-1i) * -55095i) >> (_wgslsmith_div_u32(25789u, 4294967295u) % 32u))), abs(~vec4<u32>(~1u, 1u, ~4294967295u, 1u)));
}

