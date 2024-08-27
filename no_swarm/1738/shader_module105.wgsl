struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> vec4<u32> {
    let var_0 = ~(abs(vec4<i32>(-5486i ^ u_input.b.x, -arg_1, firstLeadingBit(u_input.b.x), 0i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, firstTrailingBit(50494u), _wgslsmith_sub_u32(33206u, u_input.a), _wgslsmith_mult_u32(u_input.a, 4294967295u)), select(firstTrailingBit(arg_0), ~vec4<u32>(arg_0.x, u_input.a, u_input.a, 1u), vec4<bool>(true, false, false, true))) % vec4<u32>(32u)));
    let var_1 = Struct_1(countOneBits(arg_1));
    let var_2 = Struct_2(min(u_input.b.x, var_1.a << (~(arg_0.x & 1u) % 32u)), Struct_1(~_wgslsmith_mod_i32(~var_0.x, _wgslsmith_div_i32(var_0.x, -2147483647i))), Struct_1(~min(var_1.a, reverseBits(-65105i))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1439f, 484f, true)) - _wgslsmith_f_op_f32(trunc(-1204f))))), 458f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1062f)) * _wgslsmith_f_op_f32(435f * -1527f)) - -259f), _wgslsmith_f_op_f32(-1182f - 767f)));
    let var_3 = var_1.a;
    let var_4 = var_2.c;
    return arg_0;
}

