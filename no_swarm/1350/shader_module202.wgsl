struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: i32) -> vec4<bool> {
    let var_0 = ~_wgslsmith_mod_u32(~1u, reverseBits(~0u));
    return !vec4<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true), any(vec2<bool>(true, false)))), false, true);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = arg_2.x;
    return Struct_1(!func_3(vec3<i32>(-14292i, reverseBits(-1i), -2147483647i & u_input.a), -1000f, ~1i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-681f, 1000f)), _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * -1450f) - _wgslsmith_f_op_f32(1767f - arg_0.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1035f), _wgslsmith_f_op_f32(arg_1.a.x - -2152f))))));
    let var_1 = _wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x));
    var_0 = _wgslsmith_f_op_f32(trunc(var_1));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1070f * -588f)));
    let var_2 = u_input.a;
    return Struct_3(_wgslsmith_f_op_vec2_f32(-arg_0.b.zz), Struct_2(Struct_1(arg_0.c.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.b)), arg_0.c), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - _wgslsmith_f_op_f32(313f * arg_0.b.x)) <= _wgslsmith_f_op_f32(-1f)));
}

fn func_1() -> Struct_5 {
    var var_0 = true;
    var_0 = true;
    let var_1 = func_4(Struct_2(func_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-374f)) * _wgslsmith_div_f32(-682f, 154f)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a), -vec2<i32>(-2291i, 1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1580f, 431f, -723f) - vec3<f32>(1284f, -2681f, -1000f))) * vec3<f32>(_wgslsmith_f_op_f32(select(2501f, -2268f, false)), _wgslsmith_f_op_f32(step(-1329f, 1063f)), 570f)), Struct_1(func_2(true, -2274f, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-2147483647i, u_input.a))).a)), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -3188f), _wgslsmith_f_op_f32(trunc(1387f)), func_2(true, -1058f, vec2<i32>(2147483647i, u_input.a)).a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-348f + -454f)))), Struct_2(func_2(true, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 37520i), vec2<i32>(-2147483647i, u_input.a))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-249f, -1767f, -173f) + vec3<f32>(-1000f, 541f, 1143f)))), func_2(true, -1280f, select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 5194i), false))), func_3(select(~vec3<i32>(u_input.a, u_input.a, -1i), select(vec3<i32>(u_input.a, 18438i, -2147483647i), vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<bool>(true, true, false)), vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(-965f * 310f), -39715i).x));
    let var_2 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, select(1u, 0u, true)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, 0u, 0u), ~16255u, 1u)), (~4294967295u | select(100360u, 1u, var_1.b.c.a.x)) & 1u);
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -724f))), func_4(var_1.b, var_1));
}

fn func_5(arg_0: Struct_5) -> Struct_2 {
    var var_0 = u_input.a;
    let var_1 = Struct_4(Struct_2(arg_0.b.b.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-577f, arg_0.a, arg_0.a)) - arg_0.b.b.b), arg_0.b.b.c));
    var var_2 = !(var_1.a.a.a.x & all(!(!arg_0.b.b.c.a.xwx)));
    var var_3 = var_1.a.c;
    var var_4 = ~_wgslsmith_clamp_vec3_u32(select(reverseBits(select(vec3<u32>(4294967295u, 41602u, 0u), vec3<u32>(1u, 34120u, 4294967295u), true)), ~select(vec3<u32>(0u, 36224u, 43559u), vec3<u32>(1u, 1u, 0u), false), vec3<bool>(var_3.a.x | var_1.a.c.a.x, true, false)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(51139u, 47000u, 1u), vec3<u32>(75484u, 30394u, 59486u), var_3.a.xwy) & vec3<u32>(37780u, 4294967295u, 13551u), ~min(vec3<u32>(21599u, 0u, 72678u), vec3<u32>(1u, 0u, 10315u))), ~firstTrailingBit(~vec3<u32>(1u, 1u, 4294967295u)));
    return func_4(func_4(Struct_2(Struct_1(vec4<bool>(true, true, true, false)), var_1.a.b, var_1.a.a), func_4(Struct_2(arg_0.b.b.a, _wgslsmith_f_op_vec3_f32(var_1.a.b * var_1.a.b), func_1().b.b.a), arg_0.b)).b, arg_0.b).b;
}

