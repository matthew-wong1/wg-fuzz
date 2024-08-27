struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_4) -> i32 {
    let var_0 = any(!vec3<bool>(any(vec3<bool>(true, true, arg_1.x)), arg_1.x, any(arg_1.zw) & all(vec2<bool>(arg_1.x, true))));
    var var_1 = u_input.d;
    let var_2 = Struct_1(~(~(_wgslsmith_mod_u32(arg_2.c.c, 1u) | 1u)), 1i, 1u, arg_2.d, var_1.x);
    var var_3 = ~arg_2.c.c;
    var var_4 = Struct_2((_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-19549i, 1i), reverseBits(-12109i), u_input.b) >= -2147483647i) & (any(!arg_2.a.yyx) && arg_1.x), 49912i, arg_1.yxz);
    return reverseBits(arg_2.b.b);
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = u_input.d.x;
    let var_1 = firstTrailingBit(abs(countOneBits(vec3<u32>(countOneBits(0u), u_input.a >> (1u % 32u), _wgslsmith_mult_u32(u_input.a, u_input.a)))));
    let var_2 = Struct_2(true, -func_3(vec3<i32>(0i, -2147483647i, -1i), !vec4<bool>(false, arg_0.x, arg_0.x, false), Struct_4(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), Struct_2(true, 73235i, arg_0), Struct_3(Struct_2(true, u_input.c.x, vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), Struct_2(arg_0.x, u_input.b, vec3<bool>(true, true, false)), 25794u, -507f), u_input.a)) >> (0u % 32u), !(!(!(!vec3<bool>(true, arg_0.x, false)))));
    var var_3 = !(!(_wgslsmith_f_op_f32(sign(-759f)) == 119f));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-972f, -217f, 192f, 334f)) + vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-517f, 375f, 534f, -673f) + vec4<f32>(-339f, -106f, 1968f, 209f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(867f, 894f, 849f, 1227f)))), all(vec2<bool>(var_2.c.x, var_2.a)) && false)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1196f, -361f, _wgslsmith_f_op_f32(f32(-1f) * -1349f), _wgslsmith_f_op_f32(855f + 1381f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -415f, -1062f, 388f)))))));
    return var_2;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec2<u32>) -> u32 {
    let var_0 = vec4<u32>(firstTrailingBit(u_input.a ^ _wgslsmith_add_u32(u_input.a, abs(arg_1.d))), u_input.a, _wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(~select(arg_1.d, 4294967295u, arg_1.c.b.c.x), _wgslsmith_mod_u32(~arg_3.x, ~arg_1.c.c), ~abs(4294967295u))), firstLeadingBit(8628u));
    var var_1 = func_2(func_2(vec3<bool>(func_2(arg_1.b.c).c.x, arg_1.a.x, (arg_0 == arg_1.b.b) && !arg_1.b.c.x)).c);
    var var_2 = Struct_4(arg_1.a, func_2(vec3<bool>(all(select(vec3<bool>(false, var_1.a, true), vec3<bool>(true, false, false), true)), any(!arg_1.c.b.c), select(!arg_1.b.c.x, all(arg_1.a.wyx), true))), Struct_3(arg_1.b, arg_1.b, ~(~_wgslsmith_add_u32(arg_3.x, arg_1.c.c)), _wgslsmith_f_op_f32(max(-510f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_1.c.d, -1000f))))))), ~var_0.x);
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(29024u, ~(4294967295u >> (firstTrailingBit(0u) % 32u))), var_2.c.c);
    var var_4 = ~_wgslsmith_clamp_vec4_i32(~(-arg_2), u_input.d, vec4<i32>(~var_1.b, arg_0, ~func_3(u_input.d.zzz, vec4<bool>(false, arg_1.a.x, false, false), arg_1), var_1.b << (66861u % 32u)));
    return u_input.a;
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = max(1u, _wgslsmith_sub_u32(func_4(-countOneBits(24093i), Struct_4(vec4<bool>(false, false, false, false), func_2(vec3<bool>(false, false, false)), Struct_3(Struct_2(false, -22967i, vec3<bool>(false, true, false)), Struct_2(false, -45323i, vec3<bool>(true, false, true)), u_input.a, 821f), ~u_input.a), (vec4<i32>(2147483647i, 23639i, arg_0, arg_0) & vec4<i32>(1i, 0i, -2147483647i, arg_0)) | (vec4<i32>(-1i, u_input.d.x, 0i, 2147483647i) | vec4<i32>(u_input.c.x, arg_0, -27989i, 2147483647i)), vec2<u32>(u_input.a >> (1u % 32u), 1u << (0u % 32u))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(30563u, 1u, u_input.a, 1u), countOneBits(vec4<u32>(u_input.a, 57031u, u_input.a, u_input.a))))));
    let var_1 = Struct_1(var_0, (-arg_0 | u_input.b) << (countOneBits(0u) % 32u), 0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.a >> (var_0 % 32u), ~_wgslsmith_clamp_u32(60491u, 35849u, var_0)), _wgslsmith_mult_u32(36149u, u_input.a | 9721u)), u_input.b);
    var var_2 = !vec4<bool>(!(!all(vec4<bool>(false, true, true, false))), all(vec4<bool>(true, true, true, func_2(vec3<bool>(true, true, true)).a)), true, true);
    var_2 = !(!select(vec4<bool>(var_2.x, var_2.x, true, !var_2.x), select(select(vec4<bool>(false, var_2.x, var_2.x, false), vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(false, false, var_2.x, var_2.x)), !vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), all(vec2<bool>(false, var_2.x))), firstLeadingBit(var_0) == countOneBits(74295u)));
    var_2 = !(!vec4<bool>(false, var_2.x, true, !(!var_2.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-936f, _wgslsmith_f_op_f32(f32(-1f) * -950f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -888f), _wgslsmith_f_op_f32(func_1(i32(-1i) * -(~u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1645f)) * 156f) * _wgslsmith_f_op_f32(func_1(~(-14829i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1357f, -421f))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(548f, -259f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(362f * var_0.x) * -140f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(1045f)))) - var_0);
    var_1 = _wgslsmith_f_op_vec4_f32(-var_0);
    var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * 1694f), _wgslsmith_f_op_f32(-var_1.x), 895f, -840f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0)))))));
    var var_2 = vec2<f32>(var_0.x, 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(select(~(~vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, 1u), false), max(~vec2<u32>(1u, 1u), vec2<u32>(1u, u_input.a) << (select(vec2<u32>(120168u, u_input.a), vec2<u32>(1u, 1u), vec2<bool>(true, false)) % vec2<u32>(32u)))), vec3<u32>(abs(0u), ~u_input.a, ~(~4294967295u)), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.wy), var_0.yw)))), 209f);
}

