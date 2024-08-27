struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> i32 {
    let var_0 = Struct_2(arg_0, u_input.a.x, Struct_1(vec2<bool>(any(vec3<bool>(true, true, true)), arg_0.a.x)), _wgslsmith_dot_vec3_u32(~u_input.a, ~select(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), countOneBits(u_input.a), arg_0.a.x)));
    let var_1 = Struct_2(var_0.a, select(reverseBits((0u << (0u % 32u)) << (var_0.d % 32u)), var_0.d, u_input.b.x < u_input.b.x), arg_0, 1u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(sign(643f)))), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(max(1342f, arg_1.x)))) * arg_1.x)));
    var var_3 = var_0.a.a.x;
    var var_4 = firstLeadingBit(firstTrailingBit(vec4<u32>(~firstLeadingBit(u_input.a.x), ~(u_input.a.x >> (1u % 32u)), 88897u, var_0.b)));
    return 27906i;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: bool) -> vec2<bool> {
    let var_0 = select(vec4<bool>(true, select(_wgslsmith_sub_u32(0u, arg_2.x) >= 1u, true, arg_3), arg_3, true), vec4<bool>(true, any(vec4<bool>(true, arg_1.a.a.x, true & arg_3, u_input.a.x < u_input.a.x)), true, any(!select(vec4<bool>(arg_1.c.a.x, false, arg_1.a.a.x, arg_1.c.a.x), vec4<bool>(false, arg_1.c.a.x, arg_3, true), vec4<bool>(true, true, arg_3, true)))), select(vec4<bool>(arg_3, true, any(vec2<bool>(arg_1.a.a.x, false)), false), vec4<bool>(!(!arg_1.c.a.x), arg_3, select(arg_1.c.a.x && arg_1.a.a.x, true, arg_3), (38997i & u_input.b.x) <= arg_0.x), any(select(vec3<bool>(false, true, arg_1.c.a.x), vec3<bool>(true, arg_3, false), !vec3<bool>(true, false, arg_3)))));
    var var_1 = u_input.a;
    var var_2 = Struct_1(select(vec2<bool>(27979u < _wgslsmith_mult_u32(10941u, arg_2.x), any(select(var_0.wz, arg_1.c.a, arg_3))), vec2<bool>(var_0.x, false), select(false, true == (arg_1.c.a.x | false), true)));
    var var_3 = !var_0;
    var var_4 = Struct_2(Struct_1(var_2.a), abs(~(~firstTrailingBit(112144u))), Struct_1(select(!vec2<bool>(false, var_0.x), select(select(vec2<bool>(arg_3, var_2.a.x), arg_1.c.a, arg_1.a.a.x), arg_1.a.a, arg_3), var_0.wz)), 4294967295u);
    return select(select(vec2<bool>(true, any(select(vec3<bool>(var_2.a.x, var_0.x, var_0.x), var_3.xyx, arg_1.a.a.x))), !var_4.c.a, select(!select(arg_1.a.a, var_2.a, vec2<bool>(var_3.x, var_3.x)), select(select(var_0.yw, vec2<bool>(true, arg_1.a.a.x), vec2<bool>(arg_1.a.a.x, true)), arg_1.c.a, false), !vec2<bool>(arg_1.a.a.x, false))), var_0.yw, false);
}

fn func_2(arg_0: f32, arg_1: bool) -> bool {
    var var_0 = vec2<bool>(~firstTrailingBit(~1u) >= ~max(u_input.a.x, _wgslsmith_div_u32(88666u, u_input.a.x)), any(vec3<bool>(select(arg_1, !arg_1, true), (arg_1 && false) | all(vec2<bool>(true, arg_1)), all(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, false, arg_1))))));
    var_0 = func_4(-_wgslsmith_mod_vec3_i32(vec3<i32>(min(u_input.b.x, u_input.b.x), func_3(Struct_1(vec2<bool>(arg_1, false)), vec3<f32>(3015f, -1753f, 716f)), -9952i), ~(~vec3<i32>(u_input.b.x, 0i, 0i))), Struct_2(Struct_1(!(!vec2<bool>(arg_1, var_0.x))), u_input.a.x >> ((u_input.a.x ^ abs(u_input.a.x)) % 32u), Struct_1(select(vec2<bool>(arg_1, var_0.x), vec2<bool>(true, arg_1), vec2<bool>(true, true))), ~(~abs(15085u))), abs(vec2<u32>(u_input.a.x >> (max(u_input.a.x, u_input.a.x) % 32u), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x) >> (35210u % 32u))), select(false, false, var_0.x));
    var var_1 = false;
    var var_2 = Struct_2(Struct_1(vec2<bool>(true, false)), u_input.a.x, Struct_1(select(vec2<bool>(true, select(var_0.x, false, var_0.x)), select(vec2<bool>(true, true), func_4(vec3<i32>(22822i, 2147483647i, -2147483647i), Struct_2(Struct_1(vec2<bool>(arg_1, arg_1)), 4294967295u, Struct_1(vec2<bool>(true, true)), u_input.a.x), vec2<u32>(u_input.a.x, 0u), var_0.x), arg_1 & var_0.x), all(!vec3<bool>(var_0.x, var_0.x, true)))), abs(~1u));
    var var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(90231u, 10465u), firstLeadingBit(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(u_input.a.x, 0u)), firstTrailingBit(~vec2<u32>(var_2.b, u_input.a.x)), ~vec2<u32>(93333u, 19544u))));
    return arg_1;
}

