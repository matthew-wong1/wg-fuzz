struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(844f, vec2<u32>(9768u, 69319u), 4294967295u, 45505i, 3929u), Struct_1(1553f, vec2<u32>(4294967295u, 58171u), 1u, 0i, 1u), vec4<bool>(false, false, true, true), Struct_1(222f, vec2<u32>(1u, 1u), 140792u, -20093i, 0u), vec4<f32>(-1142f, 581f, -1537f, -1761f)), Struct_2(Struct_1(-1460f, vec2<u32>(62029u, 5566u), 1u, 10321i, 4294967295u), Struct_1(-464f, vec2<u32>(1u, 0u), 53118u, 2147483647i, 4294967295u), vec4<bool>(true, true, true, true), Struct_1(1217f, vec2<u32>(1u, 27889u), 0u, 0i, 36049u), vec4<f32>(-733f, -305f, -406f, 639f)), Struct_2(Struct_1(-1000f, vec2<u32>(13580u, 106426u), 14285u, 6400i, 3191u), Struct_1(386f, vec2<u32>(0u, 1u), 4294967295u, 0i, 0u), vec4<bool>(true, true, true, true), Struct_1(-1000f, vec2<u32>(71754u, 0u), 28644u, -19160i, 0u), vec4<f32>(188f, -645f, -1616f, 517f)), Struct_2(Struct_1(341f, vec2<u32>(78175u, 27925u), 1u, -59298i, 4294967295u), Struct_1(915f, vec2<u32>(0u, 94574u), 118115u, 60875i, 77784u), vec4<bool>(false, false, false, false), Struct_1(-369f, vec2<u32>(41074u, 23911u), 53566u, 1i, 0u), vec4<f32>(-1000f, -562f, 1000f, 1000f)), Struct_2(Struct_1(-1490f, vec2<u32>(15633u, 7203u), 0u, -61712i, 4294967295u), Struct_1(-330f, vec2<u32>(0u, 27301u), 4294967295u, -1i, 0u), vec4<bool>(true, false, false, false), Struct_1(745f, vec2<u32>(1u, 4294967295u), 35456u, -1i, 4294967295u), vec4<f32>(-1401f, 258f, 236f, 1000f)), Struct_2(Struct_1(1023f, vec2<u32>(47226u, 1u), 4294967295u, -6401i, 13328u), Struct_1(1613f, vec2<u32>(0u, 0u), 4294967295u, 25761i, 4294967295u), vec4<bool>(false, false, false, true), Struct_1(-844f, vec2<u32>(4294967295u, 4294967295u), 0u, 33056i, 0u), vec4<f32>(126f, -1270f, 570f, 200f)), Struct_2(Struct_1(1372f, vec2<u32>(4294967295u, 0u), 1u, 2147483647i, 1u), Struct_1(1172f, vec2<u32>(9247u, 0u), 1u, -1i, 4294967295u), vec4<bool>(false, true, true, true), Struct_1(-981f, vec2<u32>(3052u, 61328u), 14601u, 6585i, 1u), vec4<f32>(-177f, -149f, -183f, -1302f)), Struct_2(Struct_1(148f, vec2<u32>(42716u, 0u), 0u, 19697i, 1u), Struct_1(1025f, vec2<u32>(16217u, 125249u), 1u, 74184i, 4294967295u), vec4<bool>(true, true, false, false), Struct_1(-493f, vec2<u32>(4294967295u, 1u), 4294967295u, -43863i, 0u), vec4<f32>(622f, -370f, 529f, 2896f)), Struct_2(Struct_1(-609f, vec2<u32>(4294967295u, 1u), 3942u, 13318i, 68561u), Struct_1(307f, vec2<u32>(31414u, 12494u), 3158u, -53245i, 75482u), vec4<bool>(false, true, false, false), Struct_1(1635f, vec2<u32>(41468u, 0u), 49711u, i32(-2147483648), 12483u), vec4<f32>(-418f, 1000f, -902f, -1047f)), Struct_2(Struct_1(-2171f, vec2<u32>(20487u, 1u), 78911u, 37671i, 45545u), Struct_1(-941f, vec2<u32>(15041u, 1u), 4294967295u, i32(-2147483648), 45362u), vec4<bool>(true, true, false, false), Struct_1(158f, vec2<u32>(90956u, 1u), 0u, -33759i, 18967u), vec4<f32>(-750f, 1000f, 548f, 298f)), Struct_2(Struct_1(1794f, vec2<u32>(42912u, 1u), 62289u, 74391i, 0u), Struct_1(-368f, vec2<u32>(0u, 4294967295u), 95u, i32(-2147483648), 20451u), vec4<bool>(true, true, true, true), Struct_1(1764f, vec2<u32>(0u, 22367u), 4294967295u, -63489i, 1u), vec4<f32>(-1014f, 1000f, 574f, -373f)), Struct_2(Struct_1(-589f, vec2<u32>(17394u, 10381u), 4294967295u, 1i, 0u), Struct_1(-586f, vec2<u32>(1u, 30164u), 1u, 1i, 0u), vec4<bool>(true, false, false, false), Struct_1(989f, vec2<u32>(0u, 0u), 37479u, -16246i, 49646u), vec4<f32>(-540f, 1000f, -1326f, -1157f)), Struct_2(Struct_1(-329f, vec2<u32>(76853u, 82485u), 45659u, i32(-2147483648), 48362u), Struct_1(-228f, vec2<u32>(1u, 63319u), 4294967295u, -41563i, 1u), vec4<bool>(false, false, true, true), Struct_1(-1460f, vec2<u32>(6639u, 4294967295u), 1u, i32(-2147483648), 10251u), vec4<f32>(-677f, -654f, 308f, -528f)));

