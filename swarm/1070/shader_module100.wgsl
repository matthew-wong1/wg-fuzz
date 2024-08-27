struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = u_input.a.x;
    return Struct_1(false);
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, -u_input.c, 13235i)), select(~u_input.a.ywz, max(vec3<i32>(1i, u_input.c, 1i), vec3<i32>(u_input.a.x, u_input.c, 0i)), true)) >= -(~firstTrailingBit(reverseBits(0i)));
    var var_1 = _wgslsmith_f_op_f32(trunc(-679f));
    let var_2 = Struct_1(func_1(reverseBits(vec3<u32>(0u, 36454u, u_input.b.x) | (vec3<u32>(u_input.b.x, 33514u, 18395u) << (u_input.b.zzz % vec3<u32>(32u))))).a);
    let var_3 = true;
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-795f)), _wgslsmith_f_op_f32(f32(-1f) * -174f))), -1060f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2116f))), -243f));
    return ~u_input.b.xxw;
}

fn func_2(arg_0: vec3<u32>) -> vec2<i32> {
    var var_0 = func_1(func_3());
    var_0 = func_1(_wgslsmith_clamp_vec3_u32(arg_0, select(func_3(), vec3<u32>(arg_0.x, 14383u, 1u) & vec3<u32>(15065u, arg_0.x, arg_0.x), false), arg_0) >> (u_input.b.xzx % vec3<u32>(32u)));
    var var_1 = Struct_1(all(!(!vec3<bool>(var_0.a, false, var_0.a))));
    var_0 = func_1(firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, arg_0.x), u_input.b.x ^ 0u), ~(46508u & u_input.b.x), 4294967295u)));
    var_1 = Struct_1(true);
    return vec2<i32>(-1i, _wgslsmith_div_i32(-11115i << (0u % 32u), 62567i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1274f);
    let var_1 = -673f;
    let var_2 = !(!vec4<bool>(true, any(vec2<bool>(true, true)), true, true));
    let var_3 = func_1(u_input.b.zxw);
    let var_4 = Struct_1(!var_3.a);
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, _wgslsmith_f_op_f32(ceil(var_1)))))));
    let var_6 = func_2(~vec3<u32>(13801u, u_input.b.x, u_input.b.x));
    let var_7 = func_1(vec3<u32>(u_input.b.x, 1u, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mult_u32(2478u, u_input.b.x)), _wgslsmith_mult_u32(firstLeadingBit(u_input.b.x), reverseBits(4294967295u))), max(min(_wgslsmith_div_u32(u_input.b.x, 0u), ~18244u), _wgslsmith_sub_u32(max(u_input.b.x, 1u), 45832u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(501f + -356f), 1011f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 * 1063f), -2497f)), 1000f));
}

