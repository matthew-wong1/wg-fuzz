struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    return min(1u, 0u);
}

fn func_3() -> f32 {
    let var_0 = vec3<u32>(42135u, ~1u, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(12980u, 4294967295u, 71480u), vec3<u32>(1u, 0u, 61180u), true), vec3<u32>(0u, 0u, 1u)) & ~(~4294967295u));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -319f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) + -1468f)), true))));
    var var_2 = Struct_1(select(vec3<u32>(~_wgslsmith_sub_u32(var_0.x, var_0.x), _wgslsmith_add_u32(0u, 4806u), var_0.x), var_0, vec3<bool>(true, true, false)), ~(~(~var_0.x)), 4294967295u, u_input.b.x == -_wgslsmith_add_i32(0i, -u_input.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-764f, -1597f)) + _wgslsmith_f_op_f32(-301f - _wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(447f, -746f), _wgslsmith_div_f32(-1198f, -730f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1570f + -1000f) - -1445f)), -944f));
    return var_2.e.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(333f * -254f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1559f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))), -114f, 368f);
    let var_1 = ~(~select(~_wgslsmith_mod_u32(4294967295u, 4294967295u), 13087u, !(var_0.x <= var_0.x)));
    let var_2 = ~(_wgslsmith_mod_vec4_u32(min(~vec4<u32>(75100u, 1u, var_1, var_1), vec4<u32>(var_1, var_1, var_1, 6661u)), vec4<u32>(var_1, 8047u >> (var_1 % 32u), 0u, var_1 ^ 0u)) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1, 4294967295u, var_1), ~vec4<u32>(50962u, 40084u, 33115u, 4294967295u)));
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1914f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, -1046f), _wgslsmith_div_f32(var_0.x, var_0.x))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1788f * _wgslsmith_f_op_f32(var_0.x * -1743f)) - _wgslsmith_f_op_f32(abs(var_0.x))))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(292f * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -2056f)))), var_0.x)), -720f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x));
    return vec3<bool>(true, any(vec3<bool>(true, true, true)), 4294967295u == (max(85860u >> (var_1 % 32u), var_1) & var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec3<u32>(33308u, 48354u, 43415u));
    let var_1 = Struct_1(vec3<u32>(~(~var_0.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.x, var_0.x), _wgslsmith_sub_u32(var_0.x, var_0.x)), ~25818u) << (reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 30350u, 2851u), vec3<u32>(var_0.x, 0u, var_0.x)) << (vec3<u32>(var_0.x, 30372u, var_0.x) % vec3<u32>(32u))) % vec3<u32>(32u)), reverseBits(var_0.x), ~_wgslsmith_div_u32(~var_0.x, func_1(u_input.b ^ u_input.b, true)), false, vec4<f32>(-646f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(206f - 1000f)))), 792f, -967f));
    var var_2 = select(countOneBits(vec3<i32>(0i, _wgslsmith_add_i32(9096i, -36214i), _wgslsmith_sub_i32(max(8005i, 0i), -u_input.b.x))), ~(-((vec3<i32>(u_input.a, u_input.b.x, u_input.b.x) ^ vec3<i32>(14060i, -20933i, 8363i)) ^ reverseBits(vec3<i32>(1i, 2147483647i, u_input.b.x)))), var_1.d);
    var var_3 = any(select(!(!(!vec3<bool>(true, false, var_1.d))), select(select(vec3<bool>(var_1.d, false, var_1.d), !vec3<bool>(var_1.d, var_1.d, false), var_1.d), vec3<bool>(select(true, var_1.d, false), var_1.d & true, !var_1.d), false), !vec3<bool>(var_1.d | true, var_1.d, var_1.d)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_1.e.xz, _wgslsmith_f_op_vec2_f32(-var_1.e.xz), !vec2<bool>(var_1.d, var_1.d)))))));
    var var_5 = func_2();
    let var_6 = ~(~(~var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(540f, 549f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.e.ww - vec2<f32>(var_4.x, -270f)))))));
}

