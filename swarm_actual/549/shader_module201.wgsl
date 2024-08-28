struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    return min(_wgslsmith_div_u32(abs(abs(0u)), firstLeadingBit(firstTrailingBit(18197u))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 42602u, u_input.c), vec3<u32>(1u, 0u, 0u)) & u_input.c));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<bool>) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.b, arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - 317f)))), arg_1.a.x, -1164f, 568f);
    var var_1 = func_3();
    var_1 = u_input.c;
    let var_2 = max(vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, -10987i), _wgslsmith_mod_i32(~u_input.b.x, ~(-21548i)), min(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), 0i)) ^ countOneBits(u_input.b), min(vec4<i32>(~(-u_input.b.x), select(u_input.b.x, u_input.a.x, arg_0.x) << (u_input.c % 32u), ~countOneBits(u_input.a.x), -u_input.a.x), _wgslsmith_sub_vec4_i32(u_input.b, -u_input.b)));
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, countOneBits(~u_input.b.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.x, 2147483647i, u_input.a.x, 1i), vec4<i32>(u_input.a.x, var_2.x, var_2.x, u_input.a.x) | var_2)), -abs(_wgslsmith_dot_vec3_i32(u_input.b.xww, vec3<i32>(-7492i, u_input.a.x, var_2.x))), ~(-(u_input.b.x ^ u_input.a.x)), 1i), vec4<i32>(39885i, var_2.x, 38720i, -2147483647i));
    return 0i;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = vec4<bool>(true, all(vec4<bool>(false, true, ~arg_1 < u_input.c, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))), !(-_wgslsmith_sub_i32(u_input.b.x, -968i) <= select(firstTrailingBit(-1i), ~u_input.a.x, any(vec4<bool>(true, true, true, true)))), any(vec2<bool>(!all(vec4<bool>(false, true, false, false)), false)));
    var var_1 = vec3<bool>(any(vec2<bool>(!any(vec3<bool>(false, true, var_0.x)), all(vec3<bool>(true, true, false)))), false, any(vec4<bool>(arg_1 != 0u, true, true, true)));
    var var_2 = arg_1 << (33379u % 32u);
    var var_3 = select(-vec4<i32>(-countOneBits(u_input.b.x), ~func_2(var_0, Struct_1(vec3<f32>(arg_0.a.x, -847f, arg_0.b), arg_0.a.x), vec3<u32>(arg_1, 1u, u_input.c), var_0.zxx), _wgslsmith_add_i32(43757i, -23243i), 0i), reverseBits(~u_input.b ^ -u_input.b) ^ u_input.b, all(var_0.wzy));
    var var_4 = abs(vec3<i32>(u_input.a.x, reverseBits(u_input.b.x) << (_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 31657u), _wgslsmith_clamp_u32(arg_1, arg_1, arg_1)) % 32u), select(-21157i, var_3.x, !(!var_1.x))));
    return -400f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~reverseBits(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(59883u, 77940u), vec2<u32>(u_input.c, 4294967295u)), ~vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, 0u))));
    var var_1 = true;
    let var_2 = 0i;
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2407f * -176f) - _wgslsmith_f_op_f32(f32(-1f) * -1593f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<f32>(708f, -855f, 2087f), 1456f), ~u_input.c, Struct_1(vec3<f32>(-647f, 2138f, 315f), 688f))), -368f)))));
    let var_4 = _wgslsmith_f_op_f32(-1540f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2869f)), -1144f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, 678f, -693f)), _wgslsmith_f_op_f32(step(var_4, var_4)), -308f);
}

