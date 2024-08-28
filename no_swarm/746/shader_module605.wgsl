struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> bool {
    let var_0 = Struct_3(-((_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 15964i, u_input.c.x, u_input.d), vec4<i32>(u_input.b.x, u_input.c.x, -42869i, 53171i), vec4<i32>(1i, arg_1.b.d.x, u_input.a.x, 22589i)) | (vec4<i32>(2047i, -2147483647i, arg_0, arg_1.a.b.b) & vec4<i32>(arg_0, 23767i, 26025i, 13280i))) ^ -select(vec4<i32>(arg_1.a.d.b, u_input.c.x, -2147483647i, -44936i), vec4<i32>(7868i, u_input.d, arg_1.a.b.b, arg_1.a.a.d.x), vec4<bool>(arg_1.a.a.c, true, arg_1.a.a.c, arg_1.a.d.c))), arg_1.a.a.a, Struct_1(4294967295u, min(arg_0 | 16600i, 0i), false, -(~_wgslsmith_sub_vec2_i32(u_input.b.zz, vec2<i32>(arg_0, arg_1.b.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.e) + 179f)), arg_1.a.b);
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, arg_1.b.a)), vec2<u32>(57259u, var_0.b)), ~_wgslsmith_mod_i32(-25656i, -31682i), select(true, true, false), u_input.c.xz, arg_1.a.c.x), var_0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(166f + 1298f), _wgslsmith_f_op_f32(f32(-1f) * -259f), var_0.c.e, _wgslsmith_f_op_f32(ceil(-444f)))), Struct_1(abs(9894u ^ arg_1.a.b.a), reverseBits(-51795i | arg_0), arg_1.a.b.c, vec2<i32>(countOneBits(arg_0), 1i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.d.e, var_0.c.e) - 272f))), arg_1.a.b);
    let var_2 = _wgslsmith_sub_vec4_u32(abs(countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a.b.a, var_0.c.a, 97059u, 57954u), vec4<u32>(0u, 77122u, var_0.d.a, 26155u))))), ~(~vec4<u32>(36435u, arg_1.a.b.a, var_1.a.d.a | 4294967295u, 1u)));
    let var_3 = !select(vec4<bool>(false, select(arg_1.a.d.c, false, var_0.d.c) & (true != var_1.b.c), !var_0.c.c, _wgslsmith_f_op_f32(-var_1.b.e) != _wgslsmith_f_op_f32(var_0.d.e * 818f)), !(!vec4<bool>(var_0.c.c, false, true, var_0.c.c)), vec4<bool>(false, all(!vec4<bool>(false, true, var_1.b.c, arg_1.b.c)), !(var_0.b > 87155u), arg_1.b.c));
    let var_4 = Struct_4(Struct_2(Struct_1(_wgslsmith_add_u32(arg_1.b.a, 44608u), _wgslsmith_add_i32(u_input.e & var_1.b.d.x, ~arg_1.b.b), var_1.b.c, _wgslsmith_clamp_vec2_i32(~vec2<i32>(2147483647i, arg_0), ~var_1.b.d, _wgslsmith_sub_vec2_i32(var_1.b.d, arg_1.a.d.d)), 261f), var_1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(594f, _wgslsmith_f_op_f32(var_0.d.e + -1574f), -116f, -913f)), var_0.d), arg_1.a.b);
    return (any(select(select(vec4<bool>(true, var_0.d.c, true, var_0.d.c), var_3, var_3.x), vec4<bool>(true, false, true, var_1.b.c), vec4<bool>(true, var_1.a.d.c, var_3.x, false))) || true) && arg_1.a.a.c;
}

