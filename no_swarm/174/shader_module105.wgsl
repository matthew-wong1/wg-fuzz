struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = u_input.a;
    var var_1 = !select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), vec2<bool>(true, true), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))), select(vec2<bool>(true, true), vec2<bool>(true, true), !any(vec3<bool>(true, true, true))), true);
    var var_2 = _wgslsmith_f_op_f32(769f + -1814f);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(692f)), -120f, all(!vec3<bool>(var_1.x, false, false)))), 325f));
    let var_4 = vec4<u32>(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 31062u), ~vec2<u32>(4294967295u, 32463u))), _wgslsmith_clamp_u32(~1u, 17869u, 1u) ^ _wgslsmith_mod_u32(15498u, 4294967295u), 63857u, 1u);
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(min(min(var_4.x, var_4.x), var_4.x >> (13532u % 32u)), 83305u, select(~var_4.x, _wgslsmith_dot_vec2_u32(vec2<u32>(24479u, var_4.x), vec2<u32>(var_4.x, 4294967295u)), var_1.x)), _wgslsmith_mod_vec3_u32(~var_4.wzz, ~var_4.zyw));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1135f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-346f)), _wgslsmith_f_op_f32(f32(-1f) * -668f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2433f * 930f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1715f * 902f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -672f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1304f) + _wgslsmith_f_op_f32(f32(-1f) * -133f))));
    let var_2 = Struct_2(0i, Struct_1(1u), Struct_1(60936u), Struct_1(43725u), Struct_1(func_3()));
    var var_3 = Struct_3(var_2.c, u_input.b.x, true, !arg_0.x);
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_1.x))));
    return Struct_1(var_2.b.a);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = _wgslsmith_dot_vec2_u32(~(~reverseBits(vec2<u32>(arg_3.d.a, arg_1.a.a))), vec2<u32>(0u, arg_3.c.a));
    var var_1 = _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(~(-2147483647i), 19130i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, -2147483647i, -1i, -9378i), vec4<i32>(55857i, -3023i, 15759i, u_input.a.x)))), vec3<i32>(~arg_3.a, u_input.b.x, ~(-1i)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -340f);
    var var_3 = ~(~((vec2<u32>(var_0, var_0) ^ abs(vec2<u32>(0u, arg_3.c.a))) << (select(vec2<u32>(arg_3.e.a, 1u), ~vec2<u32>(arg_1.a.a, 54467u), select(vec2<bool>(true, false), arg_0.zw, arg_2)) % vec2<u32>(32u))));
    var_1 = vec3<i32>(41189i >> (arg_1.a.a % 32u), _wgslsmith_div_i32(-max(var_1.x, ~var_1.x), ~arg_3.a), -max(~0i, arg_3.a));
    return vec2<f32>(2698f, _wgslsmith_f_op_f32(floor(var_2)));
}

fn func_1(arg_0: u32, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1297f, -1000f)))), 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(select(select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, true, false)), !vec4<bool>(arg_1, arg_1, false, true), -23723i < u_input.b.x), Struct_3(func_2(vec4<bool>(false, true, arg_1, arg_1)), u_input.b.x, -1i <= u_input.b.x, any(vec2<bool>(arg_1, false))), !(!arg_1), Struct_2(1i, func_2(vec4<bool>(true, arg_1, true, arg_1)), func_2(vec4<bool>(true, false, arg_1, false)), func_2(vec4<bool>(arg_1, true, true, true)), func_2(vec4<bool>(arg_1, true, false, arg_1))))) - vec2<f32>(145f, 1f)), false));
    var var_1 = max(~(~vec2<u32>(_wgslsmith_div_u32(arg_0, arg_0), 54292u)), _wgslsmith_mod_vec2_u32(select(~vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(arg_0, arg_0)), ~vec2<u32>(arg_0, arg_0)), vec2<bool>(var_0.x > 1585f, arg_0 > arg_0)), firstTrailingBit(vec2<u32>(4294967295u, 12507u)) ^ max(reverseBits(vec2<u32>(arg_0, arg_0)), reverseBits(vec2<u32>(arg_0, 14970u)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(false, arg_1, arg_1, arg_1), Struct_3(Struct_1(4294967295u), -25116i, true, false), false, Struct_2(-1i, Struct_1(4885u), Struct_1(0u), Struct_1(1u), Struct_1(arg_0)))).x))))));
    var_1 = vec2<u32>(arg_0, ~28505u);
    let var_3 = Struct_1(~30942u);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(firstTrailingBit(~func_1(0u, false)), select(50066u << (firstTrailingBit(34270u) % 32u), ~_wgslsmith_div_u32(~0u, 1u), any(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))))), _wgslsmith_mod_u32(func_1(abs(~35270u), all(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), 0u), _wgslsmith_mult_u32(0u, func_1(~0u, true)) >> (0u % 32u));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(598f, -304f)))), _wgslsmith_f_op_f32(min(973f, _wgslsmith_f_op_f32(f32(-1f) * -1912f))))), 1f)), -1000f, any(!vec3<bool>(all(vec3<bool>(false, false, false)), all(vec2<bool>(true, false)), true))));
    let var_2 = func_2(!vec4<bool>(any(vec3<bool>(true, false, false)) & false, select(true, true, true), select(true, true, var_0.x <= 48757u), !(u_input.a.x != u_input.a.x)));
    let var_3 = max(~vec3<u32>(var_0.x, var_0.x, 3161u) >> (var_0.zwz % vec3<u32>(32u)), vec3<u32>(1u, ~_wgslsmith_add_u32(33521u, var_0.x), _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_2.a, 14382u, var_0.x), var_0.zxx, false), _wgslsmith_sub_vec3_u32(var_0.zwx, vec3<u32>(10580u, var_0.x, var_0.x))))) | var_0.wwz;
    var_1 = 330f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.wyy, vec4<i32>(_wgslsmith_sub_i32(1i, -5115i), _wgslsmith_dot_vec2_i32(u_input.a, countOneBits(u_input.b)), _wgslsmith_add_i32(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, 6821i)), u_input.a.x) >> (vec4<u32>(func_1(46799u, false) >> (max(var_2.a, var_2.a) % 32u), _wgslsmith_dot_vec3_u32(var_0.xxy, var_0.xzy) & ~var_3.x, var_0.x, _wgslsmith_mult_u32(var_0.x << (var_2.a % 32u), 64345u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(286f, -1105f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(371f, -586f))), _wgslsmith_f_op_f32(-293f - _wgslsmith_f_op_f32(f32(-1f) * -2090f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(139f + -149f))))), _wgslsmith_div_u32(var_3.x, _wgslsmith_add_u32(select(var_3.x, var_0.x, false) >> (4294967295u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_0.x, 18093u), vec3<u32>(var_0.x, var_3.x, 12161u) << (var_3 % vec3<u32>(32u))))));
}

