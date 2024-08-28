struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(countOneBits(~0u));
    var_0 = Struct_1(reverseBits(4161u));
    let var_1 = Struct_1(u_input.a.x);
    let var_2 = ~(~max(-firstLeadingBit(-2079i), 1i));
    var_0 = var_1;
    return 1u;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = select(!arg_0, select(arg_0, !vec4<bool>(all(vec3<bool>(true, true, false)), true, arg_0.x, true), arg_0), !vec4<bool>(true, true, !select(true, arg_0.x, false), all(!arg_0.yxw)));
    var var_1 = -13473i;
    var_1 = -2147483647i;
    var var_2 = reverseBits(1u);
    var var_3 = vec3<bool>(!(var_0.x != true) | !var_0.x, var_0.x, true);
    return 4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = !((arg_2 ^ firstLeadingBit(_wgslsmith_div_i32(-1i, 589i))) <= 0i);
    var_0 = !all(vec4<bool>(true, arg_2 < arg_2, true == all(vec3<bool>(true, true, true)), true));
    let var_1 = ~min(min(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(3592u, 45501u, arg_1.a, arg_0.a)), u_input.a), vec4<u32>(~arg_1.a, 0u, 1u, u_input.a.x) & ~u_input.a);
    var var_2 = Struct_1(countOneBits(~(~var_1.x) << (_wgslsmith_dot_vec2_u32(u_input.a.xy, ~vec2<u32>(arg_3.a, arg_1.a)) % 32u)));
    var_0 = select(arg_2 < -arg_2, true | all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true))), false);
    return arg_1;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(u_input.a.x);
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-472f - -1557f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-817f + -1889f)))));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1479f);
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(413f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1478f))))));
    return func_4(Struct_1(_wgslsmith_sub_u32(abs(u_input.a.x), ~(~38062u))), Struct_1(func_2()), 0i << (~u_input.a.x % 32u), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(90188u, func_3(vec4<bool>(false, var_1.x, true, var_1.x), var_0), func_2(), u_input.a.x), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-209f, -273f, -652f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-209f, 408f, 437f))) + vec3<f32>(_wgslsmith_f_op_f32(floor(549f)), -883f, _wgslsmith_f_op_f32(f32(-1f) * -167f))))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(997f, 1004f) + _wgslsmith_f_op_f32(211f + 197f)), 1424f), _wgslsmith_div_f32(-1348f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-775f, 643f)))))));
    var_0 = func_4(Struct_1(_wgslsmith_mult_u32(u_input.a.x, 0u)), func_4(func_1(), func_4(Struct_1(~9494u), func_1(), 1i, Struct_1(u_input.a.x)), -(i32(-1i) * -2147483647i), func_4(func_4(func_1(), func_4(Struct_1(var_0.a), Struct_1(38494u), -1i, Struct_1(var_0.a)), countOneBits(32698i), func_4(Struct_1(u_input.a.x), Struct_1(56472u), 4366i, Struct_1(var_0.a))), func_4(func_4(Struct_1(u_input.a.x), Struct_1(56481u), 2002i, Struct_1(35979u)), func_4(Struct_1(0u), Struct_1(246u), -2147483647i, Struct_1(56848u)), firstTrailingBit(23410i), func_1()), ~_wgslsmith_dot_vec2_i32(vec2<i32>(79348i, 31491i), vec2<i32>(0i, -37032i)), Struct_1(_wgslsmith_mult_u32(var_0.a, 21624u)))), reverseBits(_wgslsmith_div_i32(1i >> (func_3(vec4<bool>(false, true, true, false), Struct_1(var_0.a)) % 32u), -(~(-2147483647i)))), func_1());
    var var_2 = u_input.a.yz;
    var var_3 = Struct_1(1u ^ ~abs(var_0.a));
    var_2 = vec2<u32>(3955u, ~var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(119f * var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(339f)) - _wgslsmith_f_op_f32(-1245f + 816f))))), firstTrailingBit(vec2<i32>(abs(0i) >> (firstTrailingBit(0u) % 32u), -2147483647i)), _wgslsmith_add_vec2_i32(-(~abs(vec2<i32>(20164i, -15115i))), countOneBits(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(2147483647i, 40128i)), ~vec2<i32>(-45981i, 46978i)))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1217f)), -370f)))), -vec4<i32>(-(~1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-42173i, 2147483647i, 0i, 0i)), _wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(2147483647i, -2147483647i, 9611i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, -1i), -36162i)));
}

