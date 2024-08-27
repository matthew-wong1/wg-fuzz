struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1175f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1593f * -525f) - -667f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-875f, 1455f, false)))) - -585f)));
    let var_1 = ~_wgslsmith_clamp_i32(u_input.d.x, u_input.c.x, u_input.d.x);
    let var_2 = 305f;
    let var_3 = var_0;
    let var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(~min(u_input.b, u_input.b)), u_input.b, ~(~(u_input.b << (u_input.b % 32u))), ~(~36434u)), _wgslsmith_clamp_vec4_u32(select(firstLeadingBit(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)), vec4<u32>(30573u, u_input.b, u_input.b, 0u) >> (~vec4<u32>(u_input.a, 26477u, u_input.b, u_input.b) % vec4<u32>(32u)), true), ~(~vec4<u32>(u_input.a, u_input.b, u_input.b, 4294967295u) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a), vec4<u32>(0u, u_input.b, 1u, u_input.a))), select(~vec4<u32>(u_input.a, u_input.a, 21560u, 65079u), countOneBits(max(vec4<u32>(u_input.a, 4294967295u, 18444u, u_input.a), vec4<u32>(4294967295u, u_input.a, 1u, u_input.a))), vec4<bool>(true, true, true, true))));
    return ~u_input.d.x;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = 4294967295u & firstLeadingBit(~(arg_2.c << (abs(4294967295u) % 32u)));
    var var_1 = arg_2;
    var_1 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_1.a, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, 1i, -1i, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(-10996i, -1i, arg_2.d.x, u_input.c.x), vec4<i32>(u_input.d.x, -1i, 2147483647i, 44342i)))), 2147483647i), (_wgslsmith_clamp_i32(func_3(), ~1i, -51237i) & 39548i) < -firstLeadingBit(-60023i << (arg_2.e.x % 32u)), ~select(0u, ~abs(0u), false), -vec2<i32>(i32(-1i) * -var_1.a, -arg_2.d.x), countOneBits(firstTrailingBit(~firstLeadingBit(vec4<u32>(0u, 4294967295u, arg_2.c, arg_2.c)))));
    let var_2 = vec3<i32>(func_3(), _wgslsmith_mod_i32(u_input.d.x >> (abs(u_input.a | 10248u) % 32u), select(-u_input.d.x, -1i, true) & func_3()), _wgslsmith_dot_vec2_i32(-arg_2.d, firstTrailingBit(countOneBits(vec2<i32>(0i, 0i)))));
    let var_3 = firstLeadingBit(~var_2.yx);
    return -423f;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(abs(_wgslsmith_mult_i32(-arg_2.d.x, reverseBits(-2147483647i))), true & arg_2.b, ~abs(firstLeadingBit(arg_2.c)), arg_2.d, abs(~arg_2.e)), arg_2, Struct_1(_wgslsmith_add_i32(arg_2.a, arg_2.a), arg_2.b, firstLeadingBit(countOneBits(min(u_input.b, 30637u))), vec2<i32>(~61523i, -43517i << (u_input.b % 32u)), firstLeadingBit(vec4<u32>(~17783u, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(41624u, arg_2.c, 827u, 118553u), vec4<u32>(u_input.a, arg_2.c, u_input.a, 45904u)), ~11146u))));
    var_0 = Struct_2(arg_2, Struct_1(select(firstTrailingBit(u_input.d.x), 74922i, any(!vec2<bool>(true, var_0.c.b))), var_0.c.b, _wgslsmith_dot_vec3_u32(firstLeadingBit(var_0.b.e.wzw), ~(~vec3<u32>(0u, var_0.a.c, 1u))), arg_2.d, ~vec4<u32>(var_0.c.c ^ var_0.b.e.x, u_input.b, _wgslsmith_dot_vec4_u32(arg_2.e, vec4<u32>(u_input.b, arg_2.e.x, 4062u, var_0.c.c)), _wgslsmith_clamp_u32(4294967295u, u_input.a, arg_2.e.x))), Struct_1(-25878i, arg_2.b, ~(~arg_2.e.x), var_0.a.d, select(vec4<u32>(firstTrailingBit(25365u), ~4294967295u, ~arg_2.c, 0u), var_0.a.e, vec4<bool>(arg_0.x <= arg_0.x, !arg_3, false, all(vec3<bool>(false, arg_2.b, false))))));
    var var_1 = arg_3 | arg_2.b;
    var var_2 = Struct_2(var_0.b, var_0.c, Struct_1(max(func_3(), func_3()), var_0.c.b || select(any(vec4<bool>(true, arg_3, false, var_0.c.b)), true, true), abs(~(u_input.b | 63265u)), u_input.c.yz, abs(~vec4<u32>(2998u, u_input.b, 24462u, u_input.a))));
    var_2 = Struct_2(Struct_1(0i, all(!select(vec4<bool>(false, var_0.a.b, arg_3, var_2.b.b), vec4<bool>(var_2.c.b, arg_3, false, true), vec4<bool>(false, true, false, false))), ~arg_2.c, u_input.d.yz, _wgslsmith_div_vec4_u32(max(~var_0.a.e, ~var_2.a.e), ~(~vec4<u32>(arg_2.c, arg_2.e.x, var_2.b.c, 14542u)))), arg_2, Struct_1(var_2.a.a, any(vec3<bool>(var_2.c.b & arg_3, arg_2.b, var_0.b.b)), u_input.a, ~(_wgslsmith_sub_vec2_i32(var_0.b.d, vec2<i32>(arg_2.d.x, var_0.c.d.x)) >> (vec2<u32>(25403u, var_2.b.c) % vec2<u32>(32u))), firstTrailingBit(~(~arg_2.e))));
    return var_2.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_1(~(-1i), arg_3.a.b & select(arg_3.a.b, select(arg_2.b, true, true) & false, any(select(vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_3.b.b), vec4<bool>(false, arg_0.b, true, arg_3.b.b), vec4<bool>(true, arg_0.b, true, arg_2.b)))), 1u, abs(u_input.c.zy | abs(-vec2<i32>(1i, 75492i))), arg_0.e & (vec4<u32>(arg_0.c >> (9324u % 32u), ~arg_0.c, 1u, ~arg_3.c.e.x) >> ((vec4<u32>(arg_0.e.x, arg_1.x, 1u, arg_2.c) ^ arg_3.c.e) % vec4<u32>(32u))));
    let var_1 = -min(~(-reverseBits(vec4<i32>(34013i, -47642i, -21852i, u_input.c.x))), vec4<i32>(-22168i, ~(var_0.a ^ var_0.a), ~_wgslsmith_add_i32(49985i, var_0.d.x), ~abs(61656i)));
    let var_2 = Struct_1(arg_3.b.d.x, true, 51308u, min(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 733f, 251f, 1472f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 596f, -140f, -188f) * vec4<f32>(-1317f, -472f, -630f, -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -109f))), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-907f, 903f, -1139f, -552f) * vec4<f32>(-112f, 1241f, 346f, -748f)), 1000f, func_4(vec4<f32>(646f, 702f, 2238f, 1116f), 1224f, arg_3.b, true), false && arg_3.b.b), false).d, _wgslsmith_mod_vec2_i32(u_input.c.yx, firstTrailingBit(vec2<i32>(-1i, var_1.x)))), ~arg_3.b.e);
    var_0 = arg_2;
    var var_3 = -1393f;
    return arg_0.d.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    var var_0 = -firstTrailingBit(firstLeadingBit(~vec4<i32>(-26313i, u_input.d.x, arg_1.a, arg_1.d.x)));
    var_0 = min(_wgslsmith_div_vec4_i32(-vec4<i32>(var_0.x, u_input.d.x, 2147483647i, u_input.c.x), vec4<i32>(var_0.x | var_0.x, firstTrailingBit(0i), -1i, var_0.x)), vec4<i32>(-u_input.c.x, -19566i, u_input.d.x, -2147483647i)) ^ vec4<i32>(u_input.c.x, func_5(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(728f, -1164f, 103f, -162f) - vec4<f32>(-871f, 367f, -1030f, -225f)), _wgslsmith_f_op_f32(func_2(-1283f, -719f, arg_1)), Struct_1(var_0.x, arg_1.b, 73915u, u_input.c.yy, arg_1.e), true), arg_1.e.ywx, arg_1, Struct_2(func_4(vec4<f32>(-1343f, 513f, -673f, 377f), 188f, arg_1, arg_1.b), func_4(vec4<f32>(-1343f, 874f, 1964f, 2467f), 658f, Struct_1(0i, true, u_input.a, vec2<i32>(u_input.d.x, -2147483647i), vec4<u32>(arg_0.x, 34387u, u_input.b, 10057u)), arg_1.b), arg_1)), -var_0.x >> ((arg_0.x ^ u_input.a) % 32u), reverseBits(u_input.c.x & -19635i));
    let var_1 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(155f, -1208f, -242f, -430f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1683f, 1723f, 1441f, -562f)))), !vec4<bool>(false, false, false, arg_1.b))), _wgslsmith_f_op_f32(f32(-1f) * -1294f), func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1870f, 250f, -1543f, -264f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(706f, -1315f, 1000f, -1633f), vec4<f32>(1213f, 1003f, 1000f, -1073f), true)))), -680f, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(107f, -763f, -941f, -132f)), -1167f, arg_1, arg_1.b), arg_1.b), true), Struct_1(var_0.x >> (min(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(1u, 4294967295u)), 46366u) % 32u), any(select(select(vec3<bool>(arg_1.b, false, arg_1.b), vec3<bool>(arg_1.b, false, false), arg_1.b), vec3<bool>(false, arg_1.b, arg_1.b), false)), 19464u, ~(-(u_input.c.zx ^ vec2<i32>(7275i, var_0.x))), ~(~arg_1.e)), func_4(vec4<f32>(-802f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -181f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-149f + 601f)), -1266f), 1327f, func_4(vec4<f32>(916f, _wgslsmith_f_op_f32(abs(851f)), 447f, _wgslsmith_f_op_f32(1569f - 315f)), _wgslsmith_f_op_f32(-346f * _wgslsmith_div_f32(-1062f, -702f)), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-515f, 138f, 292f, -2089f) - vec4<f32>(-2745f, -672f, -1817f, 907f)), _wgslsmith_f_op_f32(-851f + 1127f), arg_1, true), true), !(!arg_1.b) && arg_1.b));
    var_0 = vec4<i32>(38122i, _wgslsmith_add_i32(-var_0.x, var_1.b.a), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-141f, -1135f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(f32(-1f) * -1077f))), 786f, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1658f, -1000f, -1000f, 903f) - vec4<f32>(1465f, 171f, 1867f, 188f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1384f, 557f, 329f, -803f) + vec4<f32>(1190f, 1140f, 1259f, -1800f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(729f, 1674f))), Struct_1(countOneBits(2147483647i), var_1.b.b, 1u, -arg_1.d, var_1.b.e << (arg_1.e % vec4<u32>(32u))), 0i < _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, -2147483647i, -7262i, var_1.b.d.x), vec4<i32>(2096i, var_0.x, 21218i, u_input.c.x))), ~(~4294967295u) != u_input.b).d.x, ~select(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), 1i >> (arg_1.c % 32u), var_0.x), ~(-var_1.b.a), arg_1.b));
    var var_2 = 46988u;
    return !(!(var_1.b.b && !any(vec4<bool>(true, false, false, var_1.b.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1100f - -2180f), -688f, u_input.b <= u_input.a)), 1746f), _wgslsmith_f_op_f32(trunc(-764f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-627f)), _wgslsmith_div_f32(-650f, -2672f)))))));
    var_0 = 1415f;
    let var_1 = !vec4<bool>(select(false, true, select(all(vec4<bool>(true, false, false, true)), true, all(vec4<bool>(false, false, true, false)))), true, func_1(~(~vec2<u32>(u_input.b, u_input.a)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 1i, u_input.c.x), vec4<i32>(u_input.d.x, 66824i, u_input.d.x, u_input.d.x)), true, ~61392u, u_input.d.yy, _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b, 1u, 5594u), vec4<u32>(33446u, 0u, 12295u, u_input.b)))), true);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-412f)))) - 623f));
    var var_2 = firstLeadingBit(u_input.c.x);
    var var_3 = vec3<i32>(u_input.c.x, ~(~u_input.d.x) << (25428u % 32u), 1403i);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -949f)), -557f, var_1.x)))));
    let var_4 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1726f, 790f, -3020f, -316f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-241f, 836f, 783f, 228f) - vec4<f32>(-966f, 237f, -2012f, 327f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(472f, -926f, 1677f, 414f)))), false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-775f)))), Struct_1(u_input.c.x, var_1.x, abs(1u), vec2<i32>(var_3.x ^ var_3.x, abs(var_3.x)), ~reverseBits(vec4<u32>(u_input.a, 4294967295u, 60111u, 1u))), true), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-809f, -537f, 408f, -338f))) - vec4<f32>(-1469f, -1694f, 420f, 294f))), _wgslsmith_f_op_f32(select(-410f, -235f, !(var_1.x || var_1.x))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(992f, 213f, 394f, -1764f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-258f)), _wgslsmith_f_op_f32(ceil(2375f))), Struct_1(53577i, true, 7815u, var_3.xx, _wgslsmith_mult_vec4_u32(vec4<u32>(12230u, u_input.a, 58324u, u_input.a), vec4<u32>(22558u, 4294967295u, u_input.a, u_input.b))), !var_1.x), true), func_4(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1000f, 938f)), 1f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1692f)), _wgslsmith_f_op_f32(max(-273f, 359f))), 948f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-612f)))), 1f, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-29593i, -2147483647i, var_3.x, 39648i), vec4<i32>(u_input.d.x, var_3.x, 24130i, var_3.x)) & min(u_input.d.x, var_3.x), any(var_1.zzw) & true, _wgslsmith_mult_u32(u_input.a, func_4(vec4<f32>(-131f, 1197f, -1600f, -2229f), -2226f, Struct_1(1i, false, u_input.a, vec2<i32>(-1i, 25382i), vec4<u32>(59086u, 1u, 61232u, u_input.a)), var_1.x).e.x), -firstTrailingBit(vec2<i32>(var_3.x, 1i)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.b, u_input.b, 6767u), select(vec4<u32>(4294967295u, 12538u, u_input.a, 1u), vec4<u32>(534u, 55949u, u_input.a, u_input.a), true), vec4<u32>(u_input.b, 4294967295u, u_input.a, u_input.b))), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(271f, _wgslsmith_f_op_f32(1922f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-984f - -137f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(121f + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(select(-1210f, -757f, false))))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(389f + 472f), _wgslsmith_f_op_f32(-533f * 588f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(273f * -808f)), var_4.a))));
}

