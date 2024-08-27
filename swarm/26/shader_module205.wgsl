struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(i32(-2147483648), -19843i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 19809u, u_input.a) << (countOneBits(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) % vec4<u32>(32u)), ~(vec4<u32>(u_input.a, u_input.a, 26068u, 4294967295u) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))), ~(~(~(vec4<u32>(0u, u_input.a, 123481u, u_input.a) & vec4<u32>(u_input.a, 70612u, 0u, u_input.a)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-798f)) - _wgslsmith_f_op_f32(-295f * 470f)))));
    var var_2 = Struct_1(-263f);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(769f, _wgslsmith_f_op_f32(floor(131f)))))));
    global0 = array<i32, 2>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-740f, _wgslsmith_f_op_f32(var_3.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-123f - 1181f))))));
}

fn func_2(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_div_i32(0i, global0[_wgslsmith_index_u32(arg_0.x, 2u)]);
    let var_1 = true;
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    return vec4<bool>(var_1, !all(vec4<bool>(true, var_1 && false, var_1 | var_1, var_1)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-351f, -1000f) - _wgslsmith_f_op_f32(-1156f - 532f)), all(!vec3<bool>(var_1, true, true)))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1610f)))), !var_1);
}

fn func_1() -> vec4<bool> {
    var var_0 = true;
    var var_1 = select(!vec4<bool>(true, false, any(vec2<bool>(true, true)), true), vec4<bool>(true, true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, false, true))), all(vec3<bool>(-1i == global0[_wgslsmith_index_u32(u_input.a, 2u)], false, false))), select(vec4<bool>(true, true, true, true), !func_2(vec3<u32>(u_input.a, 27882u, 6399u) | vec3<u32>(u_input.a, u_input.a, u_input.a)), !vec4<bool>(any(vec2<bool>(true, true)), true, true, any(vec3<bool>(true, true, false)))));
    let var_2 = select(vec3<bool>(var_1.x, var_1.x, any(func_2(vec3<u32>(10966u, u_input.a, u_input.a) | vec3<u32>(51102u, 80692u, u_input.a)))), vec3<bool>(var_1.x, all(vec3<bool>(var_1.x, false, false)), !(true | (u_input.a < 0u))), var_1.x);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    let var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_3.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1680f * -1000f))), var_3.a));
    return vec4<bool>(true, any(select(var_1.xy, vec2<bool>(true, var_3.a <= var_3.a), true || (u_input.a < u_input.a))), !any(vec2<bool>(!var_2.x, true)), all(!vec3<bool>(!var_2.x, true, true)));
}

fn func_4(arg_0: vec4<bool>) -> vec2<u32> {
    global0 = array<i32, 2>();
    let var_0 = u_input.a;
    global0 = array<i32, 2>();
    var var_1 = ~_wgslsmith_add_vec2_u32((~vec2<u32>(u_input.a, 75021u) ^ abs(vec2<u32>(u_input.a, var_0))) ^ abs(~vec2<u32>(23649u, u_input.a)), ~(~vec2<u32>(59064u, 640u)) << ((abs(vec2<u32>(u_input.a, var_0)) | vec2<u32>(var_0, 19576u)) % vec2<u32>(32u)));
    var var_2 = firstLeadingBit(abs(select(~(~vec4<u32>(32111u, 1999u, 0u, var_1.x)), (vec4<u32>(u_input.a, var_1.x, u_input.a, var_1.x) & vec4<u32>(5801u, 1u, 295u, var_1.x)) | ~vec4<u32>(u_input.a, var_0, 8705u, 47683u), true)));
    return _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_mult_u32(33281u, 1u)), var_2.wy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_f32(567f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -568f), _wgslsmith_f_op_f32(167f - 421f))))));
    var var_1 = -(~(vec2<i32>(21414i, global0[_wgslsmith_index_u32(~28163u, 2u)]) | (max(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], 0i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], 0i)) << ((vec2<u32>(44323u, 1u) | vec2<u32>(78404u, u_input.a)) % vec2<u32>(32u)))));
    var_1 = -vec2<i32>(31118i, -select(32391i, _wgslsmith_sub_i32(var_1.x, var_1.x), true));
    var var_2 = select(vec2<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a ^ 0u, 0u)), vec2<u32>(u_input.a, 13203u) ^ firstLeadingBit(abs(vec2<u32>(u_input.a, u_input.a))), vec2<bool>(_wgslsmith_f_op_f32(-var_0.a) >= _wgslsmith_f_op_f32(-var_0.a), false)) ^ ~func_4(func_1());
    let var_3 = select(true, 1u < _wgslsmith_clamp_u32(1u, var_2.x, abs(~0u)), true);
    let var_4 = vec2<f32>(1185f, _wgslsmith_div_f32(var_0.a, var_0.a));
    var var_5 = vec2<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(var_2.x, 2u)], ~(~0i)), -1i);
    var var_6 = -1i;
    var var_7 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(145f, var_4.x, 149f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1398f, _wgslsmith_f_op_f32(733f + var_0.a), _wgslsmith_f_op_f32(215f * 133f), _wgslsmith_f_op_f32(var_4.x + var_0.a)))), _wgslsmith_f_op_f32(-var_0.a), 0u, ~(~var_1.x << (~var_2.x % 32u)));
}

