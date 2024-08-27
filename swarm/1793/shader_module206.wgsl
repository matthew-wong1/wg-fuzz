struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = select(~(vec2<i32>(u_input.a, 37848i) ^ vec2<i32>(u_input.a, u_input.a)) << (max(~vec2<u32>(88548u, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(51906u, 49864u), vec2<u32>(1u, 1u))) % vec2<u32>(32u)), reverseBits(vec2<i32>(u_input.a, ~u_input.a)), true) << (firstTrailingBit(~vec2<u32>(~18582u, 1u)) % vec2<u32>(32u));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f)))), 981f)), vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1016f)), _wgslsmith_f_op_f32(round(global0.a.x)))));
    let var_3 = _wgslsmith_f_op_f32(select(-2945f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(883f - var_2.x))))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, false)), vec2<bool>(true, false)))));
    var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(15217i, abs(0i), firstTrailingBit(var_0.x), u_input.a), vec4<i32>(u_input.a, min(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, -1i), vec3<i32>(1i, 0i, 10437i)), -2147483647i), _wgslsmith_div_i32(firstLeadingBit(u_input.a), u_input.a), ~firstLeadingBit(_wgslsmith_clamp_i32(var_0.x, -2147483647i, 23828i))));
    return _wgslsmith_f_op_f32(var_2.x - var_3);
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(197f, _wgslsmith_f_op_f32(1000f - arg_0.x), _wgslsmith_f_op_f32(global0.b.x + -1000f), arg_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(552f)), 766f, _wgslsmith_f_op_f32(-arg_0.x), global0.b.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(522f, arg_0.x, global0.b.x, 1027f)), vec4<bool>(false, false, true, false))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(global0.c, global0.b.x, -983f, -867f)) + _wgslsmith_f_op_vec4_f32(step(global0.b, vec4<f32>(global0.a.x, 1503f, -634f, -2513f)))) - global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -556f)), global0.b.x))));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_f32(func_3()));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(arg_0 + global0.a.wz)))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -1179f)), _wgslsmith_f_op_f32(ceil(411f)))));
    let var_2 = vec2<bool>(true, true);
    return _wgslsmith_dot_vec2_i32(-abs(select(vec2<i32>(42687i, u_input.a), vec2<i32>(u_input.a, u_input.a), select(var_2, var_2, vec2<bool>(var_2.x, false)))), firstTrailingBit(vec2<i32>(abs(firstLeadingBit(1i)), -85164i)));
}

fn func_4(arg_0: i32) -> Struct_2 {
    let var_0 = -1175f;
    let var_1 = var_0;
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.b.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0, 1000f)))), global0.b.x)), _wgslsmith_f_op_f32(1172f + var_1));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(f32(-1f) * -1701f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2895f - -461f))))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-414f)) - global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - 1000f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(809f + 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * var_0) * _wgslsmith_div_f32(var_0, _wgslsmith_div_f32(var_0, -1254f)))), vec4<f32>(_wgslsmith_f_op_f32(func_3()), var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_1)), _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(f32(-1f) * -646f)));
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global0.a))), _wgslsmith_div_vec4_f32(var_2.c, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_2.c)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1542f)) + -408f)));
    return var_2.b;
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    global0 = func_4(_wgslsmith_clamp_i32(max(abs(i32(-1i) * -7723i), func_2(_wgslsmith_div_vec2_f32(arg_0.zx, vec2<f32>(922f, -294f)))), select(~u_input.a, 47531i, true), (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -32315i), vec2<i32>(-10141i, u_input.a)) ^ 1i) << (abs(min(59116u, 0u)) % 32u)));
    let var_0 = !(!all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))));
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_0)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(348f, -654f, arg_0.x, -1019f) + global0.b), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, 813f, -873f, 1000f), vec4<f32>(global0.c, global0.c, 805f, global0.b.x)))))), arg_0, global0.c);
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~11855u, 38323u), abs(15732u), 1u, ~(~27465u)), select(vec4<u32>(~_wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_mult_u32(1u, 47568u), ~1u, 0u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(~31632u, 39651u >> (0u % 32u), 54178u, 30666u), select(vec4<u32>(1u, 0u, 4294967295u, 1u), ~vec4<u32>(1u, 4705u, 1u, 19102u), select(var_0, true, true))), true));
    let var_2 = Struct_3(global0.a.x, func_4(reverseBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, -1i), vec3<i32>(u_input.a, u_input.a, 47567i)))), _wgslsmith_f_op_vec4_f32(exp2(global0.a)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a + global0.b)))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.c)))), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.c, -824f, 256f, 1000f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(661f, -167f, -538f, var_0.b.b.x)))).b, vec4<f32>(_wgslsmith_f_op_f32(sign(579f)), 630f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), global0.a.x));
    var var_1 = !all(vec3<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false)), true, !any(vec3<bool>(true, true, true))));
    var_0 = Struct_3(-2110f, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(var_0.c.x, global0.c, 721f, 124f))) + vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.b.a.x)), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(floor(global0.c)), _wgslsmith_f_op_f32(-786f + 931f)))).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(func_1(global0.a).c.x, _wgslsmith_f_op_f32(-global0.b.x), 481f, -1844f) + _wgslsmith_div_vec4_f32(vec4<f32>(-1360f, 154f, var_0.b.b.x, global0.c), vec4<f32>(global0.c, global0.a.x, global0.a.x, -1086f)))));
    let var_2 = ~abs(-42437i & -_wgslsmith_clamp_i32(2147483647i, u_input.a, u_input.a));
    global0 = var_0.b;
    let var_3 = var_0.b;
    var_0 = func_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1842f)), true)), 1348f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1123f * 785f) * _wgslsmith_f_op_f32(-var_3.c)))));
    let var_4 = vec4<u32>(1u, 1u, 1u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_vec4_u32(var_4 | var_4, ~vec4<u32>(6798u, var_4.x, 4294967295u, var_4.x)), vec4<u32>(var_4.x, _wgslsmith_dot_vec2_u32(var_4.wy, vec2<u32>(0u, var_4.x)), ~35265u, abs(var_4.x))) >> ((var_4 ^ _wgslsmith_div_vec4_u32(~var_4, ~vec4<u32>(var_4.x, var_4.x, 1u, var_4.x))) % vec4<u32>(32u)), ~var_4);
}

