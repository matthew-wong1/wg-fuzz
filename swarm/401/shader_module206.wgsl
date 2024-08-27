struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec2<u32> {
    var var_0 = ~arg_1;
    var_0 = 40999i;
    var var_1 = u_input.b;
    var_1 = u_input.b;
    let var_2 = vec3<i32>(-1i, ~(~2147483647i), _wgslsmith_div_i32(-_wgslsmith_mult_i32(min(0i, 33927i), 68626i), _wgslsmith_mult_i32(~abs(-30118i), ~_wgslsmith_mod_i32(-14419i, u_input.a.x))));
    return vec2<u32>(firstTrailingBit(~(~_wgslsmith_dot_vec3_u32(u_input.b, u_input.b))), ~firstLeadingBit(arg_0.a.x));
}

fn func_3() -> f32 {
    let var_0 = vec4<i32>(2147483647i, 31533i, max(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d, u_input.a.x), vec3<i32>(u_input.a.x, u_input.d, u_input.e))), 2147483647i), 1i);
    let var_1 = ~vec4<i32>(-35079i, 2105i, u_input.e, firstLeadingBit(~firstLeadingBit(-36393i)));
    let var_2 = _wgslsmith_f_op_f32(261f * 631f);
    var var_3 = Struct_1(func_2(Struct_1(~abs(vec2<u32>(1u, u_input.b.x)), select(any(vec4<bool>(false, false, true, true)), any(vec3<bool>(true, false, false)), true), var_2), abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(var_1.x, -13488i)), ~var_0.x))), select(all(vec3<bool>(true, true, true)), select(all(vec4<bool>(false, true, true, false)), true, !select(false, false, false)), false), _wgslsmith_f_op_f32(-128f - 1000f));
    let var_4 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-644f, var_3.c, 1315f, -1817f)));
    return var_3.c;
}

fn func_1(arg_0: u32) -> vec2<f32> {
    let var_0 = Struct_1(u_input.b.yy, false, _wgslsmith_f_op_f32(trunc(1067f)));
    let var_1 = Struct_1(_wgslsmith_div_vec2_u32(func_2(var_0, -1i), vec2<u32>(30451u, abs(var_0.a.x))), all(vec2<bool>(!(var_0.b & var_0.b), !(!var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c)) * _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c * var_0.c))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2047f, _wgslsmith_f_op_f32(-var_1.c)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, var_0.c) + vec2<f32>(var_0.c, -728f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.c) - vec2<f32>(var_1.c, 1000f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), 440f)));
    let var_3 = Struct_1(func_2(var_1, -9094i), var_0.b, _wgslsmith_f_op_f32(ceil(-1000f)));
    let var_4 = 0i;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_div_f32(1576f, -484f)), 195f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, 893f) * vec2<f32>(var_3.c, var_0.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1291f, -1000f)), _wgslsmith_div_vec2_f32(var_2, var_2)), !(!vec2<bool>(true, var_0.b))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(func_3()))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(674f, -1057f), vec2<f32>(1608f, -893f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1473f, -1378f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(477f, 1470f) * vec2<f32>(-1987f, -2202f)), vec2<bool>(true, true))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-372f, 1000f))) * vec2<f32>(609f, -245f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(903f, -689f) * _wgslsmith_f_op_vec2_f32(func_1(u_input.c.x)))))));
    let var_2 = ~29573u;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 245f, var_1.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1329f, -2143f, var_1.x, var_1.x) * vec4<f32>(1000f, 771f, 1020f, -502f))))));
}

