struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<f32> {
    let var_0 = !(!vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    let var_1 = Struct_1(!var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(174f, -374f)) * 320f)))));
    var var_2 = u_input.c.x >> (_wgslsmith_mult_u32(1u, ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35441u, 22u)], 22u)]) | (~4294967295u & u_input.a)) % 32u);
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-var_1.c))), 386f)), var_1.c), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1650f, 661f, var_1.c) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(831f, var_1.c, 2783f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.c, var_1.c, var_1.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -190f, var_1.c) * vec3<f32>(var_1.c, 2171f, 354f)))), select(vec3<bool>(true, true, false), !vec3<bool>(true, var_0.x, var_0.x), select(var_1.b, var_1.a, var_0.x))))))));
}

fn func_2() -> vec3<i32> {
    let var_0 = select(!select(vec3<bool>(any(vec2<bool>(false, false)), true, false), vec3<bool>(true, true, true), false | all(vec2<bool>(false, false))), vec3<bool>((any(vec2<bool>(false, true)) || true) || (any(vec3<bool>(false, true, true)) || true), !any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))), false), vec3<bool>(true, false, true));
    global0 = array<u32, 22>();
    var var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-827f + -662f))) == _wgslsmith_f_op_f32(select(1275f, 198f, false)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-357f, 1000f, true)), _wgslsmith_f_op_f32(trunc(-1871f)), _wgslsmith_f_op_f32(322f * 326f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-783f - 334f), _wgslsmith_div_f32(-1541f, 2042f), _wgslsmith_f_op_f32(409f + -1045f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())))));
    let var_3 = Struct_1(select(var_0.x, -2147483647i > (3335i & _wgslsmith_clamp_i32(-63803i, -61098i, 64331i)), all(!(!vec3<bool>(false, true, var_0.x)))), var_0.x, -499f);
    return vec3<i32>(1i, 1i, 1i);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    var var_0 = countOneBits(2147483647i);
    let var_1 = _wgslsmith_dot_vec3_i32(func_2(), -(~(-vec3<i32>(16325i, -5484i, -2147483647i)) ^ abs(func_2())));
    var var_2 = Struct_1(true, true, arg_0.c);
    var var_3 = var_2.a;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c - -1246f))))));
    return !(arg_0.c != var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 22>();
    var var_0 = !vec2<bool>(true || func_1(Struct_1(true, true, 1677f), abs(vec3<u32>(u_input.b.x, 61473u, 1u))), false);
    let var_1 = true;
    let var_2 = -521f;
    let var_3 = 843f;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, reverseBits(1u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-771f, -893f, _wgslsmith_f_op_f32(var_2 + -1132f))))), ~(~4294967295u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -1022f, 692f, 925f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, 418f, var_3))))))));
}