var<private> global1: array<Struct_1, 26>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 31>;

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> u32 {
    global2 = global1[_wgslsmith_index_u32(global2.e, 26u)];
    let var_0 = ~global2.b.x;
    global4 = -32488i;
    let var_1 = 1000f;
    var var_2 = arg_1 | -26233i;
    return max(~0u, ~max(global2.b.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, var_0, var_0, global2.c), vec4<u32>(var_0, global2.e, global2.c, 4294967295u), true), ~vec4<u32>(0u, 1u, 1151u, var_0))));
}

fn func_3() -> vec4<f32> {
    global2 = global1[_wgslsmith_index_u32(1u & ~(~(5583u >> (global2.c % 32u))), 26u)];
    global4 = ~_wgslsmith_sub_i32(u_input.a.x, 46964i);
    let var_0 = 1u;
    var var_1 = vec2<bool>(true, true);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.a, -1120f, 769f, 1118f), vec4<f32>(_wgslsmith_f_op_f32(715f + -118f), _wgslsmith_f_op_f32(global2.a - 1903f), _wgslsmith_f_op_f32(-2865f - _wgslsmith_div_f32(1554f, 1839f)), -943f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-853f, global2.a, -156f, 848f)) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a, -2055f, global2.a, global2.a), vec4<f32>(global2.a, 1180f, 1427f, -821f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(531f, -1420f, global2.a, 1210f))))) + vec4<f32>(2188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a))), _wgslsmith_f_op_f32(f32(-1f) * -575f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(538f - 150f)))));
}