fn func_6(arg_0: Struct_5) -> f32 {
    let var_0 = vec3<i32>(-4446i, abs(u_input.a), ~_wgslsmith_mod_i32(-(~u_input.a), 1i));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, 1813f), vec2<f32>(arg_0.a, -281f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-728f, -1000f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.b.b.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2413f, -1366f)))), arg_0.b.b, true);
    let var_2 = var_1.b.c.a.x;
    var var_3 = func_5(arg_0).a.a.wwz;
    let var_4 = var_0;
    return _wgslsmith_f_op_f32(-var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_6(Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(642f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(220f)))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-408f, 897f))), func_5(func_1()), func_1().b.b.c.a.x))));
    var var_1 = func_4(Struct_2(func_4(func_4(Struct_2(Struct_1(vec4<bool>(true, true, true, false)), vec3<f32>(var_0, var_0, -504f), Struct_1(vec4<bool>(false, false, false, false))), Struct_3(vec2<f32>(-497f, -460f), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), vec3<f32>(-521f, -176f, 1983f), Struct_1(vec4<bool>(true, false, true, true))), false)).b, Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1568f, 348f), vec2<f32>(var_0, var_0), false)), Struct_2(Struct_1(vec4<bool>(true, false, false, true)), vec3<f32>(223f, var_0, -876f), Struct_1(vec4<bool>(true, true, false, false))), true)).b.c, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1093f - 612f))), var_0, _wgslsmith_f_op_f32(round(var_0))), func_5(Struct_5(-846f, func_1().b)).a), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -692f)), func_4(func_4(Struct_2(Struct_1(vec4<bool>(true, false, true, true)), vec3<f32>(var_0, var_0, 904f), Struct_1(vec4<bool>(false, false, true, true))), Struct_3(vec2<f32>(1657f, -451f), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), vec3<f32>(var_0, var_0, var_0), Struct_1(vec4<bool>(false, false, true, false))), true)).b, func_4(Struct_2(Struct_1(vec4<bool>(false, true, true, true)), vec3<f32>(var_0, 627f, 1774f), Struct_1(vec4<bool>(false, true, false, false))), Struct_3(vec2<f32>(-1000f, -1000f), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), vec3<f32>(var_0, 603f, var_0), Struct_1(vec4<bool>(false, true, false, false))), false))).b.b.x), Struct_2(func_2(any(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-70383i, u_input.a))), vec3<f32>(_wgslsmith_f_op_f32(min(var_0, var_0)), var_0, var_0), func_1().b.b.c), any(vec2<bool>(true, true)) == !select(false, false, false)));
    var_1 = func_4(Struct_2(var_1.b.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.x, 1091f))), var_0, var_0), func_1().b.b.c), func_1().b);
    let var_2 = ~vec4<i32>(u_input.a, u_input.a, _wgslsmith_clamp_i32(1i, u_input.a, u_input.a >> (103328u % 32u)), _wgslsmith_mod_i32(~u_input.a, u_input.a)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(~u_input.a), u_input.a, _wgslsmith_add_i32(u_input.a, -16621i), 9768i), ~(~(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    let var_3 = vec4<f32>(1987f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(264f - var_0), func_4(func_4(Struct_2(Struct_1(vec4<bool>(var_1.b.a.a.x, true, false, true)), vec3<f32>(-2284f, var_0, -708f), Struct_1(var_1.b.a.a)), func_1().b).b, func_1().b).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b.x) + -2798f)), 716f);
    let var_4 = Struct_1(vec4<bool>(-756f < var_3.x, !(!all(vec3<bool>(var_1.c, var_1.c, var_1.b.c.a.x))), var_1.b.a.a.x, u_input.a >= 46593i));
    let var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_0, var_3.x)), var_1.a.x, 1186f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.x)) * _wgslsmith_div_f32(1f, var_3.x))));
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, var_5.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-119f, var_3.x)))))))), Struct_2(var_4, _wgslsmith_f_op_vec3_f32(func_5(func_1()).b - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.x, 1743f, var_3.x) + vec3<f32>(1274f, 1000f, -1098f)) + _wgslsmith_f_op_vec3_f32(-var_3.xzy))), Struct_1(vec4<bool>(true, !var_1.c, !var_1.b.c.a.x, 0i >= u_input.a))), !var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, 28434u), ~1u), ~max(vec2<u32>(4294967295u, 116099u), vec2<u32>(0u, 1u)) >> (countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(24248u, 4294967295u), vec2<u32>(4294967295u, 35939u), vec2<u32>(4294967295u, 4294967295u))) % vec2<u32>(32u))), vec3<i32>(~(-29895i) ^ u_input.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_2.wz, vec2<i32>(112i, var_2.x)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, -63819i))), var_2.x & -var_2.x), 55846i), countOneBits(max(46153u, ~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-var_5.x)) - _wgslsmith_f_op_f32(-1000f + 854f))));
}

