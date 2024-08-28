struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: bool,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>) -> bool {
    var var_0 = all(!vec4<bool>(all(vec4<bool>(arg_1.a.x, true, arg_0.c, arg_1.a.x)), arg_0.d.x, arg_0.c, arg_1.a.x));
    return u_input.a.x < -firstLeadingBit(1i);
}

fn func_2(arg_0: Struct_3) -> i32 {
    var var_0 = 728f;
    let var_1 = vec2<bool>(!(arg_0.b.a.x == arg_0.d.a.x), !(u_input.b.x != 1i));
    var var_2 = vec4<bool>(arg_0.b.c.x != ~firstLeadingBit(select(arg_0.b.b.x, arg_0.b.c.x, arg_0.a)), !(1u <= arg_0.d.b.x), func_3(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-776f, arg_0.c, arg_0.c)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1387f, 1006f, 911f), vec3<f32>(arg_0.c, arg_0.c, -788f)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -100f), arg_0.d.a.x, !arg_0.d.a, Struct_1(vec3<bool>(true, true, false), arg_0.d.d, vec4<u32>(arg_0.b.b.x, arg_0.d.d.x, arg_0.b.b.x, arg_0.d.c.x), ~arg_0.b.b)), Struct_1(!select(arg_0.d.a, vec3<bool>(true, var_1.x, false), arg_0.b.a.x), arg_0.b.b, vec4<u32>(~arg_0.b.d.x, 1u, reverseBits(62086u), 1u), arg_0.b.d), vec3<u32>(arg_0.d.d.x, ~(~3268u), 0u)), ~(~1u) > arg_0.d.d.x);
    var_2 = vec4<bool>(all(select(!vec4<bool>(true, true, arg_0.d.a.x, false), select(select(vec4<bool>(arg_0.a, true, var_2.x, arg_0.a), vec4<bool>(var_2.x, arg_0.b.a.x, false, arg_0.a), vec4<bool>(true, var_1.x, false, true)), !vec4<bool>(true, true, true, var_2.x), var_2.x && arg_0.a), -1193f == _wgslsmith_f_op_f32(step(arg_0.c, arg_0.c)))), !(!(!(!var_2.x))), (u_input.a.x | firstLeadingBit(_wgslsmith_mult_i32(arg_0.e.x, -11531i))) < u_input.a.x, true);
    var_0 = arg_0.c;
    return min(arg_0.e.x, -6925i) >> (~arg_0.b.c.x % 32u);
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = ~countOneBits(vec4<i32>(-arg_0.a.x, ~(i32(-1i) * -52109i), 4276i, func_2(Struct_3(true, Struct_1(vec3<bool>(false, false, false), arg_2.b, arg_2.b, arg_2.c), 1455f, arg_2, vec2<i32>(u_input.a.x, arg_0.a.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(step(576f, -1077f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-102f - -760f))), -320f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-779f, _wgslsmith_f_op_f32(round(-1331f))))))));
    var_0 = vec4<i32>(select(1i, -1i & firstLeadingBit(_wgslsmith_add_i32(u_input.b.x, 1i)), ~var_0.x > 0i), -1i, max(-arg_0.a.x, 16155i), firstTrailingBit(2147483647i));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(195f + var_1.x), var_1.x, _wgslsmith_f_op_f32(-249f * _wgslsmith_f_op_f32(-var_1.x)));
    var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -2042f, -1281f))), var_1.zwx)), var_1.zzw))));
    return Struct_2(var_1.xzx, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(-627f, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.x, var_1.x)), -354f), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec3_f32(var_1.wwz * var_1.zyz))), select(!(var_2.x != var_1.x), false, true) && false, !vec3<bool>(all(!vec3<bool>(true, arg_3, arg_2.a.x)), true, false), arg_2);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: f32) -> vec2<u32> {
    var var_0 = arg_0.e.b;
    var_0 = _wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(arg_0.e.d, min(vec4<u32>(27138u, 4294967295u, 110303u, arg_0.e.d.x) >> (arg_1.e.c % vec4<u32>(32u)), vec4<u32>(0u, arg_0.e.c.x, arg_0.e.d.x, 0u)), ~(~vec4<u32>(arg_0.e.c.x, 4612u, arg_1.e.c.x, arg_0.e.d.x))), func_1(Struct_4(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-34899i, 2147483647i, -1i, -21818i), vec4<i32>(u_input.a.x, 0i, -42195i, -6492i)), _wgslsmith_sub_i32(u_input.a.x, arg_2.x), u_input.a.x & arg_2.x)), func_1(Struct_4(u_input.b >> (vec3<u32>(1978u, 1u, var_0.x) % vec3<u32>(32u))), _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.e.c.x, 15947u), abs(var_0.x)), Struct_1(arg_1.d, arg_1.e.d, arg_0.e.c, vec4<u32>(arg_1.e.c.x, arg_1.e.c.x, arg_0.e.b.x, 38740u)), !(!arg_0.e.a.x)).e.d.x, Struct_1(vec3<bool>(all(arg_1.d), arg_0.e.a.x, arg_0.d.x), arg_0.e.c, ~_wgslsmith_clamp_vec4_u32(arg_0.e.d, vec4<u32>(1u, var_0.x, arg_1.e.b.x, 57220u), vec4<u32>(arg_0.e.c.x, 4294967295u, arg_1.e.d.x, arg_0.e.b.x)), arg_0.e.b), true).e.d);
    var var_1 = arg_0.e;
    var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~select(arg_0.e.c.x, 3708u, var_1.a.x), reverseBits(_wgslsmith_mult_u32(1u, arg_0.e.d.x)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.e.b.x, 58918u, var_1.b.x)), ~arg_0.e.b.xxy), ~1u), ~vec4<u32>(~0u, ~var_1.c.x, _wgslsmith_sub_u32(12227u, var_1.d.x), ~arg_1.e.d.x)), arg_0.e.c);
    var var_2 = ~vec4<i32>(~reverseBits(~1i), 33704i, 1i, -(i32(-1i) * -arg_2.x));
    return var_1.d.wx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_4(func_1(Struct_4(u_input.a), 18062u, Struct_1(vec3<bool>(false, true, true), vec4<u32>(37088u, 39332u, 23586u, 1u), vec4<u32>(0u, 11486u, 83724u, 0u), vec4<u32>(75665u, 4294967295u, 4294967295u, 14392u)), false), Struct_2(vec3<f32>(1635f, 1197f, -1596f), vec3<f32>(-1107f, -1000f, 1000f), false, vec3<bool>(true, false, false), Struct_1(vec3<bool>(true, true, false), vec4<u32>(53812u, 65438u, 74542u, 35231u), vec4<u32>(1872u, 0u, 45269u, 0u), vec4<u32>(79269u, 96640u, 14044u, 0u))), reverseBits(u_input.a), _wgslsmith_f_op_f32(trunc(804f)))) ^ ~vec2<u32>(1u, 1u);
    var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, ~(~(~1u))), ~firstTrailingBit(~(~vec2<u32>(0u, var_0.x))), ~vec2<u32>(1u, _wgslsmith_div_u32(0u, 1u)));
    var_0 = abs((_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 1u), vec2<u32>(4294967295u, 24893u)), abs(vec2<u32>(var_0.x, 0u)), vec2<u32>(19823u, 4294967295u) << (vec2<u32>(var_0.x, 1u) % vec2<u32>(32u))) >> (vec2<u32>(~var_0.x, func_4(Struct_2(vec3<f32>(700f, 775f, -1205f), vec3<f32>(-1060f, -1177f, 1561f), true, vec3<bool>(false, true, false), Struct_1(vec3<bool>(false, false, true), vec4<u32>(var_0.x, 1u, var_0.x, 0u), vec4<u32>(var_0.x, 0u, 7013u, var_0.x), vec4<u32>(var_0.x, 55131u, var_0.x, var_0.x))), Struct_2(vec3<f32>(113f, -1000f, 383f), vec3<f32>(-716f, 682f, 2102f), false, vec3<bool>(false, false, true), Struct_1(vec3<bool>(false, true, false), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(52207u, 1u, 26405u, 19050u), vec4<u32>(var_0.x, 51755u, 4294967295u, 1u))), u_input.b, -551f).x) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 0u), min(~vec2<u32>(var_0.x, 36852u), vec2<u32>(var_0.x, 4294967295u) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)))));
    var var_1 = Struct_4(vec3<i32>(0i, reverseBits(0i), _wgslsmith_add_i32(~u_input.b.x, i32(-1i) * -27850i)));
    let var_2 = Struct_3(false && (var_0.x >= (var_0.x & _wgslsmith_mult_u32(var_0.x, 4294967295u))), func_1(Struct_4((vec3<i32>(var_1.a.x, -1i, u_input.a.x) | u_input.b) | _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -54402i, u_input.a.x), vec3<i32>(0i, var_1.a.x, -18453i))), 1u, Struct_1(vec3<bool>(false, true, true), select(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x), ~vec4<u32>(var_0.x, 45469u, 0u, var_0.x), true), abs(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_0.x, 8470u, var_0.x, var_0.x)), vec4<u32>(var_0.x, 50407u, 41092u, 1u))), true).e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2227f, 712f, false)), _wgslsmith_f_op_f32(max(-1074f, 230f))) * 799f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-871f * -1788f), func_1(Struct_4(u_input.b), var_0.x, Struct_1(vec3<bool>(true, true, true), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, 30900u, 0u, 0u), vec4<u32>(var_0.x, 1u, var_0.x, 1u)), true).b.x))), func_1(Struct_4(-(~vec3<i32>(-39588i, u_input.a.x, u_input.a.x))), var_0.x, func_1(Struct_4(countOneBits(vec3<i32>(0i, 55820i, u_input.a.x))), 1u, func_1(Struct_4(u_input.b), var_0.x, func_1(Struct_4(vec3<i32>(14679i, 2343i, u_input.b.x)), var_0.x, Struct_1(vec3<bool>(true, false, true), vec4<u32>(3856u, 4294967295u, 5833u, var_0.x), vec4<u32>(0u, 14245u, 33115u, var_0.x), vec4<u32>(25320u, 43206u, 1191u, 51359u)), false).e, any(vec3<bool>(false, false, true))).e, all(vec2<bool>(true, false))).e, false).e, _wgslsmith_clamp_vec2_i32(abs(var_1.a.zz), _wgslsmith_mult_vec2_i32(u_input.a.zy, vec2<i32>(-5703i, _wgslsmith_dot_vec2_i32(u_input.a.zy, var_1.a.yy))), u_input.a.zx));
    let var_3 = vec4<u32>(62394u, firstLeadingBit(abs(_wgslsmith_div_u32(countOneBits(var_0.x), 4294967295u))), max(~(~8664u), func_4(Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.c, var_2.c, -162f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, -1000f, -1642f)), false, vec3<bool>(false, var_2.b.a.x, var_2.a), Struct_1(vec3<bool>(var_2.d.a.x, false, true), var_2.b.c, var_2.b.d, var_2.d.b)), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-634f, 750f, 127f), vec3<f32>(var_2.c, var_2.c, -531f), var_2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1731f, var_2.c, -335f)), func_1(Struct_4(vec3<i32>(-1i, var_2.e.x, var_1.a.x)), 7111u, var_2.b, false).e.a.x, !vec3<bool>(false, var_2.b.a.x, var_2.b.a.x), var_2.d), vec3<i32>(-2147483647i, _wgslsmith_sub_i32(var_1.a.x, -43223i), u_input.b.x << (var_2.b.b.x % 32u)), -1923f).x), 0u);
    var var_4 = Struct_4(vec3<i32>(~(_wgslsmith_mod_i32(21570i, -1i) << (firstTrailingBit(var_3.x) % 32u)), u_input.b.x, 2147483647i));
    let var_5 = ~abs(var_0.x);
    var_4 = Struct_4(vec3<i32>(firstLeadingBit(~var_2.e.x), u_input.a.x, -7543i));
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-182f, var_2.c, 1927f, 1020f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.c, var_2.c, -747f, var_2.c), vec4<f32>(138f, var_2.c, -251f, 1417f), var_2.a)))))), 87424u);
}