fn func_2() -> Struct_1 {
    let var_0 = ~min(_wgslsmith_mod_vec4_u32(func_3(vec4<u32>(u_input.a, 6556u, u_input.a, 4294967295u), i32(-1i) * -10847i), ~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u))), vec4<u32>(~u_input.a, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))), 0u, u_input.a));
    let var_1 = Struct_1(0i);
    var var_2 = any(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-993f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-113f * 234f))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-371f, -1161f)), _wgslsmith_f_op_f32(-1000f * 1277f))), 940f), false)));
    let var_4 = Struct_1(_wgslsmith_dot_vec4_i32(abs(-_wgslsmith_add_vec4_i32(vec4<i32>(38532i, 12183i, var_1.a, 30712i), vec4<i32>(14549i, 0i, u_input.b.x, 834i))), countOneBits(-firstTrailingBit(vec4<i32>(var_1.a, 9113i, 1i, 19824i)))));
    return var_1;
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = Struct_2(110244i << (arg_0.x % 32u), arg_2, Struct_1(countOneBits(_wgslsmith_mult_i32(33746i ^ arg_2.a, ~arg_2.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1244f)), -621f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -554f, 174f)));
    var var_1 = _wgslsmith_f_op_f32(-var_0.d.x);
    var_1 = -491f;
    let var_2 = -_wgslsmith_mult_i32(-(~var_0.a), func_2().a);
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(func_2().a, 2147483647i, var_2, arg_2.a) ^ (vec4<i32>(-1i) * -(vec4<i32>(arg_2.a, arg_2.a, 65543i, u_input.b.x) << (vec4<u32>(u_input.a, arg_0.x, 1u, 1u) % vec4<u32>(32u)))), reverseBits(-firstTrailingBit(~vec4<i32>(u_input.b.x, -1i, u_input.b.x, 0i))));
    return vec3<f32>(_wgslsmith_div_f32(var_0.d.x, var_0.d.x), var_0.d.x, _wgslsmith_f_op_f32(abs(1310f)));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = -19739i;
    let var_1 = -1118f;
    var_0 = _wgslsmith_mod_i32(~(-firstLeadingBit(_wgslsmith_mod_i32(arg_2.x, 0i))), -1i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 137f));
    let var_3 = _wgslsmith_mult_vec4_i32(-select(min(vec4<i32>(u_input.b.x, arg_2.x, -28500i, arg_2.x), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, -1i)) & select(vec4<i32>(-2147483647i, arg_2.x, 46502i, -17540i), vec4<i32>(arg_2.x, -36768i, u_input.b.x, -3589i), false), vec4<i32>(_wgslsmith_clamp_i32(arg_2.x, 1i, 0i), 9625i, min(arg_2.x, u_input.b.x), -1i), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true), true)), -select(-_wgslsmith_sub_vec4_i32(vec4<i32>(-2469i, -1870i, -49i, u_input.b.x), vec4<i32>(-38370i, -22733i, u_input.b.x, -46847i)), -_wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_2.x, -26183i, -21614i), vec4<i32>(26026i, -3852i, -1i, u_input.b.x)), _wgslsmith_f_op_f32(arg_1.x * 225f) >= -1000f));
    return func_2();
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))), true), select(vec4<bool>(all(vec4<bool>(true, true, false, true)), true, all(vec4<bool>(false, true, false, true)), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false))), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))), vec4<bool>(select(true, true, true), all(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, false)), true), true)));
    let var_1 = arg_1.b;
    var var_2 = func_2();
    let var_3 = i32(-1i) * -_wgslsmith_div_i32(-1i, -2147483647i);
    var_2 = Struct_1(_wgslsmith_sub_i32(~var_3 >> (32100u % 32u), arg_2.x));
    return Struct_2(abs(var_3), Struct_1(arg_2.x), func_2(), arg_1.d);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-592f)), _wgslsmith_f_op_f32(-632f * -845f), -248f), vec3<f32>(-1521f, _wgslsmith_f_op_f32(abs(302f)), _wgslsmith_f_op_f32(abs(-291f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-150f, -180f, 1000f)))))));
    let var_1 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 0i, 23124i, -15722i), ~firstLeadingBit(vec4<i32>(u_input.b.x, 18762i, -2147483647i, -31382i))), 13807i);
    return func_6(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(~vec3<u32>(u_input.a, 4294967295u, 0u), true, func_2()))), vec3<f32>(var_0.x, -987f, -710f), vec3<i32>(_wgslsmith_add_i32(var_1, 1i), 9809i, ~0i) >> (~(~vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), Struct_2(_wgslsmith_div_i32(-27938i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, var_1), firstTrailingBit(var_1))), Struct_1(13552i), Struct_1(60710i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 643f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(327f, 828f, var_0.x, -1284f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 2220f, -606f, var_0.x), vec4<f32>(-550f, var_0.x, 221f, 727f)))))), firstLeadingBit(-u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1134f)));
    let var_1 = func_1();
    var var_2 = select(-(vec2<i32>(-1i) * -countOneBits(u_input.b)), vec2<i32>(1i, abs(0i)), vec2<bool>(select(true, false, min(u_input.a, u_input.a) >= 18363u), true));
    var var_3 = var_1;
    var_3 = Struct_2(-func_1().c.a, var_1.b, func_6(Struct_1(-2147483647i), var_1, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_1.c.a, var_3.a), var_2.x), select(-u_input.b, firstLeadingBit(vec2<i32>(var_1.c.a, u_input.b.x)), true))).b, vec4<f32>(479f, -130f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-141f + var_3.d.x) * -615f) * -572f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1118f + -774f) + var_3.d.x)))));
    var var_4 = ~(~select(-reverseBits(u_input.b), vec2<i32>(0i, -u_input.b.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_1.b.a, u_input.b.x, var_1.b.a), vec3<i32>(~countOneBits(_wgslsmith_mult_i32(var_1.c.a, var_2.x)), var_3.a, -var_2.x >> (~select(0u, u_input.a, false) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-719f)) * _wgslsmith_f_op_f32(var_1.d.x * func_1().d.x))), _wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.a, u_input.a ^ u_input.a), ~(~vec2<u32>(u_input.a, 23748u))), ~(~vec2<u32>(u_input.a, 4294967295u) << (~vec2<u32>(9985u, 37739u) % vec2<u32>(32u)))));
}

