struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<f32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    return u_input.e;
}

fn func_2() -> f32 {
    let var_0 = 1i;
    let var_1 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.e, _wgslsmith_clamp_u32(~u_input.a, u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a))), vec2<u32>(u_input.e, 1u), vec2<bool>(true, true)), vec2<u32>(func_3(vec3<bool>(true, true, true)), ~u_input.e));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1057f, 1000f, 1682f, -467f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1006f, 435f, 1000f, 462f)))))), vec2<i32>(-9610i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.b, var_0, u_input.d), vec4<i32>(var_0, u_input.b, var_0, -9320i))), ~min(firstLeadingBit(vec2<u32>(0u, 1u)), vec2<u32>(18073u, var_1) ^ vec2<u32>(0u, 12253u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2444f * _wgslsmith_f_op_f32(select(738f, -2155f, true))) - _wgslsmith_f_op_f32(-122f + -550f)), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1562f + 696f), -699f, _wgslsmith_f_op_f32(abs(1000f)), -492f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1314f, 693f, -2080f, -839f), vec4<f32>(-1361f, -418f, -894f, 1544f)))), any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)))), vec2<i32>(var_0, min(1i, -11831i)), _wgslsmith_sub_vec2_u32(countOneBits(max(vec2<u32>(3255u, 20500u), vec2<u32>(var_1, u_input.a))), vec2<u32>(u_input.a, max(u_input.e, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-383f))), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), true))), _wgslsmith_f_op_f32(floor(-1000f)), vec2<f32>(-1886f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1643f - 1000f) + 400f)))));
    var var_3 = _wgslsmith_f_op_f32(abs(var_2.c));
    var_2 = Struct_2(var_2.a, var_2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(638f, -271f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c, -1865f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-546f, 384f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(floor(-652f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c - 380f) * var_2.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.d.x * var_2.d.x), _wgslsmith_f_op_f32(f32(-1f) * -286f)))));
    return var_2.c;
}

