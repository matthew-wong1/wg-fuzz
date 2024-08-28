struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: i32) -> bool {
    return true;
}

fn func_3() -> vec4<bool> {
    let var_0 = true;
    var var_1 = u_input.e;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-809f, _wgslsmith_f_op_f32(974f - 105f)))) * 1f), 8466u, func_2(u_input.e, _wgslsmith_div_i32(9681i, 1i)), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.e, 52017u, 0u), vec4<u32>(29398u, u_input.e, u_input.e, u_input.e), vec4<u32>(u_input.e, 14407u, u_input.e, u_input.e))) >> (~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(19877u, 4294967295u)), ~0u, countOneBits(u_input.e), countOneBits(u_input.e)) % vec4<u32>(32u)));
    var_1 = 9861u;
    var var_3 = ~1u;
    return select(vec4<bool>(true, _wgslsmith_add_i32(~u_input.b.x, ~(-12893i)) > -26393i, var_2.b >= min(u_input.e, countOneBits(var_2.b)), all(select(select(vec3<bool>(false, true, true), vec3<bool>(var_2.c, var_0, var_2.c), vec3<bool>(true, var_0, false)), vec3<bool>(false, false, false), vec3<bool>(var_0, false, false)))), select(!vec4<bool>(var_2.c, true, true, u_input.e > u_input.e), select(vec4<bool>(var_2.b > 12267u, false, func_2(var_2.b, -37065i), true), vec4<bool>(var_2.c, any(vec3<bool>(var_0, var_2.c, var_0)), true, var_2.a >= var_2.a), select(vec4<bool>(var_0, var_0, var_2.c, var_0), vec4<bool>(var_0, var_0, false, true), true)), vec4<bool>(true, !var_2.c, !var_2.c, false)), !var_2.c);
}

fn func_1(arg_0: u32, arg_1: u32) -> f32 {
    var var_0 = true;
    var_0 = all(vec4<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), true & all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false, true));
    var_0 = all(vec3<bool>(false & func_2(abs(arg_1), u_input.a.x), any(vec4<bool>(true, false, u_input.b.x < u_input.a.x, any(vec4<bool>(true, true, false, true)))), select(true, any(func_3()), all(vec4<bool>(true, false, false, false)))));
    var_0 = all(vec2<bool>(true, true));
    var var_1 = Struct_1(1338f, u_input.e, any(vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, ~_wgslsmith_clamp_u32(1u, 27722u, arg_1), arg_1 << (arg_1 % 32u), 0u), firstTrailingBit(vec4<u32>(46832u << (u_input.e % 32u), arg_0 >> (arg_0 % 32u), arg_1, 0u))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-390f))) + _wgslsmith_f_op_f32(-149f - 861f)), -1868f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1440f - 1309f)) - 225f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1455f)) - _wgslsmith_f_op_f32(f32(-1f) * -1444f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.e, u_input.e)), 1392f, -1642f, 152f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(721f, -610f, -780f, 416f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1021f, 1752f, 2326f, 1509f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * var_0.x), var_0.x)), _wgslsmith_f_op_f32(func_1(~6793u, 5282u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1648f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.e, 0u)))))));
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(245f * -429f), var_0.x, var_0.x, 1183f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1577f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - 802f), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(392f + var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -567f))))));
    let var_1 = vec4<i32>(1i, -reverseBits(~2147483647i), reverseBits(u_input.d), i32(-1i) * -2147483647i);
    var var_2 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, max(_wgslsmith_sub_u32(select(26599u, ~u_input.e, true), select(_wgslsmith_mod_u32(u_input.e, 27827u), u_input.e, true)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, u_input.e, 4294967295u), vec3<u32>(u_input.e, 4294967295u, 19966u)), reverseBits(~vec3<u32>(1u, 0u, u_input.e)))));
}