fn func_1() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1041f, _wgslsmith_f_op_f32(1000f + 2993f), 1091f) - vec3<f32>(983f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1000f, false))) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1128f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(818f, var_0.x, -1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(633f, 356f, -985f)), all(vec3<bool>(true, false, true)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(791f, _wgslsmith_f_op_f32(f32(-1f) * -1091f), -421f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1650f, var_0.x))) + vec3<f32>(105f, _wgslsmith_f_op_f32(2146f * var_0.x), _wgslsmith_f_op_f32(step(1000f, 1292f))))), !select(vec3<bool>(true, true, false), vec3<bool>(true, select(true, false, false), func_2(var_0.x, true)), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    let var_1 = Struct_1(func_4(countOneBits(-(vec3<i32>(u_input.b.x, 1i, 0i) | vec3<i32>(u_input.b.x, 1i, u_input.b.x))), Struct_2(Struct_1(vec2<bool>(true, true)), 15950u, Struct_1(vec2<bool>(true, true)), u_input.a.x), ~(~select(u_input.a.zx, vec2<u32>(4294967295u, u_input.a.x), true)), true));
    let var_2 = Struct_2(Struct_1(vec2<bool>(false, true)), _wgslsmith_sub_u32(u_input.a.x, abs(32254u)) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, 77750u, u_input.a.x), vec4<u32>(44938u, 87234u, 16743u, 71421u)), vec4<u32>(0u, 68279u, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 60646u)), 0u) % 32u), var_1, 1u);
    let var_3 = var_2;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 886f, 1839f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -866f, -159f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1548f, var_0.x, var_0.x, -336f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1069f * -218f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1206f))) + -250f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_1())))));
    let var_2 = ~25164u;
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -985f))), 2356f)));
    let var_4 = var_2 << (~(~min(4294967295u, var_2)) % 32u);
    var var_5 = Struct_1(func_4(~(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) << (vec3<u32>(1u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) ^ vec3<i32>(-1i, u_input.b.x, ~u_input.b.x), Struct_2(Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), var_4, Struct_1(vec2<bool>(true, true)), var_2 | _wgslsmith_mult_u32(var_4, 76789u)), vec2<u32>((37791u ^ u_input.a.x) ^ ~0u, select(52156u, u_input.a.x, true)), false | all(vec2<bool>(true, false))));
    let var_6 = select(var_5.a.x, true, all(select(!select(vec4<bool>(true, var_5.a.x, var_5.a.x, true), vec4<bool>(false, var_5.a.x, var_5.a.x, var_5.a.x), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(var_5.a.x, true, var_5.a.x, var_5.a.x), vec4<bool>(true, var_5.a.x, var_5.a.x, true), true), !vec4<bool>(var_5.a.x, var_5.a.x, true, var_5.a.x), vec4<bool>(true, true, var_5.a.x, var_5.a.x)), select(!vec4<bool>(var_5.a.x, false, var_5.a.x, var_5.a.x), vec4<bool>(var_5.a.x, var_5.a.x, true, var_5.a.x), var_5.a.x))));
    var var_7 = var_1.x;
    var var_8 = vec3<bool>(select(true && (_wgslsmith_f_op_vec4_f32(func_1()).x != _wgslsmith_f_op_f32(select(219f, -317f, true))), var_5.a.x, ~max(17290i, -2147483647i) <= u_input.b.x), var_6, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.wz, 1931f, ~u_input.a.xy, _wgslsmith_mult_u32(abs(u_input.a.x), u_input.a.x));
}

