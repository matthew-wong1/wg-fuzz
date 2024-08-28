struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(vec4<i32>(i32(-1i) * -31381i, -u_input.a.x, -12036i, -(~(-u_input.a.x))), any(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    var var_1 = select(vec3<bool>(any(select(select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, true), var_0.b), vec2<bool>(true, true), any(vec2<bool>(var_0.b, false)))), var_0.b, !(!(var_0.a.x < var_0.a.x))), vec3<bool>(all(vec2<bool>(var_0.b, true)) && false, true, true), true);
    var_0 = Struct_1(~(max(vec4<i32>(var_0.a.x, 3835i, -12974i, u_input.a.x), var_0.a) | _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(232i, 4776i, var_0.a.x, u_input.a.x)), var_0.a)), any(!(!vec3<bool>(var_0.b, var_0.b, var_0.b))));
    var_0 = Struct_1(~var_0.a, var_0.b && (true && var_1.x));
    return select(!(!(!(!vec4<bool>(var_0.b, var_0.b, false, var_1.x)))), !(!select(!vec4<bool>(var_0.b, true, true, true), !vec4<bool>(true, var_1.x, var_0.b, true), vec4<bool>(var_0.b, var_0.b, var_0.b, var_1.x))), any(!select(vec4<bool>(false, var_0.b, false, var_1.x), select(vec4<bool>(var_0.b, var_0.b, var_1.x, var_0.b), vec4<bool>(var_1.x, true, false, true), vec4<bool>(true, true, false, var_1.x)), var_1.x)));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_add_vec4_i32(select(~(~vec4<i32>(-9159i, 0i, 1i, 5061i)), -(vec4<i32>(32303i, -7988i, u_input.a.x, -2147483647i) & vec4<i32>(5025i, arg_0.x, 8148i, -26085i)), vec4<bool>(true, true, true, all(vec3<bool>(true, true, true)))), vec4<i32>(firstLeadingBit(1i), _wgslsmith_sub_i32(1i, select(1i, u_input.a.x, false)), 0i, -54630i)), -64934i, Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(937f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1379f, 394f, 1528f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1749f, 592f, 214f), vec3<f32>(-1349f, 1857f, -491f), false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(344f + 1000f) - -162f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(450f + 908f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-750f))))));
    var var_1 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, true, false, true)), true, true, true), true), func_3(), vec4<bool>(true, arg_1 > arg_1, true, true)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, func_3().x), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_3()), true | all(vec2<bool>(true, true)));
    let var_2 = !(!select(!(!vec4<bool>(true, false, var_1.x, var_1.x)), func_3(), !vec4<bool>(var_1.x, false, var_1.x, var_1.x)));
    var var_3 = ~(~(~_wgslsmith_mult_u32(16690u, 44177u))) ^ arg_1;
    var var_4 = Struct_4(Struct_1(vec4<i32>(select(var_0.b, var_0.a.x ^ arg_0.x, select(false, false, false)), -(~u_input.a.x), 22353i, (i32(-1i) * -32504i) >> (1u % 32u)), func_3().x || true), _wgslsmith_f_op_f32(round(-157f)), var_0.d, Struct_3(reverseBits(_wgslsmith_mod_vec4_i32(var_0.a, ~vec4<i32>(var_0.b, 8338i, arg_0.x, 2147483647i))), -firstTrailingBit(-var_0.a.x), var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d * 1448f), 842f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0.c.a, var_0.d)), _wgslsmith_f_op_f32(-var_0.d)))))));
    return Struct_3(~(~_wgslsmith_mult_vec4_i32(var_0.a, vec4<i32>(var_0.a.x, var_4.a.a.x, var_4.d.b, var_4.a.a.x))), u_input.a.x, Struct_2(var_4.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_4.d.d, var_4.b, var_4.c), vec3<f32>(-374f, -1594f, var_4.c)))))), _wgslsmith_f_op_f32(max(var_4.c, _wgslsmith_f_op_f32(var_4.d.c.a + var_0.d))));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: vec4<i32>) -> bool {
    let var_0 = Struct_1(~(-vec4<i32>(-4446i, 1i, _wgslsmith_div_i32(-2147483647i, arg_2.b), -60251i)), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, 17761u), vec2<u32>(arg_0, arg_0) << (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(12882u, arg_0)) % vec2<u32>(32u))) != (~arg_0 & ~arg_0));
    let var_1 = _wgslsmith_div_u32(18209u, ~arg_0);
    let var_2 = -_wgslsmith_mod_i32(u_input.a.x, var_0.a.x) ^ _wgslsmith_mult_i32(var_0.a.x, arg_3.x);
    var var_3 = _wgslsmith_clamp_vec4_u32(~firstLeadingBit(vec4<u32>(~4294967295u, 0u, ~var_1, 0u)), ~max(vec4<u32>(var_1, 9127u, arg_0, arg_0) >> (vec4<u32>(arg_0, arg_0, var_1, 45662u) % vec4<u32>(32u)), vec4<u32>(1u, var_1, arg_0, var_1)) >> (~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 4294967295u, 8886u, arg_0), vec4<u32>(180u, var_1, 0u, var_1))) % vec4<u32>(32u)), abs(vec4<u32>(~arg_0 & ~var_1, max(arg_0, ~4294967295u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0, arg_0, 1u), firstTrailingBit(arg_0)), abs(var_1))));
    var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.x, ~_wgslsmith_sub_u32(14766u, arg_0), ~1u & var_3.x, 4294967295u | arg_0), select(vec4<u32>(arg_0, firstLeadingBit(var_1), _wgslsmith_mult_u32(var_3.x, 1u), ~43084u) ^ ~firstTrailingBit(vec4<u32>(arg_0, 1u, 1u, 44229u)), ~(~abs(vec4<u32>(0u, arg_0, 0u, 4294967295u))), !(all(vec2<bool>(false, true)) | !var_0.b)), vec4<u32>(var_1, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 40783u), var_3.ww), ~var_1, _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0, 28911u), arg_0), 1u, select(54803u, arg_0, true) | ~4619u)));
    return func_3().x;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), vec2<u32>(22509u, _wgslsmith_div_u32(1u, ~(~26813u))), vec2<u32>(1u, 1u));
    var var_1 = !(false || !func_4(~var_0.x, _wgslsmith_f_op_f32(trunc(1163f)), func_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), var_0.x), firstTrailingBit(vec4<i32>(-68504i, -25816i, u_input.a.x, -1i))));
    var var_2 = 29191u;
    let var_3 = Struct_3(-min(select(~vec4<i32>(36060i, u_input.a.x, u_input.a.x, 1i), vec4<i32>(u_input.a.x, -14392i, -31707i, -12596i), true), ~(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i))), ~(-(~u_input.a.x)), Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-448f, 1593f)))), _wgslsmith_f_op_f32(253f - -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-692f, 250f, 1251f))), vec3<f32>(-1081f, 764f, 552f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(681f, -1592f, 425f)))), -1037f);
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1000f, var_3.d, true)), var_3.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)))), -685f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.c.b + var_3.c.b)));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(arg_0.a.yzw & vec3<i32>(2147483647i, arg_0.b, arg_0.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(39023u, 4294967295u), vec2<u32>(1u, 35054u))).d) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 - arg_1))) * arg_0.c.b.x)) + arg_0.c.b.x);
    var_0 = arg_1;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-134f * -1000f)) + _wgslsmith_f_op_f32(floor(-1331f)));
    let var_1 = Struct_4(Struct_1(_wgslsmith_clamp_vec4_i32(min(abs(vec4<i32>(arg_0.b, u_input.a.x, arg_0.a.x, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 17090i, arg_0.b), arg_0.a)), abs(arg_0.a & arg_0.a), arg_0.a), !select(select(true, arg_2, true), any(vec2<bool>(arg_2, false)), arg_2 || true)), 190f, 435f, Struct_3(-vec4<i32>(_wgslsmith_sub_i32(arg_0.b, u_input.a.x), ~(-12880i), _wgslsmith_mod_i32(-1i, -1i), -60423i), i32(-1i) * -(~(-46391i)), func_1(), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-974f, _wgslsmith_f_op_f32(-arg_0.d)))))));
    let var_2 = func_2(~_wgslsmith_mult_vec3_i32(var_1.d.a.xxz, vec3<i32>(u_input.a.x & arg_0.b, 1769i, arg_0.a.x & -1i)), ~46081u);
    return var_2.c.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_3(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 0i), ~u_input.a.x, func_1(), _wgslsmith_f_op_f32(-989f - -1998f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -220f))), true && func_3().x)) - 1089f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-136f, -507f, 1633f) * vec3<f32>(1171f, -307f, 860f)), vec3<f32>(448f, -319f, -557f))) * vec3<f32>(-453f, _wgslsmith_f_op_f32(func_5(Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x, Struct_2(655f, vec3<f32>(1000f, -1065f, 573f)), -1816f), 1660f, false)), _wgslsmith_f_op_f32(sign(-1604f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2019f, -1237f, -446f) * vec3<f32>(-275f, 117f, 547f)))))));
    var var_1 = func_2(vec3<i32>(~1i, -30243i, u_input.a.x), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(1217f);
}

