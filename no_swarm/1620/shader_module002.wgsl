struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2147483647i, vec4<i32>(0i, 2147483647i, 22169i, -12349i), false);

var<private> global1: u32;

var<private> global2: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(Struct_2(vec4<bool>(false, true, false, true), Struct_1(-40420i, vec4<i32>(-22585i, 2147483647i, 11980i, -11281i), true)), vec4<f32>(921f, -1250f, -2709f, 316f)), Struct_4(Struct_2(vec4<bool>(true, false, true, false), Struct_1(6028i, vec4<i32>(-22534i, -29659i, 1i, 69018i), true)), vec4<f32>(366f, -558f, -481f, -457f)), Struct_4(Struct_2(vec4<bool>(true, false, false, false), Struct_1(-9308i, vec4<i32>(0i, -20803i, 4017i, i32(-2147483648)), false)), vec4<f32>(-131f, -832f, 167f, 141f)), Struct_4(Struct_2(vec4<bool>(false, true, false, false), Struct_1(-35287i, vec4<i32>(28378i, -38578i, 2147483647i, -2328i), false)), vec4<f32>(1536f, -932f, -1305f, 2075f)), Struct_4(Struct_2(vec4<bool>(false, false, true, true), Struct_1(-24856i, vec4<i32>(-5189i, -59626i, 2147483647i, 1i), true)), vec4<f32>(1434f, 768f, 1000f, -403f)), Struct_4(Struct_2(vec4<bool>(false, false, true, true), Struct_1(-1i, vec4<i32>(-13794i, -70421i, 1i, i32(-2147483648)), true)), vec4<f32>(1895f, -442f, 145f, -1500f)), Struct_4(Struct_2(vec4<bool>(false, true, true, false), Struct_1(-39844i, vec4<i32>(-5798i, 4003i, -31315i, -28935i), false)), vec4<f32>(1265f, -586f, -1323f, 1000f)), Struct_4(Struct_2(vec4<bool>(true, false, true, true), Struct_1(-1i, vec4<i32>(-34046i, -1i, 685i, i32(-2147483648)), false)), vec4<f32>(949f, -734f, 605f, -1000f)), Struct_4(Struct_2(vec4<bool>(true, true, true, true), Struct_1(-25783i, vec4<i32>(i32(-2147483648), 14419i, i32(-2147483648), -22806i), true)), vec4<f32>(142f, 1528f, -887f, -532f)), Struct_4(Struct_2(vec4<bool>(false, false, false, true), Struct_1(-59147i, vec4<i32>(26530i, 2147483647i, 0i, -6001i), false)), vec4<f32>(-2173f, 1000f, 254f, -2126f)), Struct_4(Struct_2(vec4<bool>(false, true, false, false), Struct_1(-23835i, vec4<i32>(9928i, 2147483647i, -35372i, 34232i), true)), vec4<f32>(-991f, 127f, 274f, 1000f)), Struct_4(Struct_2(vec4<bool>(true, true, true, false), Struct_1(-16695i, vec4<i32>(69959i, 29434i, 52799i, -1i), true)), vec4<f32>(-1125f, -2165f, 130f, 1000f)), Struct_4(Struct_2(vec4<bool>(true, true, false, true), Struct_1(-5442i, vec4<i32>(-16886i, -1i, -22841i, 31469i), true)), vec4<f32>(-862f, -737f, -1017f, 1000f)), Struct_4(Struct_2(vec4<bool>(false, true, true, false), Struct_1(29456i, vec4<i32>(8096i, 2147483647i, i32(-2147483648), -12221i), false)), vec4<f32>(624f, 267f, 2097f, -1090f)), Struct_4(Struct_2(vec4<bool>(true, true, true, true), Struct_1(0i, vec4<i32>(-22414i, 1778i, -11988i, 1i), false)), vec4<f32>(-351f, -1000f, 1408f, 623f)), Struct_4(Struct_2(vec4<bool>(false, false, false, false), Struct_1(-1i, vec4<i32>(-1i, i32(-2147483648), -1i, 2147483647i), false)), vec4<f32>(-1000f, 1000f, 1478f, 1699f)), Struct_4(Struct_2(vec4<bool>(false, false, true, true), Struct_1(23424i, vec4<i32>(-1i, 6106i, 2147483647i, 2147483647i), false)), vec4<f32>(-430f, -448f, -196f, 181f)), Struct_4(Struct_2(vec4<bool>(true, false, true, false), Struct_1(1i, vec4<i32>(37859i, -15939i, -12859i, 0i), true)), vec4<f32>(1420f, -522f, 766f, -1492f)), Struct_4(Struct_2(vec4<bool>(false, false, true, false), Struct_1(1516i, vec4<i32>(1i, i32(-2147483648), 2147483647i, i32(-2147483648)), false)), vec4<f32>(349f, -920f, -152f, -117f)), Struct_4(Struct_2(vec4<bool>(false, true, false, false), Struct_1(0i, vec4<i32>(i32(-2147483648), 1i, 27765i, -30397i), false)), vec4<f32>(179f, -994f, -1000f, 1415f)), Struct_4(Struct_2(vec4<bool>(true, false, false, false), Struct_1(1i, vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -1i), false)), vec4<f32>(527f, -383f, 609f, 998f)), Struct_4(Struct_2(vec4<bool>(true, true, false, true), Struct_1(2147483647i, vec4<i32>(1i, 61508i, 22569i, 39719i), false)), vec4<f32>(-1368f, -754f, 142f, -427f)), Struct_4(Struct_2(vec4<bool>(false, false, true, true), Struct_1(2147483647i, vec4<i32>(24843i, 45869i, 1i, -28183i), true)), vec4<f32>(-181f, -1992f, -1875f, 660f)), Struct_4(Struct_2(vec4<bool>(false, true, true, false), Struct_1(-21011i, vec4<i32>(1i, -1i, -25952i, 9338i), true)), vec4<f32>(-526f, 532f, -437f, -1000f)), Struct_4(Struct_2(vec4<bool>(true, true, false, false), Struct_1(-5947i, vec4<i32>(15272i, 49963i, -33978i, 2147483647i), false)), vec4<f32>(-815f, 1598f, 952f, -191f)), Struct_4(Struct_2(vec4<bool>(true, false, false, true), Struct_1(66405i, vec4<i32>(0i, 21047i, -10997i, 2147483647i), false)), vec4<f32>(207f, 1592f, 492f, -463f)), Struct_4(Struct_2(vec4<bool>(true, true, true, true), Struct_1(0i, vec4<i32>(-1i, -5760i, -3864i, 1i), true)), vec4<f32>(-802f, -1000f, -1053f, -1186f)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> Struct_4 {
    global0 = Struct_1(u_input.c.x, firstTrailingBit(~global0.b), !all(!select(vec2<bool>(false, global0.c), vec2<bool>(true, global0.c), vec2<bool>(global0.c, true))));
    let var_0 = min(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(60i, -45537i), abs(~global0.b.x), global0.a, -61635i), -select(select(global0.b, vec4<i32>(1i, -28131i, 2147483647i, -1i), global0.c), firstTrailingBit(vec4<i32>(u_input.c.x, -1i, -30609i, u_input.c.x)), !vec4<bool>(false, global0.c, true, global0.c))), u_input.a);
    global0 = Struct_1(1969i, var_0, (~firstLeadingBit(142971u) > _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) | vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u))) & !select(!global0.c, all(vec4<bool>(global0.c, global0.c, global0.c, global0.c)), global0.c));
    global0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(reverseBits(~global0.a), -global0.b.x), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c.x, var_0.x) ^ u_input.c), select(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, -17622i), var_0.wy), global0.b.zw, vec2<bool>(true, global0.c)))), global0.b, all(!vec2<bool>(global0.c, false)));
    global0 = Struct_1(var_0.x, ~(~_wgslsmith_mod_vec4_i32(global0.b, ~vec4<i32>(var_0.x, -1i, 32691i, -20126i))), true);
    return global2[_wgslsmith_index_u32(~22213u, 27u)];
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> vec4<bool> {
    global1 = countOneBits(u_input.b);
    let var_0 = Struct_3(func_2().b.x, -_wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(0i), firstTrailingBit(global0.b.x), u_input.c.x), vec3<i32>(1i, arg_1.a.b.b.x, 0i)));
    global1 = abs(0u);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1209f, arg_0.x, arg_1.a.b.c)) - _wgslsmith_div_f32(arg_0.x, arg_0.x)) + -400f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - func_2().b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1916f, arg_1.b.x))), arg_1.b.x) - _wgslsmith_f_op_vec4_f32(round(func_2().b)));
    var var_2 = arg_1.a.a;
    return vec4<bool>(!global0.c, global0.c, any(arg_1.a.a.xy), !(_wgslsmith_f_op_f32(-arg_0.x) <= _wgslsmith_f_op_f32(-1076f - var_0.a)) && (false | !arg_1.a.a.x));
}

