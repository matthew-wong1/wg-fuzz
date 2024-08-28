struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-105f, 596f, -134f, -1668f)))))));
    var var_2 = var_1;
    var_2 = Struct_1(abs(select(_wgslsmith_mod_u32(select(u_input.d.x, var_2.a, var_0.x), ~1u), max(max(63403u, var_1.a), 44184u), true)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_2.b.x, -1707f, var_0.x)), _wgslsmith_f_op_f32(-var_1.b.x), 0u <= u_input.b.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -712f) * _wgslsmith_f_op_f32(trunc(1191f))), var_1.b.x)), _wgslsmith_f_op_f32(-var_2.b.x)));
    var var_3 = _wgslsmith_sub_u32(min(4294967295u, ~1u), _wgslsmith_sub_u32(_wgslsmith_div_u32(5083u, _wgslsmith_add_u32(u_input.b.x, reverseBits(75388u))), 1u));
    return var_2.a;
}

fn func_2(arg_0: i32, arg_1: f32) -> vec4<bool> {
    var var_0 = Struct_1(~func_3(), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(435f, arg_1, arg_1, arg_1), vec4<f32>(269f, 731f, 636f, -1000f), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, arg_1, arg_1, 552f)))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(arg_1 * 279f), arg_1)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-539f)) - -2845f), arg_1, 1336f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1));
    var var_2 = u_input.d.x;
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~abs(u_input.b), ~u_input.b), _wgslsmith_f_op_vec4_f32(sign(var_0.b)));
    var_0 = Struct_1(~1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)))));
    return !select(select(vec4<bool>(false, true, true, any(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, true), false);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_add_u32(u_input.d.x, 7464u), vec4<f32>(_wgslsmith_f_op_f32(-293f - _wgslsmith_f_op_f32(f32(-1f) * -743f)), 890f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-740f - -439f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(152f - 1072f), _wgslsmith_f_op_f32(min(-1240f, 2572f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -277f) + -507f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(255f + -783f) - -244f))));
    let var_1 = Struct_1(u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1725f, var_0.b.x, var_0.b.x, 872f) - vec4<f32>(var_0.b.x, var_0.b.x, 694f, -1269f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-174f, var_0.b.x, var_0.b.x, var_0.b.x), vec4<f32>(var_0.b.x, 772f, var_0.b.x, 705f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 2671f, -352f, 125f)) + var_0.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.b, var_0.b, var_0.b.x > var_0.b.x)))));
    let var_2 = var_0.b.x;
    let var_3 = Struct_1(51148u, var_0.b);
    let var_4 = vec3<bool>(-752f < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1513f)))), func_2(select(1i, ~arg_0.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(648f, var_2)))).x, false);
    return Struct_1(abs(_wgslsmith_mod_u32(~select(var_1.a, var_3.a, var_4.x), 4294967295u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.b, var_3.b), vec4<f32>(-685f, var_3.b.x, var_1.b.x, var_0.b.x)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(f32(-1f) * -561f), _wgslsmith_f_op_f32(min(1000f, -193f)), _wgslsmith_f_op_f32(var_2 + 896f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b - var_0.b))));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = func_4(_wgslsmith_mod_vec2_i32(~(~u_input.c.zw), u_input.c.zy), !func_2(~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -955f))));
    var_0 = Struct_1(var_0.a, vec4<f32>(var_0.b.x, 353f, 1000f, var_0.b.x));
    var_0 = Struct_1(abs(1u), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), -1214f))), var_0.b.x, 1089f, _wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x))));
    let var_1 = !func_2(10242i, 730f);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), var_0.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(func_4(u_input.c.xx, vec4<bool>(true, arg_0, true, var_1.x)).b, var_0.b))));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.x)), var_2.x), _wgslsmith_clamp_i32(1i, -abs(52169i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, 1i, 817i), u_input.c)) << ((0u ^ var_0.a) % 32u), u_input.d.yxw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1108f;
    let x = u_input.a;
    s_output = func_1(all(select(vec3<bool>(true, true, any(vec3<bool>(true, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, true, true, false))), true)));
}

