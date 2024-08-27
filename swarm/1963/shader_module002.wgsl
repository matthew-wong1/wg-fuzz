struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec4<f32>(634f, 1000f, -1000f, -1000f), vec3<bool>(true, false, true), vec2<u32>(25553u, 4294967295u), Struct_1(-306i, vec3<bool>(true, true, true), -1i)), Struct_2(vec4<f32>(-1816f, -591f, 1104f, 922f), vec3<bool>(true, false, true), vec2<u32>(58093u, 1u), Struct_1(-44243i, vec3<bool>(false, true, true), -1i)), Struct_2(vec4<f32>(-535f, 139f, 497f, 684f), vec3<bool>(false, true, false), vec2<u32>(4294967295u, 46656u), Struct_1(58859i, vec3<bool>(true, false, true), i32(-2147483648))), Struct_2(vec4<f32>(237f, 845f, 549f, -153f), vec3<bool>(false, false, false), vec2<u32>(4294967295u, 22541u), Struct_1(1i, vec3<bool>(false, false, true), -6684i)), Struct_2(vec4<f32>(-126f, -1833f, 529f, -292f), vec3<bool>(true, true, false), vec2<u32>(61833u, 0u), Struct_1(-4292i, vec3<bool>(true, true, true), 0i)), Struct_2(vec4<f32>(1032f, -1553f, -1850f, -326f), vec3<bool>(false, false, false), vec2<u32>(1u, 75854u), Struct_1(12571i, vec3<bool>(false, true, true), i32(-2147483648))), Struct_2(vec4<f32>(-274f, 1948f, 1014f, 1068f), vec3<bool>(false, false, true), vec2<u32>(10004u, 0u), Struct_1(1i, vec3<bool>(false, true, true), -31464i)), Struct_2(vec4<f32>(1281f, -1308f, 425f, 1025f), vec3<bool>(true, false, false), vec2<u32>(69263u, 21213u), Struct_1(-16182i, vec3<bool>(true, true, true), -21929i)), Struct_2(vec4<f32>(-1000f, 266f, 705f, -1434f), vec3<bool>(true, false, true), vec2<u32>(75752u, 4294967295u), Struct_1(22392i, vec3<bool>(true, false, false), i32(-2147483648))), Struct_2(vec4<f32>(-1000f, -880f, 619f, 1180f), vec3<bool>(false, true, true), vec2<u32>(65533u, 15565u), Struct_1(-1i, vec3<bool>(false, true, true), 12468i)), Struct_2(vec4<f32>(-1093f, -437f, -1295f, 662f), vec3<bool>(false, true, false), vec2<u32>(4294967295u, 1u), Struct_1(-1i, vec3<bool>(false, false, true), 1i)), Struct_2(vec4<f32>(1928f, 377f, 686f, -167f), vec3<bool>(false, false, true), vec2<u32>(0u, 4294967295u), Struct_1(i32(-2147483648), vec3<bool>(false, false, true), i32(-2147483648))));

var<private> global1: array<vec2<i32>, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> f32 {
    var var_0 = 27005u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-977f + -1172f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(266f, -1225f)))))), -1599f);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: i32) -> vec4<bool> {
    var var_0 = Struct_4(Struct_1(arg_2, select(!vec3<bool>(arg_1.a.b.x, true, true), select(!vec3<bool>(arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x), select(arg_1.a.b, vec3<bool>(false, arg_1.a.b.x, false), arg_1.a.b.x), arg_1.a.b.x & arg_1.a.b.x), !(0u < u_input.b)), 1i));
    global0 = array<Struct_2, 12>();
    global1 = array<vec2<i32>, 27>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-350f * arg_0)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(827f, -1888f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(390f, -1414f, arg_0)), select(true, arg_1.a.b.x, arg_1.a.b.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -2263f, 812f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1203f, -962f, 129f) - vec3<f32>(-281f, -1143f, 1210f)))))));
    return select(select(!vec4<bool>(var_0.a.b.x, false, true, all(vec3<bool>(arg_1.a.b.x, var_0.a.b.x, arg_1.a.b.x))), !select(!vec4<bool>(arg_1.a.b.x, var_0.a.b.x, false, arg_1.a.b.x), !vec4<bool>(true, false, arg_1.a.b.x, var_0.a.b.x), vec4<bool>(false, true, arg_1.a.b.x, var_0.a.b.x)), !select(!vec4<bool>(arg_1.a.b.x, false, arg_1.a.b.x, true), !vec4<bool>(false, true, true, arg_1.a.b.x), select(vec4<bool>(arg_1.a.b.x, true, var_0.a.b.x, var_0.a.b.x), vec4<bool>(true, var_0.a.b.x, true, var_0.a.b.x), vec4<bool>(true, false, arg_1.a.b.x, var_0.a.b.x)))), !vec4<bool>(var_1.x == 1000f, true, true, true), select(!vec4<bool>(arg_1.a.b.x && false, false, all(vec2<bool>(false, var_0.a.b.x)), false), !(!(!vec4<bool>(var_0.a.b.x, arg_1.a.b.x, true, var_0.a.b.x))), arg_0 <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(506f * 1036f))));
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-35060i, -(~1i), 29383i, _wgslsmith_clamp_i32(37200i, ~reverseBits(11702i), ~1i)), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(18461i, 1i), 1i), 29931i), abs(-2147483647i) & firstTrailingBit(reverseBits(-1i)), select(-1i, 8336i, true) << (u_input.e % 32u), 27804i));
    let var_1 = Struct_1(abs(var_0.x), vec3<bool>(!(!select(false, false, false)), true, any(func_3(642f, Struct_4(Struct_1(1i, vec3<bool>(false, false, true), var_0.x)), var_0.x)) == (var_0.x < (var_0.x << (1240u % 32u)))), ~var_0.x);
    var_0 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -57456i, var_1.c, -1i), vec4<i32>(5420i, 54095i, -3050i, -1i)), vec4<i32>(var_1.c, -18952i, _wgslsmith_div_i32(-2147483647i, var_0.x), abs(var_1.a)) << (vec4<u32>(0u, ~27337u, ~u_input.e, ~u_input.a) % vec4<u32>(32u)));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -460f);
    return vec4<i32>(select(-7886i, var_1.c, select(any(!var_1.b.yx), !(!var_1.b.x), any(select(vec4<bool>(var_1.b.x, var_1.b.x, false, false), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false), true)))), min(-reverseBits(28353i), -2147483647i), 7729i, 0i << ((42584u ^ (0u & select(13772u, u_input.c, var_1.b.x))) % 32u));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_1) -> Struct_4 {
    let var_0 = Struct_4(Struct_1(arg_1.a.c, arg_0.wyw, 29833i));
    let var_1 = func_3(-714f, Struct_4(arg_2), ~(~(-(3809i | arg_1.a.c)))).x;
    var var_2 = var_0.a.b;
    global1 = array<vec2<i32>, 27>();
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2291f * 2809f) + -1342f)) - _wgslsmith_f_op_f32(round(441f)))));
    return Struct_4(arg_2);
}

