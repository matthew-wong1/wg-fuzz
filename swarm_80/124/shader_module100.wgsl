struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = any(vec3<bool>(false, true || (_wgslsmith_f_op_f32(-870f * -1471f) != _wgslsmith_f_op_f32(trunc(-1403f))), (true || all(vec4<bool>(true, true, false, true))) && any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1618f, 2381f, -1015f))))))), !vec2<bool>(true, !var_0), _wgslsmith_div_f32(-528f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1533f), -625f)), u_input.b.yz), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1725f, 224f, -1618f) * vec3<f32>(277f, 306f, -1363f)))), select(select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), !vec2<bool>(var_0, true)), vec2<bool>(all(vec4<bool>(true, false, var_0, false)), false), select(vec2<bool>(var_0, var_0), select(vec2<bool>(true, false), vec2<bool>(var_0, true), vec2<bool>(true, var_0)), vec2<bool>(var_0, true))), _wgslsmith_f_op_f32(f32(-1f) * -860f), ~u_input.b.yz | ~u_input.b.xz), ~(vec4<i32>(-1i, -2147483647i, u_input.a, -2147483647i) & ~vec4<i32>(u_input.a, 0i, 0i, u_input.a)) | -(vec4<i32>(-1i) * -vec4<i32>(u_input.a, -1i, u_input.a, -21520i)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c)))), ~(_wgslsmith_dot_vec2_u32(u_input.b.xz >> (var_1.a.d % vec2<u32>(32u)), ~vec2<u32>(var_1.a.d.x, 32786u)) >> (~(u_input.c | var_1.a.d.x) % 32u)));
    let var_3 = max(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_1.b.d.x, 9030u), vec3<u32>(reverseBits(var_1.b.d.x), ~var_1.b.d.x, ~4294967295u)), ~4294967295u) | var_1.a.d.x;
    var_2 = Struct_3(var_2.a, u_input.d);
    return 4294967295u | max(57323u, var_2.b);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_mod_i32(u_input.a, -35025i);
    var_0 = u_input.a;
    let var_1 = Struct_3(arg_2.a.x, ~func_3());
    var var_2 = var_1;
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, 15965i) & -2147483647i, ~(u_input.a ^ u_input.a), 2147483647i) & (min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 19107i, 37017i), vec3<i32>(u_input.a, 16510i, 0i)), vec3<i32>(1i, u_input.a, 0i) >> (u_input.b % vec3<u32>(32u))) | vec3<i32>(~(-63115i), u_input.a << (arg_1 % 32u), -17668i >> (arg_2.d.x % 32u))), vec3<i32>(-32772i, -_wgslsmith_dot_vec2_i32(select(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(u_input.a, u_input.a), true), max(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, u_input.a))), -2147483647i));
    return Struct_3(var_2.a, ~(~arg_2.d.x));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = ~select(_wgslsmith_clamp_vec4_u32(~select(vec4<u32>(u_input.b.x, u_input.c, 0u, arg_0.b), vec4<u32>(12494u, u_input.d, arg_0.b, 47124u), false), vec4<u32>(49333u, u_input.b.x, 4294967295u, firstLeadingBit(arg_0.b)), ~vec4<u32>(u_input.b.x, u_input.b.x, 19367u, 0u) | min(vec4<u32>(34599u, u_input.b.x, u_input.c, arg_0.b), vec4<u32>(48574u, 0u, 43850u, u_input.c))), min(vec4<u32>(63546u, u_input.d, ~u_input.b.x, u_input.b.x), vec4<u32>(abs(0u), 36883u, 1u, func_3())), !((arg_0.a <= 1232f) & true));
    var_0 = ~(vec4<u32>(~1u, 80687u, reverseBits(~var_0.x), firstTrailingBit(var_0.x)) & ~vec4<u32>(~var_0.x, arg_0.b, ~4294967295u, _wgslsmith_clamp_u32(1u, 1u, 49152u)));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -206f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1643f)), _wgslsmith_f_op_f32(arg_0.a + arg_0.a)))), arg_0.a), !(!vec2<bool>(true, any(vec2<bool>(false, false)))), arg_0.a, vec2<u32>(func_3(), firstTrailingBit(25521u)));
    var_0 = vec4<u32>(u_input.c, reverseBits(19344u), _wgslsmith_mod_u32(29356u, var_1.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~76075u, 0u, 33393u, arg_0.b), select(vec4<u32>(arg_0.b, 33607u, u_input.b.x, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(55530u, 1548u, var_0.x, var_1.d.x), vec4<u32>(57099u, arg_0.b, u_input.c, arg_0.b)), vec4<bool>(false, true, false, true)))) ^ select(vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(var_1.d.x, var_0.x)), 10537u, var_1.d.x, u_input.c), reverseBits(vec4<u32>(0u, abs(arg_0.b), var_1.d.x, ~1u)), true);
    let var_2 = var_0.x << (1u % 32u);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-123f, 133f), arg_0.a, _wgslsmith_f_op_f32(sign(-148f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(var_1.a)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-246f, 523f, -682f)))))), var_1.b, var_1.c, vec2<u32>(max(1u, ~var_0.x), var_1.d.x & firstLeadingBit(0u))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, arg_0.a, -1138f) + var_1.a), _wgslsmith_f_op_vec3_f32(var_1.a * var_1.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, var_1.a.x))), !select(vec2<bool>(false, false), select(var_1.b, var_1.b, true), any(vec2<bool>(true, true))), -1333f, vec2<u32>(1u, 67724u << (var_0.x % 32u))), vec4<i32>(~(-2147483647i), u_input.a, 18753i << (firstTrailingBit(var_0.x | var_0.x) % 32u), _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a & -34830i, 1i, _wgslsmith_add_i32(-28916i, u_input.a), u_input.a >> (38757u % 32u)))));
}

