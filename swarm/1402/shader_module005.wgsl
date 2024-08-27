struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    return max(_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(36709u, 38943u, 1u)) ^ reverseBits(vec3<u32>(u_input.b, 0u, u_input.b) << (vec3<u32>(0u, u_input.b, u_input.b) % vec3<u32>(32u))), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(0u, 43737u, 4294967295u)))), 83446u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = vec3<bool>(!(!any(vec2<bool>(true, true))) || true, false, false);
    let var_1 = Struct_1(~u_input.b, true, !(!vec2<bool>(true, arg_1.x != -1536f)));
    let var_2 = abs(1200u);
    var_0 = !(!vec3<bool>(all(var_0.xz), any(!vec4<bool>(var_0.x, var_0.x, true, true)), !any(vec2<bool>(var_0.x, var_1.b))));
    var_0 = vec3<bool>(true, var_0.x, 31260u != u_input.b);
    return Struct_1(abs(func_3()), var_1.c.x, vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)) < arg_1.x, false));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = arg_1;
    var_1 = var_0;
    var var_2 = func_2(vec2<i32>((_wgslsmith_mult_i32(u_input.a.x, -54606i) | _wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.zy)) & ((i32(-1i) * -32975i) >> (u_input.b % 32u)), u_input.a.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(-2119f, -314f)) + vec2<f32>(_wgslsmith_f_op_f32(-1000f - -939f), -1000f)))));
    let var_3 = Struct_1(4294967295u, false, !arg_1.c);
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = any(select(vec4<bool>(!all(vec4<bool>(arg_0.b, false, true, arg_0.b)), any(!vec4<bool>(false, arg_0.c.x, arg_0.c.x, arg_0.c.x)), true, func_1(-439f, func_1(1840f, arg_0, u_input.b), u_input.b).b), !vec4<bool>(!arg_0.b, arg_0.b, arg_0.b, arg_0.b), !func_2(vec2<i32>(0i, u_input.a.x), _wgslsmith_div_vec2_f32(vec2<f32>(1459f, 1000f), vec2<f32>(436f, 1331f))).c.x));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(218f, 348f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1535f))) + _wgslsmith_div_f32(-540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) - -130f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-156f)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -464f))))));
    let var_2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-964f + _wgslsmith_f_op_f32(sign(939f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1026f))))), Struct_1(~abs(~1u), arg_0.c.x, arg_0.c), _wgslsmith_mod_u32(u_input.b | ~_wgslsmith_sub_u32(47363u, arg_0.a), func_1(-107f, Struct_1(max(arg_0.a, u_input.b), true, !arg_0.c), 1u).a));
    var_0 = true;
    var var_3 = select(select(select(!select(vec4<bool>(true, true, true, var_2.b), vec4<bool>(arg_0.c.x, true, arg_0.c.x, false), vec4<bool>(arg_0.c.x, var_2.c.x, false, false)), !vec4<bool>(var_2.c.x, arg_0.b, var_2.c.x, false), any(select(vec3<bool>(true, true, false), vec3<bool>(var_2.c.x, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, false, true)))), select(vec4<bool>(func_2(u_input.a.zy, vec2<f32>(132f, -891f)).c.x, arg_0.b, !arg_0.b, false), select(!vec4<bool>(var_2.b, true, arg_0.b, false), !vec4<bool>(false, true, false, var_2.b), !var_2.c.x), !(!vec4<bool>(arg_0.b, var_2.b, var_2.c.x, arg_0.b))), arg_0.c.x), !select(select(vec4<bool>(var_2.c.x, false, true, var_2.b), !vec4<bool>(arg_0.b, false, arg_0.b, var_2.b), true), !vec4<bool>(var_2.b, false, arg_0.b, arg_0.b), vec4<bool>(!var_2.b, arg_0.b, arg_0.b, select(arg_0.b, arg_0.b, false))), !(!vec4<bool>(arg_0.c.x, any(vec4<bool>(arg_0.b, arg_0.c.x, false, true)), false, true)));
    return Struct_1(var_2.a, func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))), func_1(_wgslsmith_f_op_f32(388f + _wgslsmith_f_op_f32(round(802f))), Struct_1(1u, var_3.x, select(vec2<bool>(true, arg_0.b), var_3.ww, var_3.x)), var_2.a), ~_wgslsmith_mod_u32(max(u_input.b, 40515u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 28604u, var_2.a, 9948u), vec4<u32>(0u, 62230u, u_input.b, 0u)))).b, !arg_0.c);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(-1i, _wgslsmith_clamp_i32(u_input.a.x, -1i, select(firstLeadingBit(u_input.a.x), 1i, func_1(-1136f, Struct_1(arg_0.a, arg_0.c.x, arg_0.c), arg_1.x).c.x)));
    var var_1 = u_input.a;
    let var_2 = ~(~8794u);
    let var_3 = !vec4<bool>(false, false, any(!vec2<bool>(arg_0.c.x, arg_0.c.x)) || (abs(var_0) > ~44183i), true);
    let var_4 = ~(~var_2);
    return Struct_1(~arg_0.a, var_3.x, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1u, false, vec2<bool>(true, any(vec3<bool>(all(vec4<bool>(false, true, true, true)), any(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, false, true))))));
    var var_1 = Struct_1(abs(_wgslsmith_div_u32(1900u, ~39929u)), all(!var_0.c), !var_0.c);
    var_1 = func_5(func_4(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(231f * 539f) + _wgslsmith_f_op_f32(f32(-1f) * -441f)), Struct_1(u_input.b, var_0.c.x, !vec2<bool>(false, var_0.c.x)), ~(~var_1.a))), ~(~(select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(31937u, var_1.a, u_input.b), vec3<bool>(true, false, var_1.c.x)) ^ (vec3<u32>(var_1.a, var_1.a, 4294967295u) ^ vec3<u32>(u_input.b, 20999u, u_input.b)))));
    let var_2 = i32(-1i) * -6583i;
    let var_3 = select(select(vec3<bool>(true, false, true || !var_0.b), vec3<bool>(any(select(vec4<bool>(true, true, false, var_1.b), vec4<bool>(var_1.b, false, true, var_1.b), vec4<bool>(var_1.b, false, true, false))), !(var_0.b || false), var_0.c.x), vec3<bool>(max(11464i, var_2) > 0i, !any(vec4<bool>(true, var_1.c.x, true, false)), var_1.c.x)), vec3<bool>(!(var_1.c.x || var_0.c.x), any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(var_1.b, var_1.c.x, true, true), true), select(vec4<bool>(false, var_1.c.x, var_0.b, var_0.b), vec4<bool>(var_1.c.x, true, var_1.b, var_1.c.x), true), var_1.c.x)), u_input.b >= max(9487u, 1u)), var_1.c.x);
    let var_4 = select(!(!(!select(var_3, var_3, var_3))), vec3<bool>(var_0.c.x, (30228i == select(u_input.a.x, var_2, var_0.b)) & !(!var_3.x), var_0.b | var_1.b), vec3<bool>(!var_1.c.x, true, any(vec3<bool>(false, true, var_1.b))));
    var var_5 = select(select(!vec3<bool>(-18666i < var_2, var_3.x, var_1.c.x), !var_4, select(var_3, !var_3, -17607i == (u_input.a.x >> (1u % 32u)))), !select(vec3<bool>(true, any(var_3), false || var_1.c.x), var_3, vec3<bool>(var_3.x & var_4.x, var_1.b, false)), vec3<bool>(!((var_2 << (u_input.b % 32u)) == _wgslsmith_mod_i32(var_2, var_2)), all(select(!vec3<bool>(var_3.x, var_1.b, var_1.b), !var_4, var_3)), true));
    let var_6 = vec3<i32>(var_2, -firstTrailingBit(var_2), firstLeadingBit(var_2)) >> (_wgslsmith_sub_vec3_u32(firstTrailingBit(~vec3<u32>(var_1.a, var_1.a, var_1.a)), vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, var_1.a)), vec2<u32>(0u, var_1.a) >> (vec2<u32>(u_input.b, var_0.a) % vec2<u32>(32u))), var_1.a << (~4294967295u % 32u))) % vec3<u32>(32u));
    let var_7 = select(vec2<u32>(u_input.b, max(u_input.b, ~(~28668u))), vec2<u32>(39538u, 896u), !any(!(!vec4<bool>(false, var_5.x, var_0.c.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.zz, abs(~(-vec4<i32>(var_2, -1i, 0i, var_6.x) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(var_2, u_input.a.x, var_2, 24519i), vec4<i32>(-1i, -10429i, -38008i, var_6.x)))), select(_wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(~vec3<i32>(-21361i, u_input.a.x, 2147483647i), -vec3<i32>(-1i, u_input.a.x, 1i), vec3<i32>(-45521i, var_6.x, 0i))), -vec3<i32>(i32(-1i) * -15086i, _wgslsmith_add_i32(u_input.a.x, var_2), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, var_6.x)), var_3));
}

