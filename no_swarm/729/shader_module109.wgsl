struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = 36563u;
    var var_1 = vec3<bool>(select(arg_1.a || arg_1.a, false, arg_1.a), arg_1.a, false);
    var_1 = vec3<bool>(true, true && var_1.x, any(vec2<bool>(any(vec4<bool>(true, arg_1.a, var_1.x, true)), false)) && !(!var_1.x || all(vec3<bool>(arg_1.a, var_1.x, var_1.x))));
    var var_2 = !vec2<bool>(true, arg_1.a);
    var_2 = select(vec2<bool>(true, var_1.x), select(select(vec2<bool>(false, true), var_1.zx, true), var_1.yy, select(select(!var_1.yx, vec2<bool>(arg_1.a, arg_1.a), var_1.yz), select(vec2<bool>(false, var_1.x), vec2<bool>(true, var_2.x), var_1.x), select(!var_1.zz, select(vec2<bool>(true, false), vec2<bool>(true, arg_1.a), var_1.zz), !vec2<bool>(var_2.x, arg_1.a)))), !var_1.zx);
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(709f + arg_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-863f, _wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_div_f32(arg_1.d, arg_1.d))))))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    var var_0 = u_input.c;
    var_0 = vec2<i32>(u_input.c.x, reverseBits(_wgslsmith_div_i32(var_0.x, ~(-var_0.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -169f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1089f, -665f, arg_0.x) * vec3<f32>(1150f, -1323f, 836f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -974f)))))));
    let var_2 = Struct_1(true | ((~u_input.b.x < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, u_input.b.x), vec4<u32>(77101u, u_input.b.x, u_input.a, u_input.b.x))) | all(vec3<bool>(true, true, true))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.a, 72157u << (1u % 32u)), abs(~vec4<u32>(u_input.b.x, u_input.a, 16955u, 32653u))), ~u_input.a), ~((~u_input.a & min(1u, 29563u)) >> (106456u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1679f, -1751f))))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 1688u, 3764u), reverseBits(select(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 1u, 29442u)), min(vec3<u32>(25382u, u_input.b.x, 89582u), vec3<u32>(u_input.a, 0u, 27580u)), false))));
    var_1 = _wgslsmith_f_op_vec3_f32(func_3(var_0.x, var_2));
    return Struct_4(Struct_3(~var_2.b, u_input.c.x, var_1.x, ~(~vec3<u32>(u_input.a, 4294967295u, 1u))), vec2<u32>(4294967295u, ~34541u));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32) -> Struct_3 {
    let var_0 = arg_0.a;
    var var_1 = _wgslsmith_mult_vec2_u32(~select(min(vec2<u32>(9126u, 12858u), arg_0.a.d.yy) << (reverseBits(vec2<u32>(14237u, 24546u)) % vec2<u32>(32u)), abs(arg_0.a.d.xx), vec2<bool>(false, true)), select(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_2, 165893u), 0u), _wgslsmith_clamp_u32(u_input.a, ~49726u, 17850u)), ~countOneBits(_wgslsmith_div_vec2_u32(arg_0.b, vec2<u32>(0u, arg_1.b.x))), false));
    var_1 = u_input.b.xy;
    let var_2 = vec2<i32>(~39853i, 1i);
    var var_3 = _wgslsmith_mult_vec2_u32(arg_1.a.d.xz, arg_0.b);
    return Struct_3(u_input.b.zy, ~arg_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c)), vec3<u32>(_wgslsmith_mod_u32(arg_1.a.d.x | func_2(vec2<f32>(arg_1.a.c, arg_1.a.c)).b.x, ~1u ^ arg_2), ~select(firstLeadingBit(var_1.x), 88288u >> (arg_2 % 32u), all(vec2<bool>(true, true))), 4294967295u));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>) -> vec2<u32> {
    var var_0 = func_4(func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-502f, -1000f), vec2<f32>(1223f, 504f), vec2<bool>(false, true)))), vec2<f32>(1f, -847f), true))), Struct_4(Struct_3(vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_mod_i32(-14019i, ~u_input.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1048f)))), vec3<u32>(_wgslsmith_mod_u32(arg_1.x, arg_1.x), ~arg_0.x, arg_0.x)), ~select(func_2(vec2<f32>(1105f, -1000f)).b, vec2<u32>(arg_0.x, arg_0.x), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))), ~(~_wgslsmith_add_u32(arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 2222u, arg_0.x), vec4<u32>(u_input.b.x, u_input.b.x, 23500u, arg_0.x)))));
    var_0 = func_4(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1108f, -3570f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(791f, 320f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.c) * vec2<f32>(1575f, -808f))))), func_2(vec2<f32>(-982f, _wgslsmith_f_op_f32(-var_0.c))), arg_1.x);
    let var_1 = arg_1.x;
    var_0 = func_4(func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1099f, 562f))), _wgslsmith_f_op_vec3_f32(func_3(-20237i, Struct_1(true, vec2<u32>(1u, 1u), arg_1.x, var_0.c, arg_0))).x)), Struct_4(func_4(Struct_4(Struct_3(u_input.b.yy, -5949i, 606f, u_input.b), vec2<u32>(0u, arg_0.x)), Struct_4(Struct_3(vec2<u32>(0u, 0u), -28663i, 2120f, arg_0), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.a, 66874u))), 1u), ~vec2<u32>(select(33955u, 0u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.b.x, 36840u, arg_1.x), vec4<u32>(0u, var_1, 21494u, var_1)))), _wgslsmith_add_u32(u_input.a, 58365u));
    var var_2 = Struct_3(select(~(vec2<u32>(55006u, 0u) ^ u_input.b.zx) & select(u_input.b.zy, vec2<u32>(12048u, arg_0.x) ^ vec2<u32>(4294967295u, 22080u), vec2<bool>(true, true)), func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-902f, 682f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c)), select(vec2<bool>(true, false), vec2<bool>(true, false), false)))).b, !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true))), 1i, _wgslsmith_f_op_f32(select(var_0.c, _wgslsmith_f_op_f32(min(var_0.c, 1223f)), !(!any(vec2<bool>(true, true))))), u_input.b);
    return ~_wgslsmith_add_vec2_u32(select(~vec2<u32>(1u, u_input.a), arg_1, select(vec2<bool>(true, true), vec2<bool>(true, true), true)), countOneBits(~(~u_input.b.xz)));
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> f32 {
    var var_0 = Struct_1(true, ~_wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.b.x, 38818u)), arg_1.b), _wgslsmith_clamp_u32(0u, ~(countOneBits(u_input.a) & 4294967295u), ~2658u), arg_1.a.c, ~max(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_1.a.a.x, arg_1.b.x, arg_1.b.x), ~vec3<u32>(1u, 0u, 1u)), vec3<u32>(1u, 26710u, _wgslsmith_div_u32(u_input.a, 53613u))));
    var_0 = Struct_1(true, vec2<u32>(~u_input.b.x, 4294967295u) << (arg_1.b % vec2<u32>(32u)), arg_1.b.x, 666f, vec3<u32>(arg_1.a.a.x, _wgslsmith_div_u32(func_2(vec2<f32>(arg_0, -610f)).b.x, 4294967295u), reverseBits(18447u)));
    let var_1 = min(arg_1.a.d.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(13950u, var_0.e.x, arg_1.a.a.x, 4294967295u), vec4<u32>(4294967295u, arg_1.b.x, 37749u, 31826u)), ~u_input.a, var_0.a)), func_1(vec3<u32>(arg_1.b.x & u_input.b.x, 15217u, max(arg_1.b.x, arg_1.a.a.x)), max(~var_0.e.zz, var_0.b)).x));
    let var_2 = firstLeadingBit(~(min(u_input.c, u_input.c) ^ vec2<i32>(22931i, arg_1.a.b))) | vec2<i32>(u_input.c.x, ~30841i);
    var_0 = Struct_1(!(!var_0.a) && true, ~(~_wgslsmith_add_vec2_u32(var_0.b >> (u_input.b.zz % vec2<u32>(32u)), vec2<u32>(0u, var_1))), 4294967295u, _wgslsmith_f_op_f32(-arg_1.a.c), vec3<u32>(1u, _wgslsmith_add_u32(var_1, ~abs(u_input.a)), var_0.e.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d)))), _wgslsmith_f_op_f32(-963f - _wgslsmith_f_op_f32(arg_1.a.c * var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_5(131f, Struct_4(Struct_3(u_input.b.xx, -12051i ^ (u_input.c.x | u_input.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -679f))), ~(~vec3<u32>(u_input.b.x, 30814u, 1493u))), func_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 10920u), u_input.b, vec3<u32>(u_input.b.x, 4294967295u, 46825u) | vec3<u32>(47762u, u_input.b.x, u_input.b.x)), _wgslsmith_clamp_vec2_u32(u_input.b.zx, ~u_input.b.zy, vec2<u32>(32764u, u_input.b.x))))));
    let var_1 = ~4430u;
    var var_2 = Struct_1(all(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))) && all(vec4<bool>(false, all(vec2<bool>(false, false)), any(vec2<bool>(true, false)), true)), _wgslsmith_div_vec2_u32(firstTrailingBit(~reverseBits(u_input.b.xz)), u_input.b.xx), firstLeadingBit(~(reverseBits(87063u) >> (u_input.a % 32u))), _wgslsmith_f_op_f32(1339f - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f - -747f)))), vec3<u32>(~(~_wgslsmith_sub_u32(73126u, var_1)), select(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, u_input.a)), min(vec2<u32>(var_1, 124016u), u_input.b.yx)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.a, u_input.b.x), vec4<u32>(0u, 4294967295u, var_1, var_1))), !all(vec4<bool>(true, false, true, true))), firstLeadingBit(var_1)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-957f - _wgslsmith_f_op_f32(step(-1172f, var_2.d))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.d)))) - var_2.d), 1f);
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.d, -1000f), vec2<f32>(1491f, var_2.d))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1816f, var_2.d)))))));
    var_3 = Struct_4(var_3.a, vec2<u32>(~74159u, 4294967295u));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_3.a.c), _wgslsmith_f_op_f32(max(var_2.d, _wgslsmith_f_op_f32(var_3.a.c - -598f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.a.c, 2272f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_2.d) - vec2<f32>(var_3.a.c, 258f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(~42847u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a.a.x, 64569u), var_2.b), 1u) >> (firstTrailingBit(var_3.a.d << (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~select(u_input.b, u_input.b, false)), all(select(!vec4<bool>(var_2.a, false, true, false), select(vec4<bool>(var_2.a, var_2.a, var_2.a, true), vec4<bool>(var_2.a, var_2.a, var_2.a, false), vec4<bool>(var_2.a, true, false, true)), var_2.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4))), select(var_2.b.x, _wgslsmith_add_u32(~(~61253u), ~_wgslsmith_add_u32(var_2.b.x, var_3.a.a.x)), true), var_4.x);
}