fn func_2(arg_0: u32) -> vec2<u32> {
    var var_0 = !vec2<bool>(!any(vec4<bool>(true, true, true, true)), func_3(firstLeadingBit(-1i), Struct_4(Struct_2(Struct_1(arg_0, 10999i, true, u_input.c.zy, 279f), Struct_1(114610u, u_input.c.x, false, vec2<i32>(u_input.c.x, 8465i), -1567f), vec4<f32>(-838f, 440f, -395f, 1088f), Struct_1(arg_0, -28000i, true, vec2<i32>(u_input.a.x, u_input.d), -350f)), Struct_1(4294967295u, u_input.c.x, false, vec2<i32>(u_input.e, u_input.c.x), 751f))));
    var var_1 = 2920f;
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-353f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-441f)), _wgslsmith_f_op_f32(step(-994f, -293f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1711f - 1094f) + _wgslsmith_div_f32(456f, 979f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-427f - -656f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(189f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1046f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1115f, 1765f, 917f, -1000f))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-391f, 1000f, -1247f, 756f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(818f, 564f, 1986f, 793f)))))));
    let var_3 = var_2.x;
    var_1 = var_2.x;
    return vec2<u32>(arg_0 << (~1564u % 32u), ~_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(125734u, 23249u, 47515u, 53391u)), _wgslsmith_sub_vec4_u32(vec4<u32>(11867u, arg_0, 813u, 1u), vec4<u32>(5393u, arg_0, arg_0, 1u))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> vec2<u32> {
    let var_0 = arg_0.b;
    let var_1 = 1u;
    let var_2 = true;
    var var_3 = reverseBits(arg_0.a.a);
    let var_4 = arg_0.c;
    return func_2(arg_1.a);
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    return Struct_1(9087u, select(_wgslsmith_mult_i32(2147483647i, -u_input.e), -2147483647i, abs(arg_0.x) != arg_0.x), true, u_input.c.xy & vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, countOneBits(35145i)), select(-u_input.c.x, 0i, arg_0.x != arg_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -289f) - _wgslsmith_f_op_f32(abs(-1877f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(987f * -1433f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -677f)))))));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(~1u, -30708i, true, -u_input.b.yx, -1000f);
    var_0 = func_4(vec2<u32>(arg_0, ~_wgslsmith_mult_u32(arg_1.a, arg_1.a)) << ((vec2<u32>(_wgslsmith_add_u32(0u, 64861u), _wgslsmith_sub_u32(arg_1.a, 4294967295u)) >> (vec2<u32>(0u >> (var_0.a % 32u), 75568u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = Struct_3(-(~(-(vec4<i32>(arg_1.d.x, u_input.d, arg_1.b, arg_1.b) | vec4<i32>(23440i, -29171i, arg_1.b, -32742i)))), 8494u, arg_1, Struct_1(_wgslsmith_sub_u32(11188u, func_4(~vec2<u32>(45956u, arg_1.a)).a), var_0.b, _wgslsmith_f_op_f32(501f * func_4(vec2<u32>(var_0.a, 0u)).e) != arg_1.e, vec2<i32>(abs(-38689i), max(abs(arg_1.b), ~var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_f_op_f32(ceil(-726f)), var_0.c & var_0.c)))));
    var_1 = Struct_3(vec4<i32>(0i, var_1.d.b, ~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 13159i, 1i), vec3<i32>(var_0.b, 0i, arg_1.b)), arg_1.b), var_1.a.x), ~select(~(arg_1.a << (var_0.a % 32u)), 28348u, var_0.c), func_4(_wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, 4294967295u), vec2<u32>(30216u, 4294967295u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_1.b, var_1.c.a)))), Struct_1(firstLeadingBit(41158u << (~var_0.a % 32u)), i32(-1i) * -(u_input.e << (4294967295u % 32u)), func_3(var_1.d.b, Struct_4(Struct_2(arg_1, Struct_1(4294967295u, u_input.b.x, var_1.c.c, vec2<i32>(arg_1.d.x, arg_1.d.x), var_1.c.e), vec4<f32>(-1532f, var_1.c.e, var_0.e, var_1.c.e), Struct_1(var_1.d.a, var_1.d.d.x, false, arg_1.d, var_0.e)), arg_1)), u_input.c.yz, _wgslsmith_f_op_f32(var_0.e * arg_1.e)));
    var var_2 = var_1.d;
    return ~var_1.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(func_5(firstTrailingBit(4294967295u) ^ 1u, func_4(func_1(Struct_2(Struct_1(4294967295u, -2147483647i, true, vec2<i32>(u_input.b.x, u_input.e), 2682f), Struct_1(57857u, -15072i, false, vec2<i32>(16162i, u_input.b.x), 645f), vec4<f32>(-2359f, 469f, -824f, -207f), Struct_1(36374u, -2147483647i, true, vec2<i32>(u_input.d, 25260i), 1114f)), Struct_1(4294967295u, 0i, true, vec2<i32>(u_input.a.x, -58261i), -316f), 1001f))), u_input.c.x), _wgslsmith_div_vec2_u32(func_1(Struct_2(Struct_1(1u, -1i, false, u_input.b.xy, -181f), Struct_1(2375u, 0i, true, u_input.c.zy, -324f), vec4<f32>(669f, -1000f, -578f, 885f), Struct_1(135954u, 4694i, true, vec2<i32>(u_input.d, u_input.c.x), 225f)), func_4(vec2<u32>(4294967295u, 39423u)), -2016f), vec2<u32>(1u, 1u)) & select(func_1(Struct_2(Struct_1(4294967295u, 0i, true, u_input.b.zy, 1201f), Struct_1(46035u, -28944i, false, vec2<i32>(u_input.c.x, 20110i), 354f), vec4<f32>(-452f, -770f, -167f, -511f), Struct_1(0u, u_input.e, true, u_input.b.zy, -573f)), func_4(vec2<u32>(0u, 4294967295u)), 1f), vec2<u32>(_wgslsmith_add_u32(0u, 65015u), ~1u), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-867f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(549f))))));
}

