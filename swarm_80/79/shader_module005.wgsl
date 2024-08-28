struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = vec2<bool>(true & all(vec2<bool>(true, true)), true);
    var_0 = vec2<bool>(true, var_0.x);
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_clamp_u32(1u, 1u, ~0u) & ~1u, abs(1u), _wgslsmith_mult_u32(~1u, 1u), ~(~(~24694u))), u_input.a, true, Struct_1(~reverseBits(min(4294967295u, 0u)), max(reverseBits(~1u), 26801u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f), -578f) - _wgslsmith_f_op_f32(round(1f)))), 2147483647i);
    var var_2 = 46123u;
    var_0 = select(vec2<bool>(var_1.b <= firstTrailingBit(_wgslsmith_div_i32(19249i, var_1.e)), any(select(!vec4<bool>(var_1.c, true, true, false), select(vec4<bool>(var_1.c, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_1.c, var_0.x, var_0.x), vec4<bool>(var_1.c, false, false, true)), vec4<bool>(false, var_0.x, var_1.c, var_0.x)))), vec2<bool>(all(vec4<bool>(false, arg_0 <= -68852i, all(vec2<bool>(var_1.c, var_1.c)), false)), var_1.d.c >= var_1.d.c), true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -914f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.d.c)))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-359f, -251f))) + _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1495f, -360f))))), _wgslsmith_f_op_f32(min(-1000f, 191f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-787f, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_i32(68695i, _wgslsmith_div_i32(-42968i, u_input.a), firstLeadingBit(0i)), _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)))));
    var var_1 = Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, ~17924u, ~6933u, _wgslsmith_mult_u32(1u, 1u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, 6808u)), ~61988u, 4294967295u) ^ ~min(vec4<u32>(1u, 65508u, 45890u, 20727u), vec4<u32>(19354u, 4294967295u, 19355u, 111627u)), ~max(vec4<u32>(25506u, 4294967295u, 8923u, 26593u), vec4<u32>(2329u, 10265u, 35649u, 0u))), _wgslsmith_mod_i32(u_input.a, -u_input.a), 0i > u_input.a, Struct_1(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(0u, 6842u, 23929u)), ~vec3<u32>(52066u, 19278u, 4294967295u)), 4294967295u, arg_0), 14132i << (~(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 53495u), vec3<u32>(55963u, 28746u, 4294967295u)) & abs(0u)) % 32u));
    let var_2 = Struct_2(countOneBits(vec4<u32>(23835u, _wgslsmith_div_u32(var_1.d.a, 4294967295u) ^ 4486u, abs(1u), 0u | reverseBits(var_1.d.a))), ~var_1.e | _wgslsmith_mod_i32(-var_1.b, -(~u_input.a)), u_input.a > min(max(u_input.a, 0i), select(-47783i, -7686i, false) | (var_1.e ^ -2147483647i)), var_1.d, 108906i);
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.d.c - 1047f), -277f, _wgslsmith_f_op_f32(-495f * -733f), var_2.d.c) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(var_2.d.c, var_2.d.c)), _wgslsmith_f_op_f32(min(-244f, 1240f)), var_0.x, -1578f))), vec4<f32>(_wgslsmith_f_op_f32(sign(295f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + var_0.x) * -1000f), 1091f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(862f)))), any(vec2<bool>(true, true)) || !var_2.c)));
    let var_3 = var_2;
    return Struct_2(var_1.a, var_2.b, (select(any(vec4<bool>(var_1.c, true, true, true)), var_1.c & var_2.c, var_1.c) & (856f >= _wgslsmith_f_op_f32(ceil(347f)))) || false, Struct_1(_wgslsmith_sub_u32(var_2.a.x, 4294967295u), var_3.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -949f))), -3593i);
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 933f)))))));
    let var_1 = Struct_2(~vec4<u32>(79231u, 1u, 1u, ~(~69520u)), -17333i, true, Struct_1(0u, ~4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-889f * var_0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(floor(var_0))))), 0i);
    var var_2 = Struct_1(var_1.a.x, var_1.d.a, 202f);
    let var_3 = func_2(_wgslsmith_f_op_f32(-var_1.d.c));
    var var_4 = Struct_2(vec4<u32>(var_3.a.x, _wgslsmith_dot_vec3_u32(max(vec3<u32>(22180u, var_1.d.a, var_1.d.a), countOneBits(var_3.a.xyy)), vec3<u32>(var_3.a.x, ~21945u, var_2.b)), firstTrailingBit(101866u), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_1.a.x, 0u, var_3.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d.b, var_3.d.a, var_1.a.x, 0u), var_1.a))), ~u_input.a, true, var_1.d, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_clamp_i32(~u_input.a, _wgslsmith_div_i32(1i, 2147483647i), ~u_input.a)), countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(69127i, var_1.e) | vec2<i32>(1i, 18343i), -vec2<i32>(69671i, u_input.a)))));
    return ~(~(~var_1.d.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_u32(~4294967295u, 1u), ~firstTrailingBit(~firstTrailingBit(11891u)), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-666f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f) * _wgslsmith_div_f32(-863f, 119f))), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)))))));
    var var_1 = abs(_wgslsmith_sub_i32(u_input.a, ~1i << (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 2671u, 12968u, var_0.b), vec4<u32>(var_0.b, var_0.a, 1u, 781u)) % 32u)));
    var var_2 = _wgslsmith_div_u32(var_0.a, ~(var_0.b >> (func_1(_wgslsmith_f_op_f32(1423f - var_0.c)) % 32u)));
    let var_3 = _wgslsmith_f_op_f32(-var_0.c);
    var_0 = func_2(var_0.c).d;
    let var_4 = ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a), 0i), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-2147483647i, 1i, u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 53368i, u_input.a), vec3<i32>(u_input.a, -1i, 1i), vec3<i32>(-8400i, -1i, u_input.a)), -vec3<i32>(u_input.a, 9223i, u_input.a))));
    var var_5 = u_input.a;
    var var_6 = ~firstLeadingBit(_wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, var_0.a, var_0.b, var_0.b), vec4<u32>(var_0.b, 0u, var_0.a, var_0.a))), countOneBits(func_2(var_3).a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-156f, _wgslsmith_f_op_f32(var_3 - var_0.c), _wgslsmith_f_op_f32(932f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(trunc(-1605f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c, var_3)))))));
}

