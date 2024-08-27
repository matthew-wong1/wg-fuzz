struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(-446f, 1i, -18729i, Struct_1(vec3<bool>(false, false, false), vec2<u32>(8933u, 51569u), false, false), Struct_1(vec3<bool>(true, false, false), vec2<u32>(6045u, 25440u), true, true)), Struct_2(1193f, -50739i, 0i, Struct_1(vec3<bool>(true, true, true), vec2<u32>(0u, 4294967295u), true, true), Struct_1(vec3<bool>(true, true, false), vec2<u32>(83104u, 49303u), false, false)), Struct_2(-338f, 57610i, 1i, Struct_1(vec3<bool>(false, true, true), vec2<u32>(17352u, 4294967295u), false, true), Struct_1(vec3<bool>(false, true, false), vec2<u32>(22317u, 0u), true, true)), Struct_2(992f, -1i, -1i, Struct_1(vec3<bool>(true, false, false), vec2<u32>(27179u, 27876u), true, false), Struct_1(vec3<bool>(true, false, false), vec2<u32>(0u, 91916u), false, true)), Struct_2(119f, -1i, 27350i, Struct_1(vec3<bool>(false, false, false), vec2<u32>(1u, 4294967295u), true, false), Struct_1(vec3<bool>(true, true, true), vec2<u32>(10993u, 64748u), false, true)), Struct_2(257f, -1i, 1i, Struct_1(vec3<bool>(true, true, true), vec2<u32>(61987u, 38029u), false, false), Struct_1(vec3<bool>(true, true, true), vec2<u32>(1u, 0u), false, false)), Struct_2(1522f, 1i, -1i, Struct_1(vec3<bool>(true, true, false), vec2<u32>(1u, 0u), true, true), Struct_1(vec3<bool>(true, true, true), vec2<u32>(2579u, 1u), true, true)), Struct_2(727f, i32(-2147483648), -1i, Struct_1(vec3<bool>(true, false, true), vec2<u32>(59454u, 92060u), true, true), Struct_1(vec3<bool>(false, true, false), vec2<u32>(69481u, 49974u), true, false)), Struct_2(401f, 1i, 1i, Struct_1(vec3<bool>(true, false, false), vec2<u32>(0u, 1u), true, true), Struct_1(vec3<bool>(false, true, true), vec2<u32>(1u, 0u), false, false)), Struct_2(-263f, 0i, 1i, Struct_1(vec3<bool>(false, false, false), vec2<u32>(1u, 4294967295u), false, true), Struct_1(vec3<bool>(false, true, true), vec2<u32>(80523u, 4294967295u), false, false)), Struct_2(-227f, 14765i, i32(-2147483648), Struct_1(vec3<bool>(false, true, true), vec2<u32>(1u, 1u), true, true), Struct_1(vec3<bool>(false, true, true), vec2<u32>(0u, 5193u), true, true)), Struct_2(-2420f, 39210i, 2147483647i, Struct_1(vec3<bool>(true, true, true), vec2<u32>(1u, 1u), true, true), Struct_1(vec3<bool>(true, false, false), vec2<u32>(4294967295u, 4294967295u), false, false)), Struct_2(654f, 1i, 0i, Struct_1(vec3<bool>(false, true, true), vec2<u32>(11570u, 0u), true, true), Struct_1(vec3<bool>(true, false, true), vec2<u32>(23323u, 1u), true, false)), Struct_2(-2195f, i32(-2147483648), i32(-2147483648), Struct_1(vec3<bool>(true, true, true), vec2<u32>(1u, 0u), true, true), Struct_1(vec3<bool>(true, true, true), vec2<u32>(14530u, 0u), false, false)), Struct_2(1103f, -11438i, 72552i, Struct_1(vec3<bool>(false, false, false), vec2<u32>(93495u, 0u), true, true), Struct_1(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 4294967295u), false, true)), Struct_2(320f, -1i, i32(-2147483648), Struct_1(vec3<bool>(false, true, true), vec2<u32>(4294967295u, 4294967295u), true, true), Struct_1(vec3<bool>(true, true, true), vec2<u32>(35472u, 1u), false, false)), Struct_2(2576f, 2147483647i, 2147483647i, Struct_1(vec3<bool>(true, true, false), vec2<u32>(101542u, 0u), false, true), Struct_1(vec3<bool>(true, false, true), vec2<u32>(23463u, 13836u), false, true)), Struct_2(315f, 33094i, 0i, Struct_1(vec3<bool>(true, true, true), vec2<u32>(54395u, 39063u), true, false), Struct_1(vec3<bool>(true, false, true), vec2<u32>(2178u, 6670u), true, true)), Struct_2(-1584f, -21146i, -7561i, Struct_1(vec3<bool>(false, true, true), vec2<u32>(9593u, 0u), false, true), Struct_1(vec3<bool>(true, false, true), vec2<u32>(112867u, 1u), true, true)), Struct_2(-1065f, -1i, 2147483647i, Struct_1(vec3<bool>(false, false, false), vec2<u32>(5431u, 1u), false, true), Struct_1(vec3<bool>(false, true, false), vec2<u32>(1u, 0u), true, false)), Struct_2(1083f, 1i, -1i, Struct_1(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 94257u), false, true), Struct_1(vec3<bool>(false, true, false), vec2<u32>(1310u, 0u), false, true)), Struct_2(-207f, 31907i, 1i, Struct_1(vec3<bool>(true, true, true), vec2<u32>(26445u, 1u), false, false), Struct_1(vec3<bool>(false, false, false), vec2<u32>(101553u, 1259u), false, false)), Struct_2(-371f, -1i, -20538i, Struct_1(vec3<bool>(true, false, false), vec2<u32>(8783u, 37180u), false, false), Struct_1(vec3<bool>(false, false, false), vec2<u32>(0u, 1u), false, true)), Struct_2(-304f, 1i, -13642i, Struct_1(vec3<bool>(true, false, true), vec2<u32>(4294967295u, 1u), true, true), Struct_1(vec3<bool>(false, true, false), vec2<u32>(90790u, 4294967295u), true, true)), Struct_2(682f, 33648i, i32(-2147483648), Struct_1(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 4294967295u), false, false), Struct_1(vec3<bool>(false, true, false), vec2<u32>(26239u, 4294967295u), false, true)), Struct_2(-312f, 1i, 79193i, Struct_1(vec3<bool>(true, true, false), vec2<u32>(4294967295u, 0u), true, true), Struct_1(vec3<bool>(true, true, true), vec2<u32>(33706u, 1u), false, false)), Struct_2(-1326f, 14889i, 1i, Struct_1(vec3<bool>(false, false, true), vec2<u32>(1u, 93518u), false, true), Struct_1(vec3<bool>(false, false, true), vec2<u32>(11885u, 62706u), false, true)), Struct_2(1631f, -36330i, 345i, Struct_1(vec3<bool>(false, true, true), vec2<u32>(101208u, 9655u), false, false), Struct_1(vec3<bool>(true, true, false), vec2<u32>(4294967295u, 1u), false, false)));

