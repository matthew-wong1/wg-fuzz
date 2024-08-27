struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1() -> Struct_3 {
    let var_0 = u_input.b.wzx;
    let var_1 = 44016u;
    let var_2 = 13705i;
    var var_3 = vec3<bool>(false, !any(vec2<bool>(true, true)), true || (90589u < _wgslsmith_div_u32(firstTrailingBit(var_1), 1u)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-837f * -431f) + _wgslsmith_f_op_f32(abs(726f))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(-226f, -187f)))) - -148f));
    return Struct_3(i32(-1i) * -6009i, Struct_1(var_3.x));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1214f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(829f + _wgslsmith_f_op_f32(sign(1000f))))), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(794f, 1f))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-503f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3086f) + _wgslsmith_f_op_f32(var_0 * var_0)))))), -781f);
    var var_2 = !((false || all(select(vec4<bool>(arg_3.b.a, arg_3.b.a, true, arg_3.b.a), vec4<bool>(arg_3.b.a, arg_3.b.a, true, arg_3.b.a), false))) | (var_0 != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x)))));
    let var_3 = var_1;
    var_2 = select(true, any(select(vec4<bool>(35199u == arg_2.a.x, true, all(vec4<bool>(arg_3.b.a, arg_3.b.a, arg_3.b.a, arg_3.b.a)), arg_3.b.a), vec4<bool>(arg_3.b.a | arg_3.b.a, true, arg_3.b.a, any(vec4<bool>(true, arg_3.b.a, arg_3.b.a, false))), vec4<bool>(false, arg_3.b.a, 0u <= arg_0.a.x, arg_3.b.a))), true);
    return 212f;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = u_input.b.wxw;
    var var_1 = Struct_3(u_input.a.x, arg_0);
    var var_2 = func_1();
    let var_3 = arg_0.a;
    var_1 = func_1();
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(vec3<u32>(0u, 1u, 59837u)), 5691u, Struct_2(vec3<u32>(13421u, 0u, 4294967295u)), func_1()))), _wgslsmith_f_op_f32(max(-253f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<u32>(0u, 23572u, 1u)), 24379u, Struct_2(vec3<u32>(87160u, 40904u, 16086u)), Struct_3(u_input.a.x, Struct_1(false)))))))), _wgslsmith_f_op_f32(f32(-1f) * -140f), 808f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<u32>(0u, 122827u, 4121u)), 1u, Struct_2(vec3<u32>(0u, 4294967295u, 52031u)), Struct_3(u_input.b.x, Struct_1(true)))), _wgslsmith_f_op_f32(sign(647f)), _wgslsmith_f_op_f32(1133f + 652f), 754f), vec4<f32>(_wgslsmith_f_op_f32(278f + 882f), _wgslsmith_f_op_f32(-208f + 1263f), -1008f, _wgslsmith_div_f32(-929f, 323f)), true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, 354f, var_0.x), var_0) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1030f), _wgslsmith_f_op_f32(955f - var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_3(Struct_1(true))))), vec4<f32>(350f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(852f + 1421f)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1646f)), var_0.x))));
    var var_2 = !(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 16622u))) <= ~1u);
    let var_3 = u_input.b;
    var_2 = select(true, -firstTrailingBit(var_3.x) != firstTrailingBit(countOneBits(-2147483647i)), true);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, u_input.a.x), max(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.c, 54507i), -vec2<i32>(63838i, var_3.x)), vec2<i32>(~var_3.x, _wgslsmith_sub_i32(u_input.a.x, var_3.x)))), -1i);
}