fn func_5(arg_0: Struct_4, arg_1: u32) -> StorageBuffer {
    let var_0 = arg_0.a;
    global0 = array<Struct_2, 12>();
    global1 = array<vec2<i32>, 27>();
    global0 = array<Struct_2, 12>();
    let var_1 = vec4<bool>(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1521f)) - _wgslsmith_f_op_f32(1988f + -1000f)) * -133f), arg_0, -arg_0.a.c).x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, reverseBits(77910u), u_input.b ^ 4294967295u, ~u_input.c), vec4<u32>(1u, _wgslsmith_mult_u32(0u, u_input.a), countOneBits(33279u), ~0u)) > max(arg_1, select(_wgslsmith_dot_vec3_u32(vec3<u32>(70234u, u_input.e, u_input.d), vec3<u32>(1u, 24000u, 52076u)), 0u, func_4(vec4<bool>(arg_0.a.b.x, var_0.b.x, true, true), Struct_4(arg_0.a), arg_0.a).a.b.x)), _wgslsmith_sub_i32(func_4(select(vec4<bool>(var_0.b.x, false, var_0.b.x, arg_0.a.b.x), vec4<bool>(false, false, var_0.b.x, var_0.b.x), vec4<bool>(true, var_0.b.x, true, true)), arg_0, func_4(vec4<bool>(arg_0.a.b.x, var_0.b.x, false, false), arg_0, arg_0.a).a).a.a, min(-1265i, var_0.a) << (abs(4294967295u) % 32u)) < ~(i32(-1i) * -22827i), select(!var_0.b.x, true, (select(false, var_0.b.x, var_0.b.x) || arg_0.a.b.x) && func_3(_wgslsmith_f_op_f32(round(177f)), arg_0, 2319i).x));
    return StorageBuffer(countOneBits(_wgslsmith_clamp_i32(arg_0.a.a, var_0.a, -arg_0.a.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_0.c, -1i), vec3<i32>(_wgslsmith_mult_i32(var_0.a, 1i) << (arg_1 % 32u), _wgslsmith_div_i32(0i, -61437i), ~1i)), vec3<u32>(0u, ~arg_1, arg_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1777f, _wgslsmith_f_op_f32(f32(-1f) * -176f))))), ~(-_wgslsmith_mult_vec4_i32(func_2(), vec4<i32>(arg_0.a.a, -11296i, arg_0.a.c, var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    let x = u_input.a;
    s_output = func_5(func_4(vec4<bool>(select(u_input.d, 1u, false) >= 62618u, true, !any(vec2<bool>(true, true)), 1000f >= _wgslsmith_f_op_f32(select(495f, 221f, true))), Struct_4(Struct_1(-58233i, vec3<bool>(true, false, false), 0i)), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -44123i, -44138i, 1i), vec4<i32>(-35504i, 14408i, 2147483647i, 1i)), func_2()), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), true), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 26245i, 0i), vec3<i32>(9134i, -12958i, -45346i))))), 623u);
}

