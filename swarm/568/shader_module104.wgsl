struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(0u);
    var var_1 = 2874f;
    let var_2 = 4294967295u;
    var_1 = 1000f;
    var var_3 = all(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), 7797i != u_input.a.x)), (u_input.a.x == _wgslsmith_mult_i32(15339i, u_input.b.x)) & !all(vec2<bool>(false, false))));
    return var_0.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    let var_1 = ~countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_mod_i32(~2147483647i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), 1i));
    let var_2 = func_3();
    let var_3 = Struct_1(abs(func_3()));
    var var_4 = !all(select(select(vec2<bool>(arg_0.x, false), vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, arg_0.x)), !select(vec2<bool>(true, arg_0.x), arg_0.yx, vec2<bool>(arg_0.x, true)), !arg_0.zz));
    return ~firstLeadingBit(36396u);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2;
    var var_1 = -1i >> (var_0.a % 32u);
    var_1 = -u_input.a.x;
    var_0 = arg_2;
    var_1 = -select(-u_input.a.x, -43113i, true) ^ ~reverseBits(u_input.b.x);
    return _wgslsmith_dot_vec3_u32(~(abs(vec3<u32>(22781u, arg_2.a, 1u)) ^ ~vec3<u32>(var_0.a, 5942u, arg_0)), ~vec3<u32>(_wgslsmith_div_u32(min(4294967295u, 75611u), func_2(vec4<bool>(false, arg_1, arg_1, arg_1), arg_2)), arg_2.a, func_2(vec4<bool>(true, true, arg_1, true), Struct_1(var_0.a))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = vec2<u32>(_wgslsmith_clamp_u32(0u, ~func_4(func_2(vec4<bool>(true, true, true, true), Struct_1(arg_1.a)), true, arg_1), ~arg_1.a), abs(~arg_1.a));
    let var_1 = 559f;
    var_0 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(3375u, 57356u), vec2<u32>(min(7179u, _wgslsmith_mult_u32(4294967295u, var_0.x)), var_0.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(var_1 - _wgslsmith_div_f32(-554f, -1761f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-875f - 115f) - _wgslsmith_f_op_f32(f32(-1f) * -855f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-678f, 654f)), -1285f)))), -524f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(241f))))));
    let var_1 = Struct_1(_wgslsmith_mult_u32(firstLeadingBit(~(~64111u)), 69691u ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(37903u, 1u), vec2<u32>(1u, 88681u))));
    let var_2 = var_0.ww;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), -2274f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-861f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(0i, Struct_1(1u))) - _wgslsmith_f_op_f32(step(-1000f, var_2.x))) * 1000f)));
    let var_4 = Struct_1(func_4(~(~var_1.a) >> (37888u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -796f) <= var_2.x, var_1));
    var var_5 = abs(max(vec3<u32>(func_2(vec4<bool>(true, true, true, true), var_4), _wgslsmith_mult_u32(var_1.a, 4294967295u) << (~var_1.a % 32u), ~18435u), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_4.a, 4294967295u, var_4.a), ~vec3<u32>(0u, 71641u, 1u)), 4294967295u, 134556u)));
    var var_6 = i32(-1i) * -2147483647i;
    let var_7 = 1181f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_7, _wgslsmith_f_op_f32(sign(var_2.x))), ~1u, select(u_input.a.x, u_input.a.x, !select(var_4.a < var_5.x, true, true)));
}

