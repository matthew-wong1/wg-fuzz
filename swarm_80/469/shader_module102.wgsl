struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(2147483647i, -16679i, 1i, 24297i), 1u, 270f);

var<private> global1: array<Struct_2, 24>;

var<private> global2: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-71919i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, 10035i, -7114i), vec3<i32>(i32(-2147483648), i32(-2147483648), 42982i), vec3<i32>(11222i, -9746i, 0i), vec3<i32>(0i, -1i, 1i), vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(57041i, 0i, 1i), vec3<i32>(-3432i, i32(-2147483648), -36437i), vec3<i32>(19153i, -5836i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 18798i, i32(-2147483648)), vec3<i32>(58424i, i32(-2147483648), -27268i), vec3<i32>(2147483647i, -1i, -38566i), vec3<i32>(-8166i, 11807i, 50846i), vec3<i32>(2147483647i, i32(-2147483648), -21769i), vec3<i32>(5011i, i32(-2147483648), 0i), vec3<i32>(0i, 2147483647i, -37097i), vec3<i32>(-18679i, 2147483647i, 36877i), vec3<i32>(44233i, 48652i, -19958i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(1i, 18393i, -22869i), vec3<i32>(63477i, i32(-2147483648), 2045i), vec3<i32>(7550i, i32(-2147483648), -11450i), vec3<i32>(1i, 1i, -20653i), vec3<i32>(-1i, 4027i, -46978i), vec3<i32>(-1i, 52781i, -24266i), vec3<i32>(0i, -25275i, 2147483647i), vec3<i32>(-12977i, -19126i, -16455i));

var<private> global3: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(1892f, 267f, -1000f, -546f), vec4<f32>(-1062f, -648f, -690f, -1780f), vec4<f32>(1415f, -299f, -810f, 326f), vec4<f32>(1000f, 396f, -1000f, 1596f), vec4<f32>(826f, -684f, 549f, -458f), vec4<f32>(399f, 2461f, 799f, 1049f), vec4<f32>(2324f, 285f, -404f, 374f), vec4<f32>(-1267f, 1834f, 1471f, 1036f), vec4<f32>(-1723f, -342f, 1897f, -1000f), vec4<f32>(-218f, 215f, -159f, 1402f), vec4<f32>(-568f, -292f, -329f, -1000f), vec4<f32>(869f, -1969f, 386f, -769f), vec4<f32>(-302f, 609f, -779f, -1339f), vec4<f32>(1786f, 2833f, 1137f, 1000f), vec4<f32>(762f, -924f, 743f, 441f), vec4<f32>(-567f, -870f, -903f, 626f), vec4<f32>(-345f, 999f, 399f, -806f), vec4<f32>(-1511f, 129f, -1006f, 1529f), vec4<f32>(1081f, 1198f, -1283f, -1000f), vec4<f32>(-877f, -1000f, -1000f, -1048f), vec4<f32>(-615f, -1721f, 1000f, 154f), vec4<f32>(1389f, 685f, 348f, -1203f), vec4<f32>(760f, 785f, 1825f, -686f), vec4<f32>(339f, -1586f, -1000f, 1868f), vec4<f32>(234f, -749f, -432f, 1000f), vec4<f32>(-2106f, -280f, -1000f, -785f), vec4<f32>(321f, 195f, -280f, -516f));

var<private> global4: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec4<i32>(2147483647i, 0i, 2147483647i, -1i), 4294967295u, 1020f), Struct_2(vec4<i32>(18952i, 2147483647i, 0i, 8469i), 25352u, 599f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_4 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_4(global4[_wgslsmith_index_u32(~(~countOneBits(4294967295u)), 2u)], u_input.b, arg_1);
    var var_2 = 502f;
    var var_3 = ~vec2<u32>((~0u >> (global0.b % 32u)) & ~global0.b, ~(~63662u));
    var var_4 = !vec3<bool>(false, arg_0.c, !any(vec4<bool>(arg_0.a, false, true, arg_0.a)));
    return var_1;
}