fn func_5(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = arg_0.a.b.x;
    let var_1 = arg_0.c;
    let var_2 = func_2(vec2<u32>(36478u, arg_0.b.d.x), _wgslsmith_clamp_u32(arg_0.b.d.x & (~arg_0.a.d.x << (arg_0.a.d.x % 32u)), u_input.b.x | func_4(Struct_3(arg_0.b.a.x, 59513u)).b.d.x, u_input.d), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.c), -1000f, -411f), !select(select(arg_0.b.b, vec2<bool>(arg_0.a.b.x, true), arg_0.a.b.x), func_4(Struct_3(1000f, 0u)).a.b, vec2<bool>(false, arg_0.b.b.x)), 1f, vec2<u32>(arg_0.b.d.x, 50628u ^ u_input.d) << (~abs(arg_0.b.d) % vec2<u32>(32u))));
    var_0 = arg_0.a.b.x;
    var var_3 = func_4(var_2);
    return !var_3.b.b;
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_3(-505f, (_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 35235u), vec4<u32>(u_input.d, u_input.b.x, u_input.c, u_input.d)), select(vec4<u32>(0u, 1u, u_input.d, u_input.b.x), vec4<u32>(u_input.c, u_input.b.x, 4294967295u, u_input.d), true)) & 30375u) >> (u_input.c % 32u));
    let var_1 = -(~(u_input.a << (~4294967295u % 32u)));
    var var_2 = select(select(vec2<bool>(true, true), func_5(func_4(func_2(u_input.b.xy, 0u, Struct_1(vec3<f32>(-572f, var_0.a, var_0.a), vec2<bool>(true, true), -355f, u_input.b.xx)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true), var_0.a < 778f);
    let var_3 = !any(select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var_2 = !func_5(func_4(Struct_3(_wgslsmith_f_op_f32(-var_0.a), ~51285u)));
    return vec4<f32>(981f, -1564f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1725f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1102f - 345f) * var_0.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), 571f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), -1786f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -481f), 706f, 1053f, -1360f) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(138f, -2074f, 296f, -136f)))))), _wgslsmith_f_op_vec4_f32(func_1())));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.yyw * var_0.zww) * _wgslsmith_f_op_vec3_f32(-var_0.yzw)) * vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-922f)))), _wgslsmith_f_op_f32(ceil(-346f)), 2007f));
    var var_2 = max(~u_input.b, ~(~u_input.b));
    let var_3 = 4294967295u;
    var_2 = firstTrailingBit(~u_input.b);
    let var_4 = func_2(~var_2.zx, u_input.d, func_4(Struct_3(_wgslsmith_f_op_f32(var_0.x * var_1.x), 0u)).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.xzx * vec3<f32>(-226f, var_4.a, var_4.a))))), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-14236i, -u_input.a, 18895i, _wgslsmith_mult_i32(-2147483647i, u_input.a)), abs(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))))), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-2147483647i, 2147483647i, u_input.a) << (select(vec3<u32>(u_input.b.x, var_4.b, var_2.x), u_input.b, true) % vec3<u32>(32u)), -(vec3<i32>(u_input.a, u_input.a, 2108i) ^ vec3<i32>(u_input.a, -15493i, u_input.a))), vec3<i32>(2147483647i, ~select(u_input.a, 4823i, true), -countOneBits(-13274i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_4.a))), vec2<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(184f, var_0.x))), _wgslsmith_f_op_f32(1130f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_4.a, 703f, true)), _wgslsmith_f_op_f32(trunc(var_4.a)), all(vec4<bool>(true, true, true, false)))))));
}

