struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> u32 {
    return _wgslsmith_sub_u32(arg_1.x, ~38468u);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(select(vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(false, true)) || false, false), !vec3<bool>(true, any(vec3<bool>(true, false, false)), all(vec2<bool>(false, false))), select(firstTrailingBit(1i) == -10238i, true, _wgslsmith_f_op_f32(trunc(110f)) != _wgslsmith_div_f32(-802f, -1474f))), ~_wgslsmith_mod_u32(~4294967295u, 47729u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var_0 = Struct_1(var_0.a, var_0.b);
    var var_2 = 4294967295u;
    var_0 = Struct_1(!vec3<bool>(true, false, var_0.a.x), _wgslsmith_add_u32(func_3(var_0.a.x, abs(vec3<u32>(var_0.b, var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -226f)), var_0.a) & var_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, 1u, 1u), vec3<u32>(var_0.b & 4294967295u, firstTrailingBit(var_0.b), 42122u | var_0.b))));
    return Struct_1(var_0.a, var_0.b);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(select(vec3<bool>(true, true, false), !vec3<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(false, false, true)), true), !vec3<bool>(any(vec4<bool>(false, true, false, false)), all(vec4<bool>(false, false, true, false)), false)), 4294967295u);
    let var_1 = countOneBits(1u);
    var var_2 = Struct_1(!var_0.a, var_1);
    var_2 = func_2(u_input.a);
    var_2 = func_2(countOneBits(~(-1i)));
    return func_2(max(u_input.a, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = !var_0.a.x;
    var var_2 = -124f;
    var var_3 = func_2(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, firstTrailingBit(_wgslsmith_div_i32(-30573i, u_input.a))), ~abs(12538i)));
    var var_4 = vec4<bool>(all(vec4<bool>(true, true, var_0.a.x, all(!var_3.a))), var_3.a.x, ~(~countOneBits(var_0.b)) < 1u, !var_0.a.x);
    var var_5 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1886f, 1458f, 1024f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1643f, -310f, -599f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-138f, 167f, -325f) + vec3<f32>(-328f, -591f, 788f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1911f, -1132f, 838f))))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(-948f)), _wgslsmith_f_op_f32(round(-1244f)), _wgslsmith_f_op_f32(584f - 2058f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-283f, -2509f, -1330f), vec3<f32>(937f, -1450f, 1160f))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1000f, -185f), vec3<f32>(374f, 1651f, -588f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-223f, -2510f, -739f) * vec3<f32>(1729f, -1000f, -508f)))))), true));
    let var_6 = func_2(~(~_wgslsmith_add_i32(0i, -36456i)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -62631i, -2553i, u_input.a, select(1i, -37944i, var_0.a.x)), -vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)), -vec4<i32>(~2147483647i, -2147483647i, -1i, min(u_input.a, u_input.a)), true), vec3<i32>(0i, max(-(i32(-1i) * -26858i), 1i), 2147483647i << (var_0.b % 32u)), ~(~(~vec2<i32>(-33486i, -4278i))), reverseBits(vec2<i32>(-35690i, 2147483647i)) ^ abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, -1i), vec2<i32>(-56534i, u_input.a) & vec2<i32>(u_input.a, 24925i))));
}

