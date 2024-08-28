struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, true, false), true, vec2<f32>(216f, 488f), 4294967295u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_1(vec3<bool>(false, false, true), !any(vec4<bool>(global1.a.x, true, 4294967295u == u_input.b, true)), _wgslsmith_f_op_vec2_f32(-global1.c), u_input.e);
    let var_1 = Struct_1(vec3<bool>(true, var_0.a.x, !(~u_input.a < 4294967295u)), any(select(vec3<bool>(false, var_0.a.x, true), global1.a, _wgslsmith_clamp_u32(11798u, 100948u, 1u) > ~4294967295u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x - global1.c.x), 599f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, var_0.c.x), var_0.c))), _wgslsmith_f_op_f32(-514f + var_0.c.x) <= -135f)))), ~85732u);
    var var_2 = vec3<u32>(u_input.a, (_wgslsmith_dot_vec2_u32(select(vec2<u32>(25230u, 12889u), vec2<u32>(global1.d, var_1.d), true), ~vec2<u32>(global1.d, 1u)) | var_1.d) | (~var_0.d << (~var_0.d % 32u)), var_0.d);
    var_0 = var_1;
    var var_3 = false;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1087f, 1635f, 1000f)) - vec3<f32>(-1645f, -1000f, var_0.c.x)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1095f, var_1.c.x, global1.c.x))))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(ceil(global1.c.x))), _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(580f * var_0.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1137f, var_0.c.x), _wgslsmith_f_op_f32(max(var_1.c.x, global1.c.x)), any(vec4<bool>(var_1.b, global1.b, true, var_1.a.x)))))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-792f, arg_0, global1.c.x), _wgslsmith_f_op_vec3_f32(func_3())), _wgslsmith_f_op_vec3_f32(func_3()), global1.b)), _wgslsmith_div_vec3_f32(vec3<f32>(747f, _wgslsmith_f_op_f32(f32(-1f) * -539f), arg_0), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global1.c.x, -2291f, global1.c.x), vec3<f32>(502f, arg_0, 441f)), vec3<f32>(global1.c.x, global1.c.x, arg_0), global1.a))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1362f, global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, global1.c.x)) - global1.c.x)), vec3<f32>(-1526f, 450f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(floor(1786f)))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))) - -1000f));
    var var_1 = firstLeadingBit(~abs(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 49365u), vec3<u32>(global1.d, global1.d, u_input.d))) ^ ~vec3<u32>(~u_input.a, ~0u, ~2888u));
    var_1 = _wgslsmith_div_vec3_u32(~vec3<u32>(10032u, abs(global1.d), ~25133u), countOneBits(firstTrailingBit(vec3<u32>(0u, 54081u, 40909u) & vec3<u32>(17544u, u_input.b, 22453u)))) << (vec3<u32>(_wgslsmith_mult_u32(countOneBits(var_1.x), _wgslsmith_mult_u32(var_1.x, firstLeadingBit(var_1.x))), ~1u, var_1.x) % vec3<u32>(32u));
    var var_2 = Struct_1(vec3<bool>(global1.a.x, !global1.b, !(!global1.a.x)), false, var_0.zx, global1.d);
    return Struct_1(global1.a, any(!vec4<bool>(var_2.b, var_2.a.x & true, var_2.a.x & true, true)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(842f))))), ~(~u_input.a));
}

fn func_1() -> bool {
    global1 = func_2(-726f);
    let var_0 = func_2(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.c.x, global1.c.x), 519f));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1338f)), -595f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) * _wgslsmith_f_op_f32(f32(-1f) * -139f)))));
    let var_2 = Struct_1(vec3<bool>(all(select(select(var_0.a.yy, global1.a.zz, vec2<bool>(global1.a.x, true)), global1.a.zy, false)), -_wgslsmith_mod_i32(23444i, u_input.c.x) <= (17932i | u_input.c.x), global1.b), !var_0.a.x, _wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.c))))), ~27490u);
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(any(vec3<bool>(global1.a.x, _wgslsmith_div_f32(246f, -933f) == global1.c.x, true)), all(!select(select(vec2<bool>(false, global1.b), vec2<bool>(global1.a.x, global1.a.x), global1.a.zz), global1.a.xy, global1.a.x == true)), any(!(!global1.a.zy)) || func_1(), true);
    var var_1 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + global1.c.x)) - _wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(-global1.c.x))))));
    let var_2 = var_1.a.x;
    var var_3 = 941f;
    global0 = -1223f;
    var_3 = -1100f;
    global0 = _wgslsmith_f_op_f32(-214f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-617f)) * _wgslsmith_f_op_f32(-var_1.c.x)) - var_1.c.x)));
    let var_4 = global1.d;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, ~_wgslsmith_sub_vec3_u32(min(vec3<u32>(0u, u_input.b, u_input.d), vec3<u32>(global1.d, global1.d, 65628u)) >> (firstLeadingBit(vec3<u32>(var_1.d, 1u, 0u)) % vec3<u32>(32u)), (vec3<u32>(4294967295u, 24670u, 1u) & vec3<u32>(u_input.b, u_input.b, 0u)) | vec3<u32>(var_1.d, 1u, var_1.d)));
}