var<private> global1: u32;

var<private> global2: i32;

var<private> global3: bool = false;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    global1 = reverseBits(~(_wgslsmith_div_u32(u_input.b.x | u_input.a.x, u_input.b.x | 0u) | u_input.a.x));
    var var_0 = Struct_3(Struct_1(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), any(vec4<bool>(true, false, true, false))), ~vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 133779u), u_input.b.x), any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), 0i == u_input.c)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(round(805f)))) != 1f), Struct_2(_wgslsmith_f_op_f32(step(606f, 646f)), abs(2147483647i), (min(2147483647i, -1i) ^ ~u_input.c) << (min(61548u, 0u) % 32u), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), firstTrailingBit(firstTrailingBit(vec2<u32>(4294967295u, 0u))), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), true), Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), u_input.b)), (u_input.a.x > u_input.a.x) | true, true)), vec4<i32>(~(-(u_input.c & u_input.c)), -2171i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, ~u_input.c, u_input.c), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, -6175i), vec3<i32>(13082i, u_input.c, -18443i)), u_input.c, -2147483647i)), _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, -26031i, 1i), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, 0i, -47033i), vec4<i32>(u_input.c, 48443i, u_input.c, u_input.c)))));
    var var_1 = vec3<bool>(var_0.b.e.d, any(select(!var_0.b.e.a, vec3<bool>(false, var_0.b.e.c, var_0.a.a.x), !(!vec3<bool>(var_0.b.e.c, var_0.b.e.c, true)))), true);
    let var_2 = !(!(!(!select(vec4<bool>(var_0.a.c, var_0.b.d.a.x, var_0.a.a.x, var_1.x), vec4<bool>(true, false, var_0.a.c, var_0.b.e.c), vec4<bool>(var_0.b.e.c, true, var_0.b.d.a.x, var_0.a.a.x)))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1404f), var_0.b.b, min(firstTrailingBit(0i), i32(-1i) * -u_input.c), var_0.a, var_0.b.d);
    return var_1.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> i32 {
    global2 = _wgslsmith_div_i32(-8697i, _wgslsmith_dot_vec3_i32(vec3<i32>(-20253i, arg_1, ~(-29302i)), _wgslsmith_mult_vec3_i32(-vec3<i32>(arg_0.x, 2147483647i, -12677i), ~(vec3<i32>(arg_1, u_input.c, arg_0.x) | vec3<i32>(-1i, 2147483647i, 59809i)))));
    let var_0 = Struct_3(Struct_1(vec3<bool>(true, true, true), reverseBits(select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(11922u, u_input.a.x), vec2<bool>(true, false)) >> (u_input.b % vec2<u32>(32u))), true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), func_3()))), Struct_2(_wgslsmith_f_op_f32(floor(-338f)), -39569i, arg_1, Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec2<u32>(u_input.b.x, u_input.a.x) ^ u_input.b, !select(false, true, false), true), Struct_1(vec3<bool>(true, 61159u < u_input.b.x, true), ~(vec2<u32>(4294967295u, 0u) ^ vec2<u32>(u_input.a.x, u_input.b.x)), func_3(), true & all(vec3<bool>(false, false, false)))), -vec4<i32>(~(-1i & arg_0.x), ~(-29512i), _wgslsmith_mult_i32(~43197i, max(u_input.c, arg_1)), -u_input.c >> (select(u_input.a.x, 22188u, true) % 32u)));
    let var_1 = true;
    var var_2 = var_0.a;
    global1 = var_0.a.b.x;
    return arg_0.x;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> bool {
    let var_0 = true;
    let var_1 = vec2<i32>(arg_0, arg_1.c);
    let var_2 = Struct_1(!select(arg_1.e.a, arg_1.d.a, arg_1.d.a), ~arg_1.d.b, select(false, var_0, var_0), !func_3());
    var var_3 = arg_1.a;
    var var_4 = 1f;
    return all(!select(!vec3<bool>(false, var_0, true), var_2.a, var_2.a));
}

