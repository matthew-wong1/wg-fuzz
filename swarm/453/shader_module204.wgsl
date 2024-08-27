struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = select(_wgslsmith_mult_u32(u_input.c, ~0u), arg_0, all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true))) && (_wgslsmith_dot_vec4_i32(abs(vec4<i32>(39536i, 0i, 2147483647i, u_input.e.x)), u_input.b) == 28564i));
    var var_1 = firstLeadingBit(u_input.a.x);
    return 924f;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(u_input.c, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(894f, 1728f) * _wgslsmith_f_op_f32(761f * -158f)) * _wgslsmith_f_op_f32(func_3(u_input.d.x ^ u_input.d.x))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2282f * 1000f))) + _wgslsmith_f_op_f32(max(953f, _wgslsmith_f_op_f32(step(-341f, 158f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(974f, -1059f, 513f)))) * vec3<f32>(1f, 1f, 1f)))));
    var var_1 = Struct_1(~0u, vec2<f32>(var_0.d.x, 1274f), true, var_0.d);
    var_1 = Struct_1(86561u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, 516f)) - vec2<f32>(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(min(var_0.d.x, 527f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-622f, _wgslsmith_f_op_f32(var_0.d.x + 246f)) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 1f))), !(abs(~var_0.a) != ~reverseBits(6951u)), var_1.d);
    var var_2 = !(all(select(vec4<bool>(true, true, var_0.c, var_1.c), vec4<bool>(false, true, var_0.c, var_1.c), !vec4<bool>(false, var_0.c, false, true))) || false);
    var_1 = var_0;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.d.x)) + var_0.d.x));
}

fn func_1() -> Struct_2 {
    var var_0 = ~u_input.c;
    let var_1 = func_2();
    var_0 = _wgslsmith_sub_u32(~u_input.d.x, u_input.c);
    var var_2 = u_input.c;
    let var_3 = select(!vec4<bool>(true, _wgslsmith_f_op_f32(var_1.a * var_1.a) != _wgslsmith_f_op_f32(-var_1.a), select(any(vec2<bool>(true, true)), true, true), true), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, all(vec2<bool>(true, any(vec3<bool>(true, true, false)))), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.d.x == 0u), vec4<bool>(true, false, true, false), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true), vec4<bool>(false, true, false, false), any(vec4<bool>(false, false, true, false)))));
    return Struct_2(_wgslsmith_f_op_f32(trunc(var_1.a)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>) -> vec3<f32> {
    let var_0 = 36172u;
    let var_1 = Struct_1(abs(_wgslsmith_sub_u32(_wgslsmith_mult_u32(max(0u, 85484u), 0u), _wgslsmith_add_u32(0u, u_input.c))), _wgslsmith_f_op_vec2_f32(sign(arg_2)), arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1139f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_1.a)), _wgslsmith_f_op_f32(func_3(~1u))) * _wgslsmith_div_vec3_f32(vec3<f32>(func_2().a, arg_1.a, _wgslsmith_f_op_f32(1418f + arg_1.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_2.x, arg_2.x) - vec3<f32>(-593f, -1736f, 280f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-193f, 251f, 468f), vec3<f32>(-330f, 961f, arg_1.a))))));
    var var_2 = Struct_1(var_0, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(653f + -283f) + 1f), arg_1.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_1.d.xy + _wgslsmith_div_vec2_f32(var_1.b, arg_2)))))), all(vec2<bool>(!all(vec3<bool>(var_1.c, false, true)), all(!vec3<bool>(arg_0, var_1.c, arg_0)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.d))));
    let var_3 = 1615i;
    let var_4 = Struct_2(-525f);
    return var_1.d;
}

fn func_5(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(arg_0.b.x)));
    let var_1 = 93820u | firstTrailingBit(~arg_0.a);
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-589f);
    let var_1 = select(select(!vec4<bool>(var_0.a >= -350f, any(vec4<bool>(true, true, false, false)), true, true), !vec4<bool>(any(vec4<bool>(false, false, true, false)), true, true, false), any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), all(vec2<bool>(false, false))))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), true)), !any(vec2<bool>(false, true)));
    var var_2 = func_5(Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.d.x, countOneBits(12539u)), _wgslsmith_mod_u32(~u_input.c, u_input.c), 4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(925f, var_0.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(791f, var_0.a), vec2<f32>(var_0.a, var_0.a), vec2<bool>(var_1.x, false))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-674f, var_0.a), vec2<f32>(1000f, 591f)))), false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1681f, 940f, var_0.a)), _wgslsmith_f_op_vec3_f32(func_4(true, func_1(), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, 1580f))))))));
    var var_3 = select(!var_1, select(vec4<bool>(var_1.x, true, u_input.c >= 30511u, var_1.x), select(vec4<bool>(true, !var_1.x, u_input.c > 0u, !var_1.x), var_1, true), !select(select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(true, var_1.x, true, true), true), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), var_1, var_1.x), false)), !(!any(vec2<bool>(var_1.x, false)) | var_1.x));
    var_3 = var_1;
    var var_4 = !var_3.zwz;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(i32(-1i) * -7832i));
}