fn func_1() -> vec3<f32> {
    global3 = array<bool, 31>();
    var var_0 = Struct_3(global2.c, !(!vec3<bool>(true, all(vec4<bool>(false, global3[_wgslsmith_index_u32(global2.e, 31u)], global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(global2.b.x, 31u)])), !global3[_wgslsmith_index_u32(global2.e, 31u)])), Struct_2(global1[_wgslsmith_index_u32(global2.e, 26u)], Struct_1(global2.a, vec2<u32>(global2.e, 108000u), _wgslsmith_mod_u32(0u & global2.b.x, countOneBits(global2.c)), _wgslsmith_dot_vec2_i32(u_input.a, -vec2<i32>(-7895i, 0i)), func_2(vec2<f32>(156f, global2.a), u_input.a.x) | ~4078u), !(!vec4<bool>(global3[_wgslsmith_index_u32(121292u, 31u)], false, false, global3[_wgslsmith_index_u32(global2.e, 31u)])), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + global2.a)), ~_wgslsmith_mult_vec2_u32(global2.b, vec2<u32>(global2.e, global2.b.x)), ~(3019u << (0u % 32u)), ~reverseBits(43359i), _wgslsmith_mult_u32(global2.c, global2.e)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3())))), -(i32(-1i) * -2147483647i));
    var var_1 = vec2<i32>(~(~_wgslsmith_mult_i32(-33204i, global2.d) & _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(global2.d, global2.d, var_0.d)), vec3<i32>(var_0.d, -2147483647i, 1i) >> (vec3<u32>(5873u, var_0.a, global2.b.x) % vec3<u32>(32u)))), ~18316i);
    var_0 = Struct_3(~(~_wgslsmith_add_u32(4294967295u, global2.b.x)) >> (7790u % 32u), select(select(select(!var_0.c.c.yxx, select(var_0.b, var_0.c.c.ywx, vec3<bool>(global3[_wgslsmith_index_u32(var_0.a, 31u)], false, var_0.b.x)), !var_0.b.x), select(!vec3<bool>(true, false, var_0.c.c.x), !var_0.b, true), var_0.b), vec3<bool>(var_0.c.c.x, any(vec4<bool>(true, global3[_wgslsmith_index_u32(global2.c, 31u)], false, false)) != !var_0.b.x, global3[_wgslsmith_index_u32(abs(4294967295u), 31u)] & true), global3[_wgslsmith_index_u32(abs(~(~59420u)), 31u)]), Struct_2(global1[_wgslsmith_index_u32(global2.b.x, 26u)], global1[_wgslsmith_index_u32(8645u, 26u)], !(!(!vec4<bool>(var_0.c.c.x, false, true, true))), var_0.c.d, var_0.c.e), _wgslsmith_sub_i32(~global2.d, max(_wgslsmith_mod_i32(u_input.a.x, var_1.x), i32(-1i) * -10313i) | ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_1.x, var_1.x), vec3<i32>(34631i, global2.d, 10058i))));
    var var_2 = vec4<i32>(_wgslsmith_clamp_i32(1i, countOneBits(~22614i), ~u_input.a.x), 1i, select(2147483647i, -1i << (var_0.a % 32u), any(vec3<bool>(var_0.b.x, global3[_wgslsmith_index_u32(0u, 31u)], var_0.c.c.x))), -6210i >> (~(~global2.c) % 32u)) << (select(vec4<u32>(var_0.c.d.b.x ^ 50054u, _wgslsmith_add_u32(7673u, 0u), var_0.a, global2.b.x << (1u % 32u)) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.a, var_0.c.d.c, global2.e, 14148u), vec4<u32>(19281u, 0u, global2.e, 4294967295u)), _wgslsmith_mult_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 16067u, global2.e, var_0.c.b.e), vec4<u32>(0u, 4294967295u, 50121u, 0u)), vec4<u32>(global2.c, 50751u, 17115u, var_0.c.b.c), select(vec4<bool>(false, var_0.c.c.x, true, false), var_0.c.c, global3[_wgslsmith_index_u32(4294967295u, 31u)])), max(vec4<u32>(global2.c, 128415u, 4294967295u, var_0.c.b.b.x), vec4<u32>(var_0.a, 0u, 11017u, 1u))), select(var_0.c.c, !select(vec4<bool>(var_0.c.c.x, false, global3[_wgslsmith_index_u32(1u, 31u)], var_0.b.x), var_0.c.c, vec4<bool>(true, var_0.c.c.x, var_0.c.c.x, true)), true)) % vec4<u32>(32u));
    return vec3<f32>(var_0.c.a.a, _wgslsmith_f_op_f32(sign(global2.a)), _wgslsmith_f_op_f32(trunc(476f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(arg_1.c.b.c, 13u)];
    let var_1 = all(vec3<bool>(global3[_wgslsmith_index_u32(41480u, 31u)], false, !arg_2.x));
    let var_2 = var_0.d.b.x;
    let var_3 = Struct_3(~_wgslsmith_clamp_u32(4294967295u, min(var_0.b.b.x, global2.b.x), _wgslsmith_dot_vec2_u32(var_0.a.b, ~arg_1.c.a.b)), vec3<bool>(any(!select(arg_2.yyw, arg_2.zxz, vec3<bool>(arg_2.x, var_1, false))), true, !any(arg_2.wwy) | !any(vec2<bool>(true, global3[_wgslsmith_index_u32(31645u, 31u)]))), global0[_wgslsmith_index_u32(var_0.d.b.x, 13u)], _wgslsmith_add_i32(-arg_1.c.a.d, ~77989i));
    global1 = array<Struct_1, 26>();
    return Struct_1(arg_3.a.x, vec2<u32>(64334u, max(global2.e, global2.c)) << (global2.b % vec2<u32>(32u)), ~4294967295u, _wgslsmith_add_i32(var_3.c.d.d, -1i), 90859u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-636f, arg_1.a)))), arg_1.a, -391f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + -1024f) - arg_0.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(-global2.a), arg_0.a, arg_1.a))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.xxx))));
    global4 = arg_1.d;
    var var_2 = Struct_4(var_1.xz, _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(max(1163f, -714f)))));
    var var_3 = 1u;
    return func_4(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a.x)))))), Struct_3(1u, vec3<bool>(true, true, true), Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(var_2.b)), arg_0.b, reverseBits(global2.e), 93i, global2.e), Struct_1(_wgslsmith_f_op_f32(1288f - 434f), vec2<u32>(29302u, 1u) ^ global2.b, ~arg_1.c, i32(-1i) * -13997i, arg_0.c), vec4<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(arg_2, 31u)], true, true, true)), global3[_wgslsmith_index_u32(arg_1.e, 31u)], true && global3[_wgslsmith_index_u32(49027u, 31u)], 0u >= global2.e), global1[_wgslsmith_index_u32(arg_1.c, 26u)], _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1000f, 1101f, var_1.x), vec4<f32>(-952f, 942f, 744f, arg_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 673f, -925f, 736f) * vec4<f32>(var_2.b, -565f, var_1.x, var_2.b))))), 10053i & global2.d), !select(select(!vec4<bool>(false, false, global3[_wgslsmith_index_u32(arg_0.b.x, 31u)], false), select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(44648u, 31u)], global3[_wgslsmith_index_u32(91596u, 31u)], true), vec4<bool>(global3[_wgslsmith_index_u32(arg_0.e, 31u)], true, true, true), true), any(vec4<bool>(global3[_wgslsmith_index_u32(global2.b.x, 31u)], true, true, true))), !vec4<bool>(global3[_wgslsmith_index_u32(17272u, 31u)], true, false, global3[_wgslsmith_index_u32(11265u, 31u)]), !(global3[_wgslsmith_index_u32(28282u, 31u)] & global3[_wgslsmith_index_u32(4294967295u, 31u)])), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1022f, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x - 667f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.a.x), -(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, global2.d), u_input.a) ^ _wgslsmith_add_vec2_i32(vec2<i32>(global2.d, 2147483647i), vec2<i32>(-1i, -1i))));
    let var_1 = func_5(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, 308f, global2.a) * vec3<f32>(global2.a, global2.a, 1000f)) - _wgslsmith_div_vec3_f32(vec3<f32>(global2.a, global2.a, -2551f), vec3<f32>(global2.a, 463f, 1338f)))), Struct_3(global2.c, !select(vec3<bool>(false, global3[_wgslsmith_index_u32(global2.b.x, 31u)], false), vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 31u)], true), vec3<bool>(false, global3[_wgslsmith_index_u32(global2.e, 31u)], true)), global0[_wgslsmith_index_u32(global2.e, 13u)], global2.d), select(select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(60219u, 31u)], global3[_wgslsmith_index_u32(1u, 31u)], true), vec4<bool>(global3[_wgslsmith_index_u32(7342u, 31u)], false, global3[_wgslsmith_index_u32(global2.e, 31u)], global3[_wgslsmith_index_u32(0u, 31u)]), vec4<bool>(global3[_wgslsmith_index_u32(28911u, 31u)], global3[_wgslsmith_index_u32(global2.e, 31u)], global3[_wgslsmith_index_u32(1u, 31u)], false)), vec4<bool>(true, true, global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(global2.e, 31u)]), true), vec4<bool>(true, !global3[_wgslsmith_index_u32(global2.e, 31u)], true, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, global2.e), 31u)]), false), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global2.a)), 1128f)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1124f, global2.a, -733f), vec3<f32>(-160f, global2.a, global2.a))))), Struct_3(_wgslsmith_mult_u32(~0u, _wgslsmith_div_u32(global2.b.x, 1u)), vec3<bool>(global3[_wgslsmith_index_u32(55397u, 31u)], global3[_wgslsmith_index_u32(global2.c, 31u)] != true, all(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 31u)], true, false))), Struct_2(Struct_1(808f, global2.b, 0u, global2.d, global2.b.x), Struct_1(-351f, global2.b, global2.b.x, u_input.a.x, 1u), vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)], true), Struct_1(global2.a, vec2<u32>(1u, 0u), global2.c, -33132i, global2.c), _wgslsmith_div_vec4_f32(vec4<f32>(global2.a, -1000f, 2107f, global2.a), vec4<f32>(-465f, -1271f, 783f, global2.a))), -3270i), vec4<bool>(false, global2.a <= _wgslsmith_f_op_f32(-902f + 1235f), true, !(!global3[_wgslsmith_index_u32(4294967295u, 31u)])), Struct_4(vec2<f32>(-1152f, _wgslsmith_f_op_f32(global2.a - 990f)), _wgslsmith_f_op_f32(f32(-1f) * -1261f))), max(62360u, 35191u));
    let var_2 = Struct_2(var_1, Struct_1(209f, var_1.b, var_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, global2.d, u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(39224i, var_0.x, global2.d), vec3<i32>(-2147483647i, -14057i, -22541i))), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(var_0.x, -2149i, 9621i, 9454i)), vec4<i32>(var_1.d, var_0.x, -19315i, u_input.a.x))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_1.e, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.c, global2.e), vec2<u32>(1u, 1u))), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-2371f, -1000f), vec2<f32>(var_1.a, -1174f)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 31676i, var_0.x, var_0.x), vec4<i32>(13277i, var_1.d, u_input.a.x, var_0.x))))), vec4<bool>(~var_1.e != abs(4294967295u), true, global3[_wgslsmith_index_u32(~global2.e, 31u)], true), func_4(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-1000f * global2.a), _wgslsmith_f_op_f32(global2.a * var_1.a), -1002f))), Struct_3(~abs(global2.c), select(vec3<bool>(true, global3[_wgslsmith_index_u32(16596u, 31u)], false), select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(9917u, 31u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(32160u, 31u)], true), vec3<bool>(true, true, global3[_wgslsmith_index_u32(19725u, 31u)])), vec3<bool>(true, global3[_wgslsmith_index_u32(2649u, 31u)], global3[_wgslsmith_index_u32(var_1.c, 31u)])), global0[_wgslsmith_index_u32(~84729u, 13u)], firstLeadingBit(1i)), select(!select(vec4<bool>(global3[_wgslsmith_index_u32(var_1.c, 31u)], true, true, global3[_wgslsmith_index_u32(var_1.e, 31u)]), vec4<bool>(global3[_wgslsmith_index_u32(global2.c, 31u)], global3[_wgslsmith_index_u32(45523u, 31u)], false, global3[_wgslsmith_index_u32(global2.b.x, 31u)]), vec4<bool>(global3[_wgslsmith_index_u32(6050u, 31u)], false, global3[_wgslsmith_index_u32(global2.c, 31u)], false)), !(!vec4<bool>(true, false, global3[_wgslsmith_index_u32(global2.b.x, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)])), _wgslsmith_f_op_f32(round(355f)) <= _wgslsmith_f_op_f32(-var_1.a)), Struct_4(vec2<f32>(global2.a, global2.a), _wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(458f - var_1.a))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -876f), var_1.a), var_1.a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.a, global2.a)), _wgslsmith_f_op_f32(var_1.a - 1000f)), _wgslsmith_f_op_f32(ceil(743f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a * -1000f))))));
    let var_3 = func_4(var_2.e.wxy, Struct_3(1u, !select(select(vec3<bool>(true, true, false), var_2.c.zzx, var_2.c.x), var_2.c.xyx, vec3<bool>(global3[_wgslsmith_index_u32(var_1.c, 31u)], var_2.c.x, var_2.c.x)), var_2, _wgslsmith_sub_i32(u_input.a.x, 12288i)), select(!vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(0u << (1u % 32u), 31u)]), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_2.c.x, true, var_2.c.x, var_2.c.x), false), vec4<bool>(var_2.c.x, global3[_wgslsmith_index_u32(var_2.a.c, 31u)], global3[_wgslsmith_index_u32(33782u, 31u)], global3[_wgslsmith_index_u32(8146u, 31u)]), var_2.c), var_2.c), Struct_4(var_2.e.zy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1579f, 1717f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(101f, -275f)), _wgslsmith_f_op_f32(var_1.a - -592f))))));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.a, 526f, 1505f)))) + vec3<f32>(_wgslsmith_f_op_f32(-390f - 2279f), _wgslsmith_f_op_f32(sign(global2.a)), var_1.a)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, global2.a, var_4.e.x)), var_2.e.yyz, global3[_wgslsmith_index_u32(func_4(vec3<f32>(642f, -962f, -689f), Struct_3(1u, vec3<bool>(false, var_4.c.x, var_4.c.x), Struct_2(Struct_1(-1525f, var_2.d.b, var_2.a.e, var_2.a.d, 4498u), var_3, var_4.c, var_1, var_2.e), u_input.a.x), vec4<bool>(global3[_wgslsmith_index_u32(global2.e, 31u)], var_2.c.x, true, global3[_wgslsmith_index_u32(var_1.b.x, 31u)]), Struct_4(vec2<f32>(538f, -1000f), -398f)).e, 31u)])) * vec3<f32>(-884f, func_5(global1[_wgslsmith_index_u32(var_4.b.b.x, 26u)], var_4.a, 93471u).a, _wgslsmith_div_f32(175f, var_1.a)))), -753f, ~reverseBits(func_5(var_3, var_2.b, 1u).d), _wgslsmith_f_op_vec4_f32(-var_4.e), u_input.a.x);
}

