struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> f32 {
    var var_0 = vec3<f32>(794f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c * arg_1.c) * _wgslsmith_f_op_f32(max(arg_1.c, arg_1.c))) - arg_1.c) * arg_1.c), arg_1.c);
    var var_1 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, abs(~u_input.c.x)), vec2<i32>(-15571i << ((41811u | arg_1.b.a.x) % 32u), u_input.a));
    var_1 = 1i;
    var var_2 = -1i;
    var_2 = _wgslsmith_dot_vec3_i32(arg_0, max(vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.a, arg_0.x, -1i), vec4<i32>(u_input.c.x, u_input.a, arg_0.x, u_input.c.x)), 2147483647i) | -vec3<i32>(u_input.a, u_input.c.x, -1i), reverseBits(firstTrailingBit(vec3<i32>(1i, 0i, arg_0.x)))));
    return _wgslsmith_f_op_f32(arg_1.c * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-265f + 770f) + var_0.x), -1949f)));
}

fn func_2(arg_0: bool, arg_1: i32) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(vec3<i32>(2147483647i, arg_1, u_input.c.x), vec3<i32>(arg_1, 49207i, 0i), true), Struct_3(Struct_1(vec3<u32>(u_input.d, 4294967295u, 0u)), Struct_1(vec3<u32>(u_input.d, u_input.d, 93481u)), 158f))) - _wgslsmith_f_op_f32(func_3(vec3<i32>(2147483647i, u_input.c.x, 1i), Struct_3(Struct_1(vec3<u32>(u_input.d, u_input.b, u_input.d)), Struct_1(vec3<u32>(0u, 0u, 27042u)), 250f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f)));
    var var_1 = select(vec4<bool>(select(any(!vec3<bool>(arg_0, arg_0, arg_0)), !arg_0, !arg_0), arg_0, any(vec4<bool>(arg_0, arg_0, true, !arg_0)), !any(vec2<bool>(true, true))), vec4<bool>(true, true, select(arg_0, all(vec4<bool>(arg_0, false, false, arg_0)) == all(vec2<bool>(arg_0, arg_0)), arg_0), true && any(!vec3<bool>(arg_0, true, arg_0))), vec4<bool>(true, false, false, !any(!vec3<bool>(false, arg_0, true))));
    var_1 = vec4<bool>(true, false || any(select(!vec4<bool>(true, var_1.x, true, var_1.x), !vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(false, arg_0, true, true))), arg_0, true);
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_3 {
    return Struct_3(arg_1, Struct_1(arg_1.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) + 1095f)), _wgslsmith_f_op_f32(func_2(true, u_input.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(firstTrailingBit(~0i), max(-5704i, -_wgslsmith_mult_i32(32513i, -3097i)));
    var_0 = u_input.c.x;
    var var_1 = func_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(420f, 788f)) - _wgslsmith_f_op_f32(-134f - -562f)), 2429f)), 365f), Struct_1(vec3<u32>(_wgslsmith_clamp_u32(~1u, 1u, ~u_input.d), u_input.d ^ ~4294967295u, ~u_input.b | 27341u)));
    var var_2 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2567f * func_1(vec2<f32>(var_1.c, var_1.c), var_1.a).c)), _wgslsmith_div_f32(var_1.c, 992f)), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1133f, -137f)), Struct_1(select(select(var_1.a.a, vec3<u32>(var_1.b.a.x, 0u, u_input.d), true), ~vec3<u32>(5507u, 37154u, 33546u), vec3<bool>(true, true, true)))).b);
    let var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.d), 4294967295u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_1.c, _wgslsmith_f_op_f32(-var_2.c))), -613f, var_2.c)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 1699f), -730f))), -1108f, -1345f, _wgslsmith_f_op_f32(ceil(var_1.c))));
}

