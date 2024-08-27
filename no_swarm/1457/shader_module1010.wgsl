struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = ~u_input.a.x;
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(-1i, abs(max(-u_input.c, -2147483647i & u_input.c))), -(~(-(~u_input.a.x))));
    var var_1 = -vec3<i32>(~_wgslsmith_mult_i32(firstLeadingBit(var_0.x), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), countOneBits(max(~u_input.a.x, 0i)), _wgslsmith_div_i32(~var_0.x, var_0.x) >> (max(4294967295u, u_input.b.x) % 32u));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(global1.a.x * global1.a.x)))));
    let var_2 = var_0.x;
    return global1.a.x;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> bool {
    var var_0 = !(~0u >= ~firstLeadingBit(~arg_0));
    var var_1 = 2147483647i;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_f32(f32(-1f) * -484f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1.a.x)), -1410f))));
    global1 = arg_1;
    var var_3 = Struct_1(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(func_3())));
    return any(vec4<bool>(true, (~u_input.b.x & 0u) > u_input.b.x, !all(vec3<bool>(true, false, true)), true));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> f32 {
    global0 = u_input.c;
    let var_0 = u_input.b;
    var var_1 = func_2(28054u, Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a)));
    var var_2 = arg_0;
    let var_3 = select(vec3<bool>((arg_1 != (3321u >> (var_0.x % 32u))) && true, true, true), vec3<bool>(true, true, _wgslsmith_f_op_f32(-var_2.a.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x))), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(~var_0.x < var_0.x, (u_input.c > 11549i) && true, true), false));
    return _wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(select(1729f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1472f)), global1.a.x)), select(-1587f < global1.a.x, true, func_2(1u, arg_0)) & true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~u_input.a.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-662f, global1.a.x, _wgslsmith_f_op_f32(func_1(Struct_1(global1.a), u_input.b.x))), vec3<f32>(1199f, _wgslsmith_f_op_f32(step(1000f, 170f)), 518f)))));
    var var_1 = u_input.a.xz;
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))))), vec3<f32>(-465f, _wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(396f, 1077f)), u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-767f)) - _wgslsmith_f_op_f32(sign(-413f)))), true && !(var_1.x > ~(-24043i))));
    let var_2 = ~u_input.b.x;
    var_1 = firstLeadingBit(u_input.a.yx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -158f, global1.a.x, -470f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, global1.a.x, 643f, var_0.x), vec4<f32>(827f, global1.a.x, -1000f, global1.a.x)))))), reverseBits(vec2<u32>(_wgslsmith_div_u32(4294967295u, 82422u), reverseBits(4294967295u))));
}

