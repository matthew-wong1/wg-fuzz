struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-708f + 596f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -680f))));
    var var_1 = (i32(-1i) * -(~(-u_input.c))) | -u_input.c;
    return Struct_1(true, -149f);
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-517f, _wgslsmith_f_op_f32(arg_0 * arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-396f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, 236f, false)) - _wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1364f)), vec2<f32>(1000f, arg_0)) - vec2<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -404f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-704f, arg_0, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1112f), _wgslsmith_div_f32(arg_0, -666f)))))));
    var var_1 = true;
    var var_2 = vec4<f32>(359f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-842f - _wgslsmith_f_op_f32(floor(arg_0))) - _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-500f + _wgslsmith_f_op_f32(var_0.x + arg_0)), _wgslsmith_f_op_f32(var_0.x + -513f));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(176f, -664f)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-501f))), var_0.x);
    var_1 = any(vec3<bool>(all(vec4<bool>(true, false, false, true)) & true, true, false)) & (40545u < u_input.a.x);
    return var_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    var var_0 = firstTrailingBit(13065i);
    var var_1 = ~(~u_input.d.x) & 0u;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_1.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.b - arg_2.b))), -1497f)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b, arg_3.x, var_2, 1339f), vec4<f32>(-409f, arg_3.x, arg_3.x, -1938f), true)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(349f, arg_2.b, 138f, var_2))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1227f), _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(floor(func_1(u_input.c).b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + arg_2.b) - _wgslsmith_f_op_f32(exp2(arg_1.b)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b, -166f, arg_1.b, var_2)))))))));
    let var_4 = vec4<f32>(629f, 477f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.x, -1075f)))) + _wgslsmith_f_op_f32(round(-633f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(-arg_2.b)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), var_3.x)))));
    return _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) + 570f));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_f_op_f32(func_4(Struct_1(!(arg_1 == u_input.c), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(sign(arg_0.b))))), Struct_1(false, 562f), arg_0, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(169f, arg_0.b, arg_0.b)))))))), -1291f);
    let var_1 = true;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1369f), _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), var_1)), 359f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-848f)) - _wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1022f, 263f, -620f) - vec3<f32>(-686f, var_0.x, 827f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2326f, var_0.x, -866f))))), select(vec3<bool>(func_1(1i).a, func_1(-9580i).a, var_1), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(arg_0.a, true, arg_0.a)), !vec3<bool>(arg_0.a, false, true), !vec3<bool>(var_1, false, arg_0.a)), select(true, true, all(vec3<bool>(arg_0.a, var_1, arg_0.a)))))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_div_f32(func_1(i32(-1i) * -1i).b, arg_0.b), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(arg_0.b * 1396f))));
    var var_2 = vec3<u32>(_wgslsmith_clamp_u32(min(u_input.e, u_input.d.x), _wgslsmith_add_u32(~u_input.b.x, max(~u_input.d.x, u_input.d.x)), ~(u_input.b.x | _wgslsmith_sub_u32(u_input.d.x, 97483u))), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, 0u), u_input.d)), ~vec3<u32>(70289u, u_input.e, abs(u_input.e))), ~abs(~62679u));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-func_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(-27278i, u_input.c), vec2<i32>(u_input.c, 1i) << (u_input.a % vec2<u32>(32u)))).b), -667f);
    return func_1(arg_1);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(abs(~arg_2), 547u) >> (arg_1.x % 32u);
    let var_1 = Struct_1(true, -726f);
    let var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(~vec3<i32>(-43622i, u_input.c, u_input.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(3941i, -28746i, u_input.c), ~vec3<i32>(u_input.c, -2147483647i, -68540i))), u_input.c | -1i, u_input.c), vec3<i32>(u_input.c, u_input.c, 1i));
    var var_3 = vec4<u32>(4294967295u, ~arg_1.x, ~reverseBits(arg_1.x ^ 4294967295u), 85460u) & ~arg_1;
    let var_4 = ~var_2.x;
    return func_1(min(~1634i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~var_4, var_2.x), var_4, 0i)));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> vec3<f32> {
    var var_0 = Struct_1(!func_2(Struct_1(true, _wgslsmith_f_op_f32(abs(-952f))), ~1i << (u_input.e % 32u)).a, 2207f);
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(arg_2.x, 1i, arg_2.x, u_input.c)), select(arg_2, vec4<i32>(arg_2.x, arg_1, arg_2.x, -5862i) >> (u_input.b % vec4<u32>(32u)), select(vec4<bool>(true, true, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), vec4<bool>(var_0.a, arg_0.a, arg_0.a, false)))) >= ((countOneBits(arg_2.x) >> (~u_input.b.x % 32u)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 73364u, u_input.e), u_input.d), u_input.d) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - 1000f))));
    let var_1 = arg_2.xx;
    var var_2 = func_5(arg_0, ~vec4<u32>(u_input.e, 46391u, _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(1u, u_input.b.x)), ~reverseBits(14255u)), 86981u, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2123f), _wgslsmith_f_op_f32(step(1582f, arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2(Struct_1(true, var_0.b), -2147483647i).b, 279f) * var_0.b), 934f));
    var var_3 = _wgslsmith_mult_u32(u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(32109u, ~(~u_input.a.x), u_input.e, 1u), _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.d.x, firstTrailingBit(1u), 30693u))));
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -538f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(938f * var_2.b) * 2906f) * -453f), 1002f), -677f);
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<u32> {
    return ~(~u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_f_op_vec3_f32(func_6(func_5(func_2(func_1(u_input.c), u_input.c), _wgslsmith_clamp_vec4_u32(reverseBits(u_input.b), u_input.b, select(u_input.b, u_input.b, false)), 16154u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -219f, -523f))), -5947i, -select(~vec4<i32>(-1i, u_input.c, u_input.c, 32117i), -vec4<i32>(-33042i, u_input.c, 15556i, u_input.c), true))), func_5(Struct_1(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_6(Struct_1(false, -1384f), u_input.c, vec4<i32>(30495i, -13895i, 2147483647i, -1i))).x)), u_input.b, ~1u, vec3<f32>(_wgslsmith_f_op_f32(-468f + -503f), -1157f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1218f)) + -1992f))), vec4<bool>(-1i == u_input.c, ~(~1u) <= ~u_input.a.x, true, true));
    var var_1 = max(u_input.d, ~vec3<u32>(var_0.x, 67399u, 4294967295u));
    let var_2 = Struct_1(!((min(1i, 2147483647i) > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 22035i, -1i, u_input.c), vec4<i32>(-1i, 0i, -1i, u_input.c))) | (reverseBits(var_0.x) != (1u & var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f)))));
    var var_3 = _wgslsmith_mod_vec3_u32(~firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(var_1.x, var_0.x, 20362u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 0u, var_1.x), u_input.b.xwx))), ~min(~_wgslsmith_sub_vec3_u32(u_input.b.zyw, vec3<u32>(0u, 0u, 0u)), select(vec3<u32>(49955u, 0u, var_1.x), u_input.d << (u_input.b.wwz % vec3<u32>(32u)), func_1(0i).a)));
    var_1 = vec3<u32>(u_input.d.x | ~(~var_3.x), u_input.d.x, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~min(firstLeadingBit(select(vec2<u32>(u_input.d.x, u_input.e), vec2<u32>(var_3.x, var_3.x), true)), abs(var_3.xy) & ~vec2<u32>(4294967295u, u_input.d.x)));
}