fn func_1() -> Struct_2 {
    var var_0 = any(select(!select(!vec4<bool>(true, true, global0.c, false), select(vec4<bool>(true, true, global0.c, global0.c), vec4<bool>(global0.c, global0.c, global0.c, global0.c), vec4<bool>(global0.c, global0.c, global0.c, global0.c)), u_input.b >= u_input.b), vec4<bool>((global0.c & global0.c) != true, true, any(!vec2<bool>(true, global0.c)), global0.c), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-735f, -1783f, 209f, 1445f), vec4<f32>(-417f, -626f, 1617f, 1834f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-630f, -1060f, 315f, -102f), vec4<f32>(1210f, 972f, 1000f, 741f)))), func_2())));
    global1 = ~u_input.b;
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(0i, -73072i, -29640i, global0.b.x) & -vec4<i32>(15299i, -1i, global0.a, global0.a)), u_input.a, u_input.a), global0.b);
    global2 = array<Struct_4, 27>();
    var_1 = _wgslsmith_mod_i32(reverseBits(-59613i), abs(42254i));
    return func_2().a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = !arg_1.a.yyy;
    global1 = _wgslsmith_dot_vec4_u32(~(abs(abs(vec4<u32>(arg_2, arg_2, 4294967295u, 14008u))) | (~vec4<u32>(u_input.b, 1u, u_input.b, 1u) >> (firstLeadingBit(vec4<u32>(1u, 44300u, 18623u, 1u)) % vec4<u32>(32u)))), vec4<u32>(~arg_2, ~u_input.b, countOneBits(u_input.b), ~arg_2) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, arg_2, 10319u, 0u), firstTrailingBit(vec4<u32>(4294967295u, 57783u, u_input.b, 1u))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_2().b.x))), -450f, global0.c)), vec3<i32>(_wgslsmith_dot_vec4_i32(arg_1.b.b, vec4<i32>(-15553i, ~(-1i), 5308i, -global0.b.x)), _wgslsmith_sub_i32(-2147483647i, 1i), -2147483647i ^ abs(arg_1.b.b.x)));
    let var_2 = true;
    global0 = func_1().b;
    return _wgslsmith_f_op_f32(-var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(u_input.a >> (vec4<u32>(u_input.b, 1u, 4294967295u, 63075u) % vec4<u32>(32u)), func_1(), abs(u_input.b)))))) - -612f);
    let var_1 = reverseBits(min(abs(vec4<u32>(u_input.b, 58021u, 1u, 12113u)), ~(~vec4<u32>(42105u, u_input.b, 45901u, u_input.b)))) ^ (~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, 35418u), vec4<u32>(1u, 0u, u_input.b, u_input.b)), _wgslsmith_add_u32(12363u, 3356u), 1u, ~1u) & ~(~vec4<u32>(u_input.b, 9083u, 1u, 1u) << (abs(vec4<u32>(u_input.b, u_input.b, 15301u, 4294967295u)) % vec4<u32>(32u))));
    var var_2 = Struct_4(Struct_2(!select(vec4<bool>(true, global0.c, global0.c, true), !vec4<bool>(false, global0.c, global0.c, global0.c), true), Struct_1(-_wgslsmith_add_i32(-56184i, 11171i), vec4<i32>(abs(-15298i), ~0i, ~global0.b.x, global0.a), !global0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1263f, -957f, 830f, -553f) * vec4<f32>(var_0, var_0, var_0, 400f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-178f, var_0, var_0, -747f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, 1435f))), global0.c)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f) * var_0), 664f, _wgslsmith_div_f32(454f, _wgslsmith_f_op_f32(-480f - 1698f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))))));
    let var_3 = Struct_3(var_0, vec3<i32>(u_input.c.x, 1i, func_2().a.b.b.x));
    global1 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(var_1.www, _wgslsmith_clamp_vec3_u32(var_1.yzw, vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(var_1.x, var_1.x, u_input.b))), var_1.yxy), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(3938u, 104784u, 4294967295u), vec3<u32>(51107u, 32986u, 4294967295u), var_2.a.a.xwz) | (vec3<u32>(var_1.x, 15025u, var_1.x) >> (var_1.zyz % vec3<u32>(32u))), vec3<u32>(25782u >> (u_input.b % 32u), _wgslsmith_mult_u32(var_1.x, u_input.b), var_1.x)), ~var_1.wwy));
    var var_4 = ~var_1;
    let var_5 = countOneBits(~(var_1.x | (var_4.x ^ 0u))) != var_4.x;
    var_4 = var_1 >> (vec4<u32>(4294967295u, select(~41958u, 30678u, select(true, true, false)) ^ ~(~var_1.x), select(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_4.xwy, var_1.wxz), var_4.wxx ^ var_4.xwy), var_4.x ^ ~1u, var_5), 4294967295u) % vec4<u32>(32u));
    global1 = ~countOneBits(_wgslsmith_add_u32(var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), max(var_4.xx, var_1.wy))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.xy, -130f, var_1.xx, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_3.a)));
}

