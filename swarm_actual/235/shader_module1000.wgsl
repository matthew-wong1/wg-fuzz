struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> f32 {
    let var_0 = ~(~u_input.a.x);
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_1 = ~_wgslsmith_add_u32(25806u, 1u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -599f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -887f), -794f)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2812f, 262f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(607f, -407f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(838f, 315f), vec2<f32>(2711f, 512f))), true))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1589f - _wgslsmith_f_op_f32(step(var_2.x, -1000f)))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = firstTrailingBit(~(-7747i));
    global0 = array<Struct_1, 2>();
    var var_1 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(max(select(vec4<u32>(61785u, 21480u, 15406u, 54504u), vec4<u32>(28052u, 14927u, u_input.a.x, 113893u), vec4<bool>(arg_1.a.x, false, arg_1.a.x, true)), min(vec4<u32>(3860u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), select(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(4294967295u, 11878u, 4294967295u, 78955u) % vec4<u32>(32u)), ~vec4<u32>(19542u, u_input.a.x, u_input.a.x, u_input.a.x), any(vec3<bool>(true, arg_1.a.x, false)))), _wgslsmith_mult_vec4_u32(vec4<u32>(min(_wgslsmith_clamp_u32(4294967295u, 59303u, u_input.a.x), 4294967295u), countOneBits(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 0u) ^ 4294967295u), (~vec4<u32>(u_input.a.x, 68284u, u_input.a.x, u_input.a.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(2795u, 42612u, 4294967295u, u_input.a.x)) % vec4<u32>(32u))) & vec4<u32>(1u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(14280u, 11624u), u_input.a.x)), ~(~vec4<u32>(countOneBits(u_input.a.x), u_input.a.x, _wgslsmith_div_u32(4294967295u, 11097u), 1u)));
    let var_2 = Struct_1(!(!(!(!vec2<bool>(arg_1.a.x, false)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(floor(arg_0.a.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -761f)), 1000f)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, arg_0.a.x), vec2<f32>(var_3.x, var_3.x)), arg_2.yz)))));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    global0 = array<Struct_1, 2>();
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(-1915f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-265f, -968f)) + _wgslsmith_f_op_f32(f32(-1f) * -2125f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))));
    var_0 = func_3(Struct_2(var_0.a), global0[_wgslsmith_index_u32(u_input.a.x, 2u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, var_0.a.x, 536f), vec3<f32>(1476f, var_0.a.x, var_0.a.x), false)), vec3<f32>(var_0.a.x, -698f, 912f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1079f, var_0.a.x, 1517f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))), vec3<bool>(arg_0.x, select(true, arg_0.x, false), u_input.a.x <= u_input.a.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, var_0.a.x, 448f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -722f, -136f) + vec3<f32>(var_0.a.x, 609f, var_0.a.x)), vec3<bool>(true, true, false))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(func_2())))));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)));
    let var_1 = firstLeadingBit(reverseBits(min(_wgslsmith_mult_i32(25510i, -37437i), 0i)));
    return _wgslsmith_clamp_u32(select(u_input.a.x, select(firstLeadingBit(54047u), u_input.a.x, var_1 > 0i), !(16110u >= u_input.a.x)) ^ select(u_input.a.x, 4294967295u, !(arg_0.x || arg_0.x)), max(_wgslsmith_mod_u32(4294967295u & u_input.a.x, u_input.a.x) & max(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 4294967295u)), ~u_input.a.x), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~_wgslsmith_mod_u32(48716u, 4294967295u), func_1(vec2<bool>(true, false))), u_input.a.x, u_input.a.x, u_input.a.x), ~abs(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 41454u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 23118u))));
    var var_1 = ~(-min(vec4<i32>(2147483647i, 2147483647i, -25819i, -47290i), vec4<i32>(0i, -1i, -22025i, 24831i)) ^ (vec4<i32>(~80683i, firstTrailingBit(2147483647i), i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, -8446i), vec3<i32>(2147483647i, -3660i, 5994i))) << (~vec4<u32>(11363u, 32883u, 24366u, var_0.x) % vec4<u32>(32u))));
    global0 = array<Struct_1, 2>();
    var var_2 = vec3<i32>(var_1.x, 1i, 1i);
    var_2 = vec3<i32>(8523i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-10813i, var_2.x), vec2<i32>(var_1.x, var_2.x)), select(-(~var_2.x), -(~1i), var_1.x <= _wgslsmith_div_i32(-1i, var_2.x))), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(966f, 396f, true)) + -452f) - 1090f), 398f), 5623i);
}

