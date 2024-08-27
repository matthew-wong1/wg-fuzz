struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: f32 = -241f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> i32 {
    let var_0 = vec2<u32>(select(u_input.b.x, ((0u | u_input.b.x) ^ ~1u) << (1u % 32u), any(vec3<bool>(true, true, true))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.b.x), u_input.b.x << (41334u % 32u)), vec2<u32>(u_input.b.x ^ 9423u, 0u >> (u_input.b.x % 32u))));
    var var_1 = firstTrailingBit(vec4<i32>(2147483647i, -_wgslsmith_dot_vec3_i32(u_input.a.yzy, vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), 13271i, ~u_input.a.x) ^ vec4<i32>(-684i << (~u_input.b.x % 32u), i32(-1i) * -26608i, 0i, 1i));
    let var_2 = true;
    var var_3 = u_input.b;
    return var_1.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> i32 {
    return func_2();
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: bool) -> i32 {
    var var_0 = 17474u >> (~(~u_input.b.x) % 32u);
    global0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(802f + 1000f), -1168f, -1000f)));
    var var_1 = (reverseBits(vec2<u32>(4294967295u, firstLeadingBit(4294967295u))) | (~u_input.b.xz >> (min(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, 23295u), vec2<u32>(arg_1, u_input.b.x)), u_input.b.wy ^ vec2<u32>(0u, arg_0.x)) % vec2<u32>(32u)))) << (vec2<u32>(u_input.b.x, ~max(arg_1, _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(0u, arg_1)))) % vec2<u32>(32u));
    global1 = _wgslsmith_f_op_f32(-838f * _wgslsmith_f_op_f32(floor(998f)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(1661f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(347f, global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-821f * _wgslsmith_f_op_f32(global0.x + -535f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global0.x, 735f)), _wgslsmith_f_op_f32(ceil(-1868f)))), _wgslsmith_f_op_f32(-525f * _wgslsmith_f_op_f32(round(global0.x))));
    return 1i;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.b, vec3<f32>(_wgslsmith_f_op_f32(min(-177f, arg_2.b.x)), global0.x, _wgslsmith_f_op_f32(ceil(arg_2.b.x)))) - vec3<f32>(_wgslsmith_f_op_f32(min(-674f, _wgslsmith_f_op_f32(f32(-1f) * -990f))), _wgslsmith_f_op_f32(arg_2.b.x * 418f), _wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_1 + arg_1), _wgslsmith_f_op_vec3_f32(abs(arg_1)), !arg_0.x)))))), -1000f < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1917f, _wgslsmith_f_op_f32(f32(-1f) * -526f)))))));
    global1 = _wgslsmith_f_op_f32(-arg_2.b.x);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) + 543f);
    global1 = -581f;
    var var_1 = arg_2;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1102f + _wgslsmith_f_op_f32(sign(var_0)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(f32(-1f) * -656f)))), 939f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(global0.x, -1313f, _wgslsmith_f_op_f32(round(global0.x)));
    let var_0 = Struct_1(~reverseBits(-2147483647i) ^ func_1(vec3<u32>(~4294967295u, 79782u, 0u), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(min(u_input.a.x, u_input.a.x) < func_3(vec2<u32>(4294967295u, u_input.b.x), 63213u, vec3<bool>(false, true, false), false), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1000f, 784f))))), Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(235f, global0.x, global0.x))))))));
    var var_1 = Struct_1(~((i32(-1i) * -u_input.a.x) ^ firstLeadingBit(abs(u_input.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(global0.x * var_0.b.x))), _wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(global0.x, global0.x, 384f)), var_0)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(168f)) * 1685f))));
    let var_2 = 0i;
    let var_3 = _wgslsmith_sub_u32(min(29889u, u_input.b.x), 64903u);
    let var_4 = -807f;
    global1 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~36927u);
}