fn func_3(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), any(vec2<bool>(true, true))));
    let var_1 = Struct_4(Struct_2(global0.a, 107483u, arg_0.x), -(~_wgslsmith_sub_i32(i32(-1i) * -2147483647i, u_input.c.x)), arg_0.x);
    let var_2 = vec3<bool>(true, true || select(true, select(true, any(var_0), var_0.x), !var_0.x), true);
    let var_3 = u_input.a.yxw | vec3<u32>(var_1.a.b ^ _wgslsmith_sub_u32(42312u, u_input.a.x), min(~7592u, var_1.a.b), ~global0.b);
    global3 = array<vec4<f32>, 27>();
    return func_2(Struct_1(true && var_0.x, -54131i, ~var_3.x > (~1u >> (_wgslsmith_clamp_u32(var_3.x, global0.b, 1u) % 32u))), var_1.a.c);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = func_2(Struct_1((4728u & (31040u << (global0.b % 32u))) == 0u, _wgslsmith_clamp_i32(~(-global0.a.x), u_input.b, 0i), true), 737f);
    var_0 = func_2(Struct_1(true, 0i, any(vec4<bool>(true, arg_1.x < arg_1.x, select(false, false, true), true))), var_0.a.c);
    global3 = array<vec4<f32>, 27>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(max(528f, global0.c)), _wgslsmith_f_op_f32(f32(-1f) * -125f), 1654f))) * vec3<f32>(699f, _wgslsmith_f_op_f32(2472f + _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(round(global0.c))));
    let var_2 = func_3(vec2<f32>(1086f, global0.c));
    return Struct_3(vec3<i32>(var_2.b ^ 1i, i32(-1i) * -1i, _wgslsmith_clamp_i32(-(~var_2.b), arg_0.x, -1i)), ~u_input.e >> (u_input.e % 32u), Struct_1(false, -2147483647i, func_3(_wgslsmith_f_op_vec2_f32(trunc(var_1.yz))).a.c < 805f), Struct_1(any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)))), ~(-1i), !(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, var_0.a.b, 93080u, var_2.a.b), vec4<u32>(38097u, 6840u, 38673u, 4294967295u)) <= _wgslsmith_dot_vec3_u32(vec3<u32>(88948u, 14978u, 6398u), u_input.a.wyy))), Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(global0.a.x, min(20771i, 0i), -61155i ^ u_input.b, arg_0.x), firstLeadingBit(select(var_0.a.a, vec4<i32>(-1i, arg_0.x, 1i, 2147483647i), vec4<bool>(true, true, true, true)))), ~_wgslsmith_mod_u32(u_input.e & var_0.a.b, 83711u), -1145f));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.a.x, global0.a.x, ~(i32(-1i) * -2147483647i), func_2(Struct_1(false, 1i, false), _wgslsmith_f_op_f32(506f * arg_1.e.c)).a.a.x), firstLeadingBit(vec4<i32>(~1i, func_3(vec2<f32>(arg_1.e.c, 755f)).b, u_input.b, firstLeadingBit(-9137i)) ^ (vec4<i32>(-2147483647i, arg_0.a.x, arg_0.a.x, -29507i) >> ((vec4<u32>(arg_1.b, 4294967295u, 1487u, 1u) >> (vec4<u32>(u_input.e, 33558u, global0.b, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    let var_1 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_1.c.b, func_2(arg_1.c, 1711f).a.a.x) | -39949i, arg_1.d.b), global0.a.x);
    global2 = array<vec3<i32>, 27>();
    global4 = array<Struct_2, 2>();
    let var_2 = Struct_4(func_2(func_1(_wgslsmith_mult_vec2_i32(u_input.c.xx, var_1) | _wgslsmith_div_vec2_i32(vec2<i32>(45813i, 0i), u_input.d.wx), vec2<f32>(1384f, _wgslsmith_f_op_f32(-1544f - -1278f))).d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_1.e.c)), 242f, any(vec3<bool>(true, true, true))))).a, (-(arg_1.a.x << (global0.b % 32u)) ^ arg_0.a.x) << (~(~16307u) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.e.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1021f)), !select(arg_1.d.c, false, false)))));
    return ~u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 13720u | _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(func_4(Struct_5(global0.a.xzz), func_1(global0.a.yy, vec2<f32>(704f, 122f))), global0.b, ~40565u));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e, 1u), 27u)] * _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(var_0, 27u)]))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, global0.c, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_f32(-1258f + global0.c)))));
    global1 = array<Struct_2, 24>();
    var var_2 = Struct_2(vec4<i32>(u_input.b, _wgslsmith_clamp_i32(-u_input.d.x, reverseBits(global0.a.x), u_input.b), ~u_input.c.x, 0i), 0u, global0.c);
    global4 = array<Struct_2, 2>();
    let var_3 = -(~(~(~20015i))) << (u_input.e % 32u);
    var var_4 = vec4<bool>(true, true, true, true);
    global3 = array<vec4<f32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(879f * global0.c) * func_1(global0.a.zy, vec2<f32>(global0.c, -1000f)).e.c) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-285f, var_1.x), _wgslsmith_f_op_f32(var_2.c * -1086f)))) * -2078f));
}

