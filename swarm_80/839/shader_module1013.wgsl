struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_4(Struct_2(false, Struct_1(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 9368u, 1u), vec3<u32>(1u, 0u, 43668u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(323f, 412f, -258f), vec3<f32>(535f, -273f, 1114f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -422f))), select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), true)), vec2<u32>(1u, 1u)), Struct_1(vec2<bool>(true, true), reverseBits(1u), vec3<f32>(1152f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(-1553f))), -281f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(657f)) * _wgslsmith_f_op_f32(step(-421f, -192f))), -170f)), select(vec3<bool>(true, true, true), vec3<bool>(true, 2147483647i < u_input.a, true), !any(vec2<bool>(true, true)))), firstTrailingBit(firstLeadingBit(~abs(vec2<u32>(25727u, 1u)))), Struct_2(false, Struct_1(vec2<bool>(true, true), countOneBits(39808u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-422f, 1067f, -1000f) - vec3<f32>(-844f, -1659f, -318f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-245f, 1365f, -1149f), vec3<f32>(519f, 899f, -574f), false))), _wgslsmith_f_op_f32(732f - _wgslsmith_f_op_f32(step(967f, 748f))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), ~vec2<u32>(firstTrailingBit(0u), 1u)), ~_wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(29364u, 4294967295u, 29113u), vec3<u32>(2887u, 4294967295u, 4294967295u), vec3<u32>(1u, 96874u, 0u)), vec3<u32>(1u, 1u, 1u)));
    var var_1 = vec2<u32>(~var_0.b.b, ~(~firstLeadingBit(5896u)));
    var var_2 = Struct_3(all(!(!(!vec4<bool>(var_0.a.a, false, var_0.b.e.x, true)))), (i32(-1i) * -max(-38081i, u_input.a)) << (countOneBits(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, 0u), vec3<u32>(134066u, var_1.x, 31153u)))) % 32u), Struct_1(var_0.a.b.e.yy, 4294967295u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.a.b.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.d, 762f, var_0.b.d) - var_0.d.b.c))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1159f, var_0.b.c.x))))), vec3<bool>(false, !all(vec4<bool>(var_0.b.a.x, true, var_0.d.a, false)), var_0.a.a)));
    let var_3 = var_2.c;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.c.x)), _wgslsmith_f_op_f32(abs(var_3.d)), var_3.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_3.c.x)), _wgslsmith_f_op_f32(var_0.d.b.d - 895f)))), -712f));
    return _wgslsmith_f_op_f32(round(var_2.c.d));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    var var_0 = Struct_2(any(vec3<bool>(true, false, true)) || true, Struct_1(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, any(vec2<bool>(false, true))), all(vec4<bool>(false, false, false, true)) && false), _wgslsmith_mod_u32(24078u, ~77749u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(ceil(-241f)))), arg_0, select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), vec3<bool>(arg_0 > -2448f, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))), ~vec2<u32>(~0u >> (_wgslsmith_clamp_u32(1468u, 45224u, 35637u) % 32u), 1u << (0u % 32u)));
    let var_1 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1567f - arg_0)), _wgslsmith_f_op_f32(trunc(var_0.b.c.x)), var_0.b.d);
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f) - _wgslsmith_div_f32(var_1.x, -180f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.d)) + _wgslsmith_div_f32(-1064f, _wgslsmith_f_op_f32(var_0.b.c.x + 705f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d) + _wgslsmith_f_op_f32(min(1913f, var_0.b.d))), var_0.b.c.x))), var_1));
    var var_3 = any(!select(vec3<bool>(true && var_0.a, true, true), var_0.b.e, var_0.b.e));
    let var_4 = _wgslsmith_sub_i32(~u_input.a, 1i);
    return !(!(!var_0.b.e.yz));
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(1756f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1000f)))));
    var var_1 = Struct_1(select(func_2(-444f), !vec2<bool>(true, func_2(348f).x), vec2<bool>(true, true)), ~_wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(574f, var_0), _wgslsmith_f_op_f32(floor(var_0)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0))))), 1469f, vec3<bool>(true, true, false));
    var_1 = Struct_1(select(var_1.e.xy, vec2<bool>(all(select(vec4<bool>(true, false, var_1.e.x, false), vec4<bool>(true, var_1.a.x, var_1.e.x, var_1.e.x), var_1.a.x)), var_1.e.x | (613f == var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -495f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_mod_u32(~(~abs(0u)), var_1.b), vec3<f32>(1019f, var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-175f))))), !(!select(!var_1.e, vec3<bool>(var_1.a.x, var_1.e.x, false), !var_1.e)));
    let var_2 = Struct_1(var_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(~(~var_1.b), ~0u ^ (var_1.b >> (var_1.b % 32u))), ~_wgslsmith_div_vec2_u32(vec2<u32>(56977u, 39999u), ~vec2<u32>(4294967295u, var_1.b))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(370f, var_0, 1000f), var_1.c, vec3<bool>(false, var_1.e.x, var_1.e.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, 1549f, var_0))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-437f, 245f, -2237f), var_1.c, false))))))), var_0, vec3<bool>(all(select(vec2<bool>(var_1.a.x, true), select(vec2<bool>(var_1.a.x, var_1.e.x), var_1.e.xx, true), !var_1.e.x)), var_1.a.x, var_1.a.x));
    var_1 = var_2;
    return select(var_2.e, var_2.e, var_1.b <= ~(var_2.b ^ 4294967295u));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = vec3<bool>(func_1().x, all(vec3<bool>(arg_1.x || true, any(arg_2), arg_1.x)), true);
    var var_1 = -u_input.a;
    let var_2 = 16337u;
    var var_3 = arg_1.x;
    var var_4 = Struct_3(false, arg_0, Struct_1(arg_1.zy, var_2, vec3<f32>(842f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(478f + 310f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(244f * -790f) - _wgslsmith_f_op_f32(1063f + 108f)))), !func_1()));
    return Struct_4(Struct_2(var_4.c.a.x, Struct_1(!arg_2, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_4.c.b, 2135u, 1u, 0u)), ~vec4<u32>(var_2, 19576u, var_2, var_4.c.b)), vec3<f32>(1000f, var_4.c.d, var_4.c.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.c.d * -252f), _wgslsmith_f_op_f32(f32(-1f) * -286f)), !var_4.c.e), vec2<u32>(~(~var_2), var_2)), var_4.c, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, 1u), ~var_2), ~(~16865u)) & vec2<u32>(var_4.c.b, firstLeadingBit(~var_4.c.b)), Struct_2(false, Struct_1(vec2<bool>(any(vec2<bool>(var_4.c.e.x, arg_2.x)), func_2(-365f).x), ~firstTrailingBit(69789u), _wgslsmith_f_op_vec3_f32(var_4.c.c + _wgslsmith_f_op_vec3_f32(-var_4.c.c)), var_4.c.c.x, !(!vec3<bool>(arg_1.x, false, false))), abs(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(41339u, var_2)), vec2<u32>(4294967295u, var_2)))), ~(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 98631u), var_2, var_2) ^ reverseBits(~vec3<u32>(var_2, var_2, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(i32(-1i) * -84701i, !func_1(), !func_1().zy);
    var var_1 = _wgslsmith_clamp_u32(countOneBits(abs(reverseBits(var_0.c.x))), 3458u, ~1u);
    let var_2 = Struct_3(!var_0.b.e.x, -1i, Struct_1(var_0.d.b.e.xy, ~var_0.c.x, _wgslsmith_f_op_vec3_f32(round(var_0.d.b.c)), var_0.b.d, !vec3<bool>(var_0.d.b.a.x || var_0.a.a, u_input.a == -15094i, var_0.b.e.x)));
    var var_3 = func_4(~_wgslsmith_mult_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, 15921i, -30254i), vec4<i32>(1i, var_2.b, 1319i, var_2.b))), -u_input.a), func_4(u_input.a, vec3<bool>(var_2.c.e.x, func_4(u_input.a, vec3<bool>(var_2.c.a.x, false, var_0.d.a), vec2<bool>(true, true)).a.a, all(vec3<bool>(false, var_2.a, var_0.b.a.x)) & var_2.a), var_2.c.a).d.b.e, vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.d)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.d + 1193f) + 445f))).a;
    var_1 = max(~var_3.c.x, ~(~(~(~var_2.c.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.b, (vec2<i32>(firstTrailingBit(u_input.a), u_input.a) ^ vec2<i32>(-55055i, _wgslsmith_div_i32(u_input.a, var_2.b))) | ~_wgslsmith_div_vec2_i32(max(vec2<i32>(31274i, -1i), vec2<i32>(-11441i, 2147483647i)), abs(vec2<i32>(u_input.a, var_2.b))), var_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.c.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_2.c.c.x)), var_2.c.d))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-631f, _wgslsmith_f_op_f32(max(var_0.d.b.c.x, var_2.c.d)))))), u_input.a);
}