fn func_1(arg_0: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1096f + 250f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2()))))))));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(518f + -2313f), _wgslsmith_f_op_f32(-1198f * -314f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-128f, 568f, 830f, -387f), vec4<f32>(694f, 2547f, 1345f, -676f), arg_0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(432f, 471f, -319f, 1000f), vec4<f32>(1035f, 768f, -778f, 1003f))), vec4<f32>(1016f, 414f, 1000f, 609f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(-20186i, 2147483647i), vec2<i32>(u_input.d, -18978i)), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, u_input.b, -44316i, -1i), -vec4<i32>(-1977i, 1i, 10630i, -40063i)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(13959i, u_input.b, -40669i)), ~vec3<i32>(u_input.c, u_input.d, u_input.c)))), ((~vec2<u32>(u_input.a, 83097u) >> (firstLeadingBit(vec2<u32>(u_input.e, u_input.e)) % vec2<u32>(32u))) & vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.a, u_input.e), ~u_input.a)) ^ _wgslsmith_mult_vec2_u32(countOneBits(select(vec2<u32>(1u, 84381u), vec2<u32>(u_input.e, 4294967295u), vec2<bool>(false, arg_0.x))), _wgslsmith_clamp_vec2_u32(vec2<u32>(49199u, u_input.e), vec2<u32>(u_input.a, 56928u), vec2<u32>(19421u, 4294967295u)) & ~vec2<u32>(8631u, u_input.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-113f - -752f), _wgslsmith_f_op_f32(round(-1505f)))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1203f) - _wgslsmith_f_op_f32(select(-1989f, -1424f, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -538f)))), vec4<bool>(any(arg_0), true, false, true));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_1.a))), var_1.b, _wgslsmith_mult_vec2_u32(~vec2<u32>(25257u, 0u), _wgslsmith_mod_vec2_u32(~var_1.c, var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - var_1.a.x) * _wgslsmith_f_op_f32(trunc(-1000f))), vec4<bool>(-863f > _wgslsmith_f_op_f32(round(-821f)), true, false, var_1.d < -129f)), Struct_1(_wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a.x, 1035f, var_1.d, var_1.d), _wgslsmith_f_op_vec4_f32(step(var_1.a, var_1.a))))), max(var_1.b, vec2<i32>(18088i, ~var_1.b.x)), var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(func_2()))), vec4<bool>(var_1.e.x || select(true, false, false), false, arg_0.x, any(arg_0))), 1050f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1387f, var_1.d) + var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_1.a))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-260f, var_2.c, var_2.c, var_1.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, var_1.a.x, var_2.a.d, 1000f) - var_2.b.a))))))), -firstTrailingBit(var_1.b), vec2<u32>(~(~var_1.c.x), _wgslsmith_dot_vec2_u32(~var_1.c, var_2.b.c) << (0u % 32u)), 300f, arg_0);
    return any(!(!var_1.e));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a * _wgslsmith_div_vec4_f32(arg_1.a, vec4<f32>(910f, arg_1.d, arg_1.a.x, -1495f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_1.a)) * _wgslsmith_f_op_vec4_f32(-arg_1.a))), select(arg_1.b, countOneBits(select(arg_1.b, vec2<i32>(2147483647i, u_input.d), true)), select(select(arg_0.ww, arg_1.e.wz, arg_0.yw), select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, true), arg_1.e.xy), arg_1.e.ww)), max(arg_1.c, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.c, arg_1.c), ~vec2<u32>(arg_1.c.x, 0u), _wgslsmith_mult_vec2_u32(arg_1.c, arg_1.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1757f, arg_1.d) + _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(-603f - arg_1.d)), vec4<bool>(-121f != _wgslsmith_f_op_f32(max(arg_1.a.x, arg_1.d)), func_1(select(arg_0, arg_0, true)), select(false, arg_1.e.x, true), all(vec4<bool>(arg_1.e.x, false, false, arg_0.x)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_1.d)))), 1896f, arg_1.a.x), min(arg_1.b, arg_1.b), vec2<u32>(select(~29240u, _wgslsmith_div_u32(u_input.e, 0u), true), 18204u << (u_input.a % 32u)), arg_1.a.x, !(!arg_1.e)), -121f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_1.a.ww)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_1.a.xz)))))));
    let var_1 = arg_1.a;
    var_0 = Struct_2(Struct_1(var_1, vec2<i32>(-1i) * -(vec2<i32>(u_input.d, -41295i) >> (vec2<u32>(27765u, 4294967295u) % vec2<u32>(32u))), var_0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - var_0.d.x), vec4<bool>(arg_1.e.x, arg_1.e.x, false, all(var_0.a.e))), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.c)))) - -337f), arg_1.a.yz);
    var_0 = Struct_2(arg_1, Struct_1(vec4<f32>(var_0.b.a.x, 670f, var_0.a.d, var_1.x), abs(vec2<i32>(-19004i, firstTrailingBit(var_0.a.b.x))), var_0.b.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -110f))), var_0.b.e), var_1.x, _wgslsmith_f_op_vec2_f32(var_0.b.a.zy * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 411f) * vec2<f32>(-720f, var_0.d.x))) + _wgslsmith_f_op_vec2_f32(var_0.a.a.xy * var_0.a.a.ww))));
    let var_2 = var_0.a;
    return var_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(vec4<bool>(!(u_input.e >= 5228u), true, true, true), vec4<bool>(true, true, false && all(vec4<bool>(true, true, true, false)), min(13909i, u_input.d) < _wgslsmith_add_i32(u_input.d, 12481i)), select(!func_1(vec4<bool>(true, false, true, true)), true, any(vec3<bool>(true, true, false)))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1199f, 2013f, 345f, -1069f), vec4<f32>(-708f, -103f, 314f, 731f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1296f, 604f, 1306f, -509f), vec4<f32>(-962f, -1145f, -491f, -1087f))), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)))), !(u_input.e != u_input.a))), vec2<i32>(-23860i, countOneBits(u_input.d)), vec2<u32>(66703u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(986f, _wgslsmith_div_f32(699f, 796f))) - 299f), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(1580f, -1000f), -307f, _wgslsmith_f_op_f32(-906f + 648f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(794f, 1000f)) - 1060f)), vec2<i32>(_wgslsmith_add_i32(1i & _wgslsmith_dot_vec3_i32(vec3<i32>(-12361i, 37276i, u_input.d), vec3<i32>(u_input.d, -1i, u_input.d)), -2147483647i), ~(~2147483647i)), vec2<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, var_0.x)), var_0), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), !(!vec4<bool>(select(false, false, false), all(vec2<bool>(true, true)), true, all(vec3<bool>(false, true, true)))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)))))), vec2<i32>(firstLeadingBit(var_1.b.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, -27192i, 2147483647i), vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.d, 4090i))), ~var_1.c, var_1.d, !select(select(!vec4<bool>(var_1.e.x, false, true, false), select(vec4<bool>(false, true, false, var_1.e.x), vec4<bool>(var_1.e.x, var_1.e.x, false, var_1.e.x), vec4<bool>(true, var_1.e.x, var_1.e.x, var_1.e.x)), all(vec2<bool>(false, var_1.e.x))), !select(var_1.e, vec4<bool>(var_1.e.x, var_1.e.x, var_1.e.x, false), var_1.e.x), select(var_1.e, vec4<bool>(false, false, var_1.e.x, var_1.e.x), var_1.e.x)));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 265f, -1075f, 600f))))))), -(var_1.b >> (vec2<u32>(20291u, ~var_0.x) % vec2<u32>(32u))), var_0, -218f, vec4<bool>(false, true, var_1.e.x, any(var_1.e.xx)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.b, var_1.b), firstLeadingBit(-var_1.b) & vec2<i32>(~u_input.b, var_1.b.x)), vec2<u32>(u_input.e, ~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)))) - 1624f), !vec4<bool>(var_1.e.x & all(vec3<bool>(true, true, true)), var_1.e.x || (330f < var_1.a.x), (u_input.a | 1u) == 0u, any(vec2<bool>(var_1.e.x, var_1.e.x))));
    var var_3 = select(var_0, _wgslsmith_mod_vec2_u32(~vec2<u32>(select(var_0.x, 17305u, true), ~var_0.x), var_1.c), false);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_u32(~0u, firstTrailingBit(1903u)) ^ (func_4(var_1.e, Struct_1(vec4<f32>(var_1.d, 507f, var_2.d, var_2.d), var_2.b, var_1.c, -1092f, var_1.e)).x >> (~u_input.a % 32u))), vec2<i32>(0i, firstLeadingBit(1i)), ~_wgslsmith_mod_u32(1u, u_input.a), vec4<f32>(-283f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) + _wgslsmith_f_op_f32(-var_2.d)), 1578f, !var_1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(603f - var_2.a.x) - _wgslsmith_f_op_f32(sign(-742f)))), 798f));
}

