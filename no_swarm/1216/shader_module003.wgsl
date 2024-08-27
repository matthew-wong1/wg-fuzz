struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    var var_0 = Struct_1(reverseBits(~_wgslsmith_add_u32(30112u, min(u_input.a.x, u_input.a.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-851f, _wgslsmith_div_f32(-422f, _wgslsmith_f_op_f32(max(889f, -456f))), false)) - _wgslsmith_f_op_f32(max(-653f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-304f + _wgslsmith_f_op_f32(467f - 645f)))))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(~(~4294967295u));
    var_0 = Struct_1(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.a), abs(vec4<u32>(u_input.b, 1u, 12137u, 4294967295u))), 66000u));
    var var_1 = countOneBits(select(vec2<u32>(firstTrailingBit(var_0.a), arg_2.a), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, arg_2.a, arg_2.a), vec3<u32>(arg_1.a, 38859u, 0u)), arg_1.a), u_input.a.zw), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), false)));
    var var_2 = arg_2;
    var_2 = Struct_1(1u);
    return arg_2;
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2;
    var var_1 = arg_2.a & ~1u;
    var_1 = ~(~36453u);
    var var_2 = true;
    let var_3 = -410i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(271f + arg_0) * arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-2147483647i, u_input.d.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(669f, -294f, _wgslsmith_f_op_f32(func_1(Struct_1(u_input.c), vec4<bool>(true, false, false, true)))))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(615f - -1081f), -2147483647i, func_2(u_input.d.x, Struct_1(u_input.a.x), Struct_1(1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f + 1262f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(782f * -158f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-582f + -238f)), -1280f))));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, var_1.x, -946f), vec3<f32>(var_1.x, -1318f, var_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1690f, 247f, var_1.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1452f, var_1.x, 448f) * vec3<f32>(var_1.x, -1227f, var_1.x)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-769f, 199f, -491f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2323f, var_1.x, 1000f) + vec3<f32>(var_1.x, 1000f, var_1.x))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1999f, var_1.x, -435f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -3290f))) * vec3<f32>(941f, -675f, 2630f))));
    var var_3 = Struct_1(u_input.a.x & select(countOneBits(u_input.a.x << (15840u % 32u)), ~_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.yy), all(vec4<bool>(false, true, true, false))));
    var var_4 = !vec2<bool>(_wgslsmith_div_i32(u_input.d.x, ~(-22671i)) == 7999i, !any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true)));
    let var_5 = firstLeadingBit(max(u_input.a.zyy, vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~1u, ~(~var_3.a))));
    var_4 = !vec2<bool>(!((true & var_4.x) || select(false, var_4.x, true)), false);
    var var_6 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~min(1u, 1u), 8291u, ~u_input.a.x), var_5.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_6.a, _wgslsmith_mod_u32(~0u, _wgslsmith_mult_u32(60705u, var_5.x)) & 4294967295u, 6395u, var_5.x), vec3<i32>(1i, var_0.x >> (var_3.a % 32u), 25027i), firstTrailingBit(var_0.x));
}