fn func_1() -> bool {
    let var_0 = Struct_1(vec3<bool>(true, false, func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, -1i, u_input.c)), Struct_2(_wgslsmith_f_op_f32(round(2855f)), ~u_input.c, func_2(vec4<i32>(u_input.c, u_input.c, u_input.c, 1i), u_input.c), Struct_1(vec3<bool>(true, false, false), vec2<u32>(1u, 3536u), true, false), Struct_1(vec3<bool>(false, true, true), u_input.b, false, false)), all(vec3<bool>(true, true, true)))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), select(~u_input.b, ~(u_input.a.xz ^ vec2<u32>(7712u, 4294967295u)), vec2<bool>(true, true))), !((-u_input.c > (0i ^ u_input.c)) && any(vec3<bool>(false, true, false))), any(vec2<bool>(true, any(vec2<bool>(true, true)))) && any(vec2<bool>(all(vec2<bool>(true, false)), true)));
    global2 = _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_sub_i32(u_input.c, -17996i), _wgslsmith_clamp_i32(1368i, u_input.c, u_input.c)), reverseBits(_wgslsmith_mult_vec2_i32(select(vec2<i32>(0i, u_input.c), vec2<i32>(u_input.c, u_input.c), var_0.a.x), ~vec2<i32>(-17858i, u_input.c)))) & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-8162i, u_input.c)), vec2<i32>(1i, u_input.c), ~vec2<i32>(-2147483647i, u_input.c)), vec2<i32>(-1i, 24281i)));
    global3 = false;
    var var_1 = !select(vec2<bool>(true, true), vec2<bool>(var_0.a.x, var_0.d), !(!var_0.a.xx));
    var var_2 = Struct_1(vec3<bool>(!var_1.x, _wgslsmith_sub_u32(25111u >> (var_0.b.x % 32u), ~u_input.a.x) < abs(4294967295u), false), vec2<u32>(max(var_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 12661u, 61499u, u_input.a.x), vec4<u32>(u_input.b.x, 1u, var_0.b.x, u_input.b.x))), ~1u), 706f == _wgslsmith_f_op_f32(sign(-1000f)), true);
    return all(vec2<bool>(var_0.c, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    global3 = any(select(select(vec4<bool>(true, func_1(), true, false), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), true), vec4<bool>(func_1(), all(vec2<bool>(true, false)), true, true)), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true)), true));
    global1 = ~27899u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -208f)));
    global2 = _wgslsmith_mod_i32(var_0, 0i);
    global1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.b.x, 82800u), ~49371u);
    global0 = array<Struct_2, 28>();
    global1 = ~countOneBits(u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_1 * 1000f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(trunc(var_1))), vec3<f32>(_wgslsmith_div_f32(1460f, var_1), 855f, _wgslsmith_f_op_f32(round(-864f))), func_1())), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_1 - -911f), var_1, var_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-397f, -107f, var_1))))), (1i <= (var_0 ^ 1i)) && select(false, true, var_0 >= u_input.c))), ~(~u_input.c));
}

