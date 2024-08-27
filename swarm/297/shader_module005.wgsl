struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    var var_0 = 1110f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(284f, 125f, false)), -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-185f + -1225f) + -1531f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-528f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-842f + -387f) + -1547f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-588f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-159f + -305f) + -1487f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(741f, _wgslsmith_f_op_f32(-696f - 1391f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-705f - 1081f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(886f - -696f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, var_1.x)));
    let var_2 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(-2510f)), _wgslsmith_f_op_f32(sign(-761f))))));
    return _wgslsmith_dot_vec2_i32(reverseBits(-(~(-vec2<i32>(63140i, 60701i)))), vec2<i32>(-108923i, -_wgslsmith_add_i32(1i, 13666i)));
}

fn func_2() -> f32 {
    let var_0 = abs(vec2<i32>(-(func_3() << (9631u % 32u)), 40922i));
    let var_1 = Struct_1(_wgslsmith_mult_u32(u_input.a.x, select(_wgslsmith_add_u32(u_input.a.x, 0u) | ~u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.yzw, vec3<u32>(27371u, u_input.a.x, u_input.a.x)) ^ ~u_input.a.x, true)), vec2<f32>(1f, 1f));
    var var_2 = u_input.a.xwy;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b)))));
    var_2 = abs(vec3<u32>(_wgslsmith_clamp_u32(1u, 55153u, 4294967295u >> (~var_1.a % 32u)), firstLeadingBit(countOneBits(0u)), ~(~4294967295u | var_1.a)));
    return _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(2980f + var_1.b.x), 459f));
}

fn func_1() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-462f, 437f), vec2<f32>(1000f, -476f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-129f, -339f) + vec2<f32>(-210f, 933f)))) * vec2<f32>(-749f, _wgslsmith_f_op_f32(-491f - _wgslsmith_f_op_f32(1674f - -1000f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(691f, 640f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(2726u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(968f, -350f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(vec2<f32>(592f, 1000f) * vec2<f32>(656f, 1268f)), vec2<bool>(true, true))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1113f, -199f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1004f, 1000f))))));
    var_0 = Struct_1(32696u, vec2<f32>(var_0.b.x, 309f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x)) * _wgslsmith_f_op_f32(-var_0.b.x)))));
    var var_2 = ~vec3<i32>(_wgslsmith_add_i32(1i, min(44880i, -11195i)) >> (var_0.a % 32u), 1i, func_3());
    var var_3 = abs(1u);
    let var_4 = _wgslsmith_f_op_vec2_f32(func_1()).x;
    var var_5 = _wgslsmith_f_op_f32(-var_4);
    let var_6 = Struct_1(~(~0u), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_6.b.x - var_0.b.x) + var_0.b.x));
}

