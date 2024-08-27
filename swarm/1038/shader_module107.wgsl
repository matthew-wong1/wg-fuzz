struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_4(vec3<bool>(true, false, !all(vec3<bool>(true, true, true))));
    let var_1 = Struct_4(select(select(vec3<bool>(true, !var_0.a.x, !var_0.a.x), var_0.a, var_0.a), var_0.a, select(true, any(select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(true, var_0.a.x, true), vec3<bool>(true, true, var_0.a.x))), any(vec3<bool>(false, var_0.a.x, var_0.a.x)))));
    var_0 = Struct_4(vec3<bool>(false, any(vec2<bool>(var_0.a.x, true)), false));
    var_0 = var_1;
    var_0 = Struct_4(vec3<bool>(!var_1.a.x, var_0.a.x, !(false != var_1.a.x) | all(vec3<bool>(var_1.a.x, var_0.a.x, true))));
    return u_input.d;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(~vec2<u32>(1u, 4294967295u)), firstTrailingBit(firstTrailingBit(vec2<u32>(arg_1.x, 0u)))), ~arg_1, u_input.a.ww), vec2<f32>(-1715f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -886f)))), 1u, vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b >> (vec4<u32>(1u, 4294967295u, u_input.c, arg_3) % vec4<u32>(32u)), ~u_input.b & abs(u_input.a)), u_input.c));
    let var_1 = vec3<bool>(~(var_0.d.x ^ 41849u) != 1u, arg_0, !(!arg_2.x));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(0i, 2147483647i, -2147483647i)), select(_wgslsmith_mult_vec3_i32(~vec3<i32>(6139i, -20849i, -82224i), vec3<i32>(1i, 1i, 1i)), ~vec3<i32>(1i, 1i, 1i), var_1.x)), _wgslsmith_mult_i32(2147483647i, firstLeadingBit(select(1i, -2147483647i << (arg_1.x % 32u), var_1.x))));
    var var_3 = 0i;
    var var_4 = Struct_2(vec4<u32>(arg_1.x, 39862u, abs(func_3()), _wgslsmith_dot_vec4_u32(reverseBits(max(vec4<u32>(arg_1.x, 4294967295u, arg_3, 75607u), u_input.b)), ~u_input.b)), Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) + _wgslsmith_f_op_vec2_f32(-var_0.b)))), arg_1.x, _wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_mult_u32(var_0.d.x, arg_1.x)), select(var_0.d, _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(82772u, 36696u)), arg_2.xx))), var_0, Struct_1(vec2<u32>(arg_1.x, arg_1.x), var_0.b, 38722u, vec2<u32>(_wgslsmith_mult_u32(14545u, 48274u), ~var_0.a.x) | ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(arg_1.x, 1u))), _wgslsmith_mod_u32(func_3(), arg_1.x));
    return _wgslsmith_add_i32(select(_wgslsmith_sub_i32(-select(1i, var_2, false), var_2), -1i, all(select(var_1.yy, arg_2.yw, true))), _wgslsmith_dot_vec4_i32(((vec4<i32>(var_2, var_2, var_2, var_2) ^ vec4<i32>(var_2, var_2, var_2, var_2)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, var_2, var_2, 1i), vec4<i32>(65716i, -2338i, var_2, var_2), vec4<i32>(var_2, var_2, 1i, -67714i))) << ((var_4.a | ~vec4<u32>(0u, 0u, u_input.c, var_0.c)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(select(abs(vec4<i32>(var_2, -7892i, var_2, 13035i)), firstLeadingBit(vec4<i32>(0i, var_2, 0i, var_2)), arg_2), -vec4<i32>(-42826i, -8239i, var_2, var_2))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.c.b.x)) * arg_1.b.b.x))) - _wgslsmith_f_op_f32(select(arg_1.d.b.x, _wgslsmith_f_op_f32(-arg_1.b.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-32551i, 0i)) == func_2(false, u_input.a.zy, vec4<bool>(true, true, arg_0.x, true), arg_3)))), -1050f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, false, false), Struct_2(vec4<u32>(u_input.d, u_input.b.x, 0u, u_input.c), Struct_1(u_input.b.zw, vec2<f32>(958f, 430f), u_input.a.x, u_input.b.xw), Struct_1(u_input.a.zz, vec2<f32>(1360f, 694f), 4294967295u, vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(u_input.a.x, u_input.d), vec2<f32>(205f, 2114f), u_input.b.x, u_input.a.wx), u_input.a.x), vec4<bool>(true, false, true, true), u_input.c)), _wgslsmith_f_op_f32(688f * 2083f), _wgslsmith_f_op_f32(max(1243f, 1605f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-400f, 228f, -609f))), vec3<f32>(-843f, _wgslsmith_f_op_f32(f32(-1f) * -469f), 346f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1599f + 805f)), 1438f)));
    var var_1 = -1i;
    var_1 = 56314i;
    let var_2 = select(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u << (u_input.d % 32u), 1u), vec2<u32>(~1u, 27085u)), _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.c, u_input.d, u_input.b.x) << (vec4<u32>(1041u, 0u, 32677u, 4294967295u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 70298u, 0u))), max(countOneBits(u_input.b) & vec4<u32>(u_input.c, 29876u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a.x << (0u % 32u), ~0u, min(u_input.d, 0u), ~u_input.c))), true);
    let var_3 = ~(~(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), firstLeadingBit(u_input.b.zx)) << (vec2<u32>(1u, ~u_input.a.x) % vec2<u32>(32u))));
    var var_4 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(select(vec3<i32>(2147483647i, -28480i, 40556i), ~vec3<i32>(8145i, -7589i, -2147483647i), vec3<bool>(true, false, false))), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(24988i, -1613i, 9530i, 1i), vec4<i32>(26822i, -13888i, -44939i, 271i)), vec4<i32>(-2147483647i, -15491i, 20264i, -32967i)), 1i, -_wgslsmith_sub_i32(14258i, -2013i))), countOneBits(select(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(2147483647i, 2147483647i, 86472i), vec3<i32>(-2147483647i, -2147483647i, -6161i), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)) & (vec3<i32>(26516i, -17378i, -2147483647i) << (min(u_input.a.wzx, u_input.b.wwz) % vec3<u32>(32u)))));
    var_4 = -(~(-_wgslsmith_sub_vec3_i32(~vec3<i32>(-15220i, -1i, 1i), -vec3<i32>(var_4.x, -21989i, var_4.x))));
    var_4 = -select(~abs(~vec3<i32>(var_4.x, var_4.x, var_4.x)), -abs(vec3<i32>(2140i, var_4.x, -48365i)), !any(vec3<bool>(true, true, true)));
    let var_5 = vec3<bool>(all(select(vec3<bool>(true, all(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(486f + _wgslsmith_f_op_f32(-1017f - _wgslsmith_f_op_f32(-472f * 405f))) <= var_0.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), var_0.x), -_wgslsmith_dot_vec3_i32(firstLeadingBit(abs(vec3<i32>(var_4.x, var_4.x, 18155i))), -vec3<i32>(-1i, var_4.x, var_4.x) | _wgslsmith_div_vec3_i32(vec3<i32>(var_4.x, 1i, -38905i), vec3<i32>(3980i, var_4.x, var_4.x))), vec2<u32>(_wgslsmith_div_u32(reverseBits(var_2 & 0u), var_3.x), countOneBits(~min(var_3.x, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))), -1i);
}

