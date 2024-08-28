struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    var var_0 = select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), !vec2<bool>(any(vec3<bool>(true, true, true)), true), vec2<bool>(any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), all(vec2<bool>(false, true)))), false));
    var var_1 = vec2<bool>(!(!(!all(vec3<bool>(true, var_0.x, false)))), any(select(!(!vec3<bool>(false, var_0.x, var_0.x)), !select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x)), !vec3<bool>(var_0.x, var_0.x, var_0.x))));
    global0 = 4146u;
    let var_2 = Struct_2(_wgslsmith_dot_vec3_u32(u_input.b.yxx, vec3<u32>(u_input.a.x, u_input.c, 4294967295u)), firstLeadingBit(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), u_input.a), u_input.b.x, ~(~u_input.b.x))));
    return (u_input.d.wzy >> (_wgslsmith_div_vec3_u32(vec3<u32>(~4294967295u, max(4294967295u, 1u), ~u_input.c), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(var_2.a, u_input.a.x, 52992u)), u_input.b.wwz)) % vec3<u32>(32u))) << (var_2.b % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_2) -> f32 {
    global0 = 1u << ((~1u >> ((35120u << ((u_input.c ^ arg_0.a) % 32u)) % 32u)) % 32u);
    global0 = 57169u;
    let var_0 = func_3() & -(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.d.x, -2147483647i, 0i), u_input.d.wzw) ^ (u_input.d.yzx >> (_wgslsmith_mod_vec3_u32(vec3<u32>(7789u, 1u, arg_0.a), arg_0.b) % vec3<u32>(32u))));
    var var_1 = 1u;
    var_1 = min(~4294967295u, ~(select(18744u, 0u, true) | ~6201u)) ^ abs(u_input.a.x);
    return _wgslsmith_f_op_f32(-110f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1170f)) + -939f));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> vec4<bool> {
    let var_0 = false && !all(vec4<bool>(any(vec3<bool>(true, false, true)), true, false, true));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -830f))) * -771f))) >= -748f;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(624f)) - _wgslsmith_f_op_f32(select(-220f, -183f, true))), _wgslsmith_f_op_f32(func_2(arg_0)))));
    global0 = 1u;
    global0 = 37668u;
    return select(!vec4<bool>(var_1, select(var_1, !var_1, var_0), any(select(vec4<bool>(false, false, var_1, var_0), vec4<bool>(var_1, var_1, var_0, false), false)), false), vec4<bool>(any(!vec4<bool>(var_1, false, var_1, var_1)), all(!vec4<bool>(false, true, var_1, true)), all(vec2<bool>(true, true)), true), false);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    global0 = 26441u;
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -abs(vec2<i32>(0i, u_input.d.x)), u_input.d.wz);
    var var_1 = !select(vec2<bool>(!(565i < var_0), false), !vec2<bool>(!arg_0.a, false), true);
    let var_2 = Struct_2(0u, vec3<u32>(u_input.c, 24157u, 24368u));
    var_1 = vec2<bool>(all(arg_0.c.e.zx), !func_1(var_2, vec3<u32>(abs(0u), var_2.b.x, _wgslsmith_mult_u32(29416u, arg_1.b))).x);
    return var_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    global0 = 78443u;
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(74113u, arg_2.b, 4294967295u)));
    let var_1 = u_input.d.zx;
    let var_2 = 80761u;
    var var_3 = var_1.x;
    return func_4(Struct_3(true, ~select(arg_1.b.zx >> (arg_1.b.yx % vec2<u32>(32u)), ~u_input.b.yy, func_1(Struct_2(4294967295u, vec3<u32>(4294967295u, 4294967295u, u_input.a.x)), vec3<u32>(21211u, 1u, 121599u)).xw), Struct_1(!vec2<bool>(arg_2.c.x, arg_2.a.x), _wgslsmith_add_u32(~1u, 0u), !vec3<bool>(arg_2.e.x, arg_2.e.x, true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1890f, 977f, arg_2.d.x), _wgslsmith_f_op_vec3_f32(step(arg_2.d, arg_2.d)), false)), !(!arg_2.e))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    var var_0 = func_5(Struct_2(u_input.c, ~_wgslsmith_sub_vec3_u32(vec3<u32>(5867u, 26526u, u_input.c), vec3<u32>(1u, u_input.b.x, 23145u)) ^ u_input.b.yxw), func_4(Struct_3(true, ~vec2<u32>(0u, u_input.b.x), Struct_1(vec2<bool>(true, true), u_input.b.x & 1u, vec3<bool>(true, false, true), _wgslsmith_div_vec3_f32(vec3<f32>(670f, -1199f, -652f), vec3<f32>(-1000f, -269f, 1000f)), func_1(Struct_2(u_input.b.x, u_input.b.wyy), u_input.b.yzz))), Struct_1(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), ~(85830u | u_input.a.x), vec3<bool>(false, true, all(vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2012f, -510f, -606f)), vec4<bool>(true, true, true, true))), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), 0u, vec3<bool>(true, true, true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(select(-595f, -1622f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1784f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-295f + -506f) - _wgslsmith_f_op_f32(-320f + -135f))), vec4<bool>(u_input.d.x >= u_input.d.x, true, true, true)));
    var var_1 = -614f;
    global0 = var_0.b.x;
    let var_2 = select(vec4<bool>(true, select(any(vec2<bool>(true, true)), func_1(Struct_2(var_0.b.x, var_0.b), vec3<u32>(39227u, 1u, 4294967295u)).x, !any(vec4<bool>(false, false, true, false))), true, true), vec4<bool>(false, true, true, true), -u_input.d.x != 2147483647i);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(615f, -870f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(2135f, 105f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1939f, -123f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-644f - -274f) * 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(516f, 1000f) * _wgslsmith_f_op_f32(max(1529f, 1749f))))));
    global0 = (_wgslsmith_sub_u32(~_wgslsmith_mult_u32(1u, var_0.a), firstTrailingBit(9860u)) ^ 1u) << (firstTrailingBit(~firstTrailingBit(3359u)) % 32u);
    var var_4 = _wgslsmith_mod_u32(1u, ~u_input.a.x);
    var var_5 = vec2<i32>(u_input.d.x, _wgslsmith_add_i32(i32(-1i) * -2147483647i, abs(u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.xy, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2037f - var_3.x) * _wgslsmith_f_op_f32(-var_3.x)))), -493f)), firstTrailingBit(var_0.b.x) << ((_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(63593u, 0u, 0u, 1u), vec4<u32>(8709u, 164477u, 0u, 1u)), var_0.a) & u_input.c) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3)));
}

