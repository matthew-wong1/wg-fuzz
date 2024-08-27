struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(vec3<f32>(109f, 1173f, 200f), false, Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(49367u), vec3<u32>(1u, 4294967295u, 2945u), Struct_1(0u), Struct_1(4164u)), Struct_1(87287u))), Struct_4(vec3<f32>(-1344f, 1033f, 2272f), false, Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(59952u), vec3<u32>(1u, 23098u, 47309u), Struct_1(1u), Struct_1(26573u)), Struct_1(4294967295u))), Struct_4(vec3<f32>(-256f, 999f, -1327f), true, Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(4294967295u), vec3<u32>(60342u, 66534u, 0u), Struct_1(14191u), Struct_1(21257u)), Struct_1(0u))), Struct_4(vec3<f32>(-716f, 1131f, 927f), false, Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(0u), vec3<u32>(4294967295u, 1u, 0u), Struct_1(15824u), Struct_1(21263u)), Struct_1(26729u))), Struct_4(vec3<f32>(-658f, 687f, -436f), true, Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(4294967295u), vec3<u32>(13899u, 44429u, 29384u), Struct_1(44655u), Struct_1(1u)), Struct_1(26180u))), Struct_4(vec3<f32>(-1547f, 897f, 514f), false, Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(4294967295u), vec3<u32>(1u, 4294967295u, 13064u), Struct_1(0u), Struct_1(1u)), Struct_1(30829u))), Struct_4(vec3<f32>(422f, -980f, -345f), true, Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(0u), vec3<u32>(1u, 4294967295u, 3543u), Struct_1(1u), Struct_1(0u)), Struct_1(1u))), Struct_4(vec3<f32>(216f, -449f, 1615f), false, Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(61415u), vec3<u32>(4294967295u, 0u, 43057u), Struct_1(61427u), Struct_1(1u)), Struct_1(1u))), Struct_4(vec3<f32>(-2154f, -1000f, 273f), true, Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(35497u), vec3<u32>(0u, 0u, 7354u), Struct_1(1u), Struct_1(1u)), Struct_1(1u))), Struct_4(vec3<f32>(1750f, -405f, 810f), false, Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(0u), vec3<u32>(0u, 4294967295u, 95128u), Struct_1(1u), Struct_1(46297u)), Struct_1(0u))), Struct_4(vec3<f32>(-2022f, 768f, 1595f), false, Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(4294967295u), vec3<u32>(1551u, 57193u, 0u), Struct_1(55918u), Struct_1(19882u)), Struct_1(4294967295u))), Struct_4(vec3<f32>(1330f, -100f, -640f), true, Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(55256u), vec3<u32>(4294967295u, 37849u, 1u), Struct_1(12223u), Struct_1(15408u)), Struct_1(0u))), Struct_4(vec3<f32>(-472f, -185f, 1210f), false, Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(65292u), vec3<u32>(3316u, 0u, 4294967295u), Struct_1(8721u), Struct_1(1915u)), Struct_1(1u))), Struct_4(vec3<f32>(2289f, -1000f, -1192f), false, Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(1u), vec3<u32>(51918u, 4294967295u, 0u), Struct_1(29752u), Struct_1(30214u)), Struct_1(1u))), Struct_4(vec3<f32>(687f, 120f, 1598f), true, Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(4294967295u), vec3<u32>(62391u, 26092u, 1u), Struct_1(22042u), Struct_1(89539u)), Struct_1(54206u))), Struct_4(vec3<f32>(1655f, -1627f, 262f), true, Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(0u), vec3<u32>(0u, 0u, 111603u), Struct_1(1u), Struct_1(0u)), Struct_1(1u))), Struct_4(vec3<f32>(2460f, 1000f, 786f), false, Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(1u), vec3<u32>(0u, 4294967295u, 7104u), Struct_1(0u), Struct_1(45045u)), Struct_1(3257u))), Struct_4(vec3<f32>(-971f, 232f, 1304f), false, Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(16675u), vec3<u32>(3851u, 1u, 5438u), Struct_1(0u), Struct_1(0u)), Struct_1(0u))), Struct_4(vec3<f32>(-430f, 343f, 1193f), false, Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(0u), vec3<u32>(1u, 1u, 4294967295u), Struct_1(1u), Struct_1(0u)), Struct_1(1u))), Struct_4(vec3<f32>(624f, 1000f, -1285f), true, Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(0u), vec3<u32>(1u, 34264u, 28307u), Struct_1(4133u), Struct_1(4486u)), Struct_1(15877u))), Struct_4(vec3<f32>(-1101f, -1000f, 1934f), true, Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(4294967295u), vec3<u32>(1u, 19452u, 0u), Struct_1(64936u), Struct_1(4294967295u)), Struct_1(0u))), Struct_4(vec3<f32>(-1031f, -612f, 127f), true, Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(87339u), vec3<u32>(1u, 60414u, 1u), Struct_1(0u), Struct_1(1u)), Struct_1(0u))), Struct_4(vec3<f32>(461f, -1037f, -848f), true, Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(1u), vec3<u32>(15690u, 84504u, 13915u), Struct_1(1u), Struct_1(51282u)), Struct_1(4294967295u))), Struct_4(vec3<f32>(-977f, -110f, -1459f), false, Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(1u), vec3<u32>(26077u, 31364u, 4294967295u), Struct_1(4294967295u), Struct_1(37706u)), Struct_1(47231u))), Struct_4(vec3<f32>(-767f, -901f, -1701f), false, Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(17417u), vec3<u32>(82940u, 10024u, 36336u), Struct_1(0u), Struct_1(68132u)), Struct_1(1u))), Struct_4(vec3<f32>(-1000f, -1000f, 718f), false, Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(11481u), vec3<u32>(4294967295u, 38719u, 0u), Struct_1(63511u), Struct_1(58041u)), Struct_1(1u))), Struct_4(vec3<f32>(-1495f, 165f, -795f), false, Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(83790u), vec3<u32>(1347u, 1u, 1u), Struct_1(4294967295u), Struct_1(1u)), Struct_1(70821u))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1043f * global0.x), 1f)), -843f) - vec3<f32>(global0.x, _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(global0.x, -1000f))))), false, Struct_3(select(select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_1.x, arg_0), arg_1.zy), false), vec2<bool>(arg_0, arg_0), !select(vec2<bool>(false, true), arg_1.yx, arg_1.zx)), Struct_2(Struct_1(global1.x ^ 27954u), reverseBits(vec3<u32>(global1.x, 61251u, 16292u) << (vec3<u32>(u_input.a.x, global1.x, 4294967295u) % vec3<u32>(32u))), Struct_1(1u), Struct_1(1u & u_input.a.x)), Struct_1(global1.x)));
    let var_1 = var_0;
    return var_0.a.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_3 {
    global2 = array<Struct_4, 27>();
    global2 = array<Struct_4, 27>();
    global0 = vec4<f32>(-466f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))))), arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(all(vec3<bool>(true, false, false)), vec3<bool>(true, true, any(vec4<bool>(false, false, false, false))))), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(arg_0.x + -1333f)))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(global0.yyy));
    var var_1 = max(_wgslsmith_add_i32(u_input.b, _wgslsmith_mod_i32(abs(arg_1.x) & 1i, _wgslsmith_clamp_i32(u_input.b, ~arg_1.x, 2311i))), -u_input.b & abs(arg_1.x));
    return Struct_3(vec2<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true))), Struct_2(arg_2, min(select(vec3<u32>(global1.x, global1.x, 40070u), vec3<u32>(u_input.a.x, global1.x, global1.x), true) & vec3<u32>(1u, arg_2.a, 41216u), ~select(vec3<u32>(global1.x, 25800u, 52925u), vec3<u32>(10046u, global1.x, 1u), vec3<bool>(false, true, true))), arg_2, Struct_1(1847u)), Struct_1(~15708u));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-364f * -859f), _wgslsmith_f_op_f32(f32(-1f) * -712f))))));
    global2 = array<Struct_4, 27>();
    global1 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(abs(arg_2.b.d.a), ~_wgslsmith_div_u32(1u, global1.x)), u_input.a.x), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(arg_2.b.c.a, ~0u), reverseBits(min(92642u, 58887u))), ~vec2<u32>(~1u, global1.x)));
    var var_1 = all(arg_2.a);
    var var_2 = func_2(global0.xyz, vec4<i32>(_wgslsmith_mod_i32(u_input.b | 1i, ~2147483647i) | (29788i ^ min(u_input.b, u_input.b)), 1i, -2147483647i, abs(u_input.b)), Struct_1(53288u));
    return Struct_3(var_2.a, func_2(global0.xzx, vec4<i32>(_wgslsmith_div_i32(-arg_3, u_input.b), 74472i, ~arg_3, 1i), var_2.c).b, arg_2.c);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: u32) -> Struct_2 {
    var var_0 = 2147483647i;
    global1 = arg_0.b.b;
    var var_1 = global2[_wgslsmith_index_u32(global1.x, 27u)];
    var var_2 = func_2(var_1.a, max(-(~vec4<i32>(39155i, u_input.b, arg_1.x, 2147483647i)), vec4<i32>(abs(u_input.b) & ~(-2147483647i), 20663i, u_input.b, u_input.b & _wgslsmith_mod_i32(42470i, -2147483647i))), arg_0.c);
    var var_3 = false;
    return var_1.c.b;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_add_i32(-31687i, u_input.b);
    var var_1 = true;
    var var_2 = global1.x;
    let var_3 = Struct_5(func_5(func_4(global0.x, arg_1.x, func_2(_wgslsmith_f_op_vec3_f32(global0.wwx - vec3<f32>(-1816f, 302f, global0.x)), -vec4<i32>(0i, 8289i, -11985i, var_0), arg_3), -max(-2147483647i, u_input.b)), vec3<i32>(-1i) * -(vec3<i32>(u_input.b, 2147483647i, 7340i) >> (vec3<u32>(u_input.a.x, arg_3.a, 1u) % vec3<u32>(32u))), 4648u), u_input.a.x);
    var var_4 = Struct_3(!arg_2.yy, Struct_2(func_2(vec3<f32>(_wgslsmith_f_op_f32(floor(global0.x)), -970f, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_0, -59070i, var_0, u_input.b)), vec4<i32>(26237i, -1i, 2147483647i, u_input.b)), Struct_1(firstLeadingBit(arg_3.a))).c, ~firstTrailingBit(_wgslsmith_add_vec3_u32(var_3.a.b, vec3<u32>(global1.x, arg_3.a, 18134u))), func_2(_wgslsmith_div_vec3_f32(global0.wzz, vec3<f32>(global0.x, global0.x, 324f)), select(-vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), abs(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), !vec4<bool>(arg_2.x, arg_1.x, true, true)), Struct_1(1u & arg_3.a)).c, Struct_1(0u << (_wgslsmith_mod_u32(global1.x, var_3.b) % 32u))), Struct_1(1u));
    return Struct_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-1553f + -181f)), _wgslsmith_f_op_vec3_f32(global0.zww * _wgslsmith_f_op_vec3_f32(-global0.yxz)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -437f) * _wgslsmith_f_op_f32(max(-800f, global0.x))), global0.x, -1676f))), true, Struct_3(vec2<bool>(!arg_0, (var_4.b.c.a | arg_3.a) < 59040u), var_4.b, func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x)), !(arg_2.x || true), Struct_3(func_4(-1371f, arg_2.x, Struct_3(arg_2.xx, Struct_2(Struct_1(0u), var_4.b.b, Struct_1(0u), var_3.a.d), var_3.a.d), var_0).a, var_3.a, Struct_1(u_input.a.x)), u_input.b).c));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec4<bool>) -> vec4<f32> {
    var var_0 = 1u;
    let var_1 = arg_1.c.b;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(882f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1415f, 485f) + -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.x)))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2850f - _wgslsmith_f_op_f32(floor(735f))))), arg_1.a.x);
    global1 = vec3<u32>(_wgslsmith_mult_u32(var_1.a.a, func_1(true, vec4<bool>(arg_1.c.a.x, arg_1.b, !arg_1.b, arg_1.b), arg_2.xzx, func_5(arg_1.c, vec3<i32>(-2147483647i, u_input.b, u_input.b), global1.x | arg_1.c.b.c.a).d).c.b.b.x), ~(~4294967295u), u_input.a.x);
    let var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) - 719f), any(vec4<bool>(any(vec4<bool>(false, arg_1.c.a.x, arg_1.b, true)), false, select(true, false | arg_1.c.a.x, arg_1.b), true)), func_1(any(vec3<bool>(arg_2.x != true, all(arg_2), arg_1.b)), !arg_2, select(!select(arg_2.wxy, vec3<bool>(arg_1.c.a.x, false, true), false), arg_2.zxz, select(arg_2.yyz, arg_2.wzy, arg_2.zwz)), Struct_1(0u)).c, -1i).b;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1531f, arg_1.a.x, global0.x, -200f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(404f, global0.x, -671f, -481f)))))) + vec4<f32>(global0.x, global0.x, -920f, global0.x)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(func_1(true, select(vec4<bool>(true, false, false, false), arg_2, true), vec3<bool>(true, true, false), Struct_1(4294967295u)).a.x, _wgslsmith_f_op_f32(select(-402f, _wgslsmith_f_op_f32(global0.x - 443f), all(arg_1.c.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), 821f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x) - 329f), 782f, _wgslsmith_div_f32(-394f, arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-648f, global0.x) - _wgslsmith_f_op_f32(-244f - -796f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1371f, 814f, global0.x, global0.x), vec4<f32>(global0.x, -228f, 243f, global0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1017f, global0.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-727f, global0.x, 858f, 497f)), vec4<f32>(global0.x, 1577f, global0.x, -1001f))) * _wgslsmith_f_op_vec4_f32(func_6(Struct_5(Struct_2(Struct_1(u_input.a.x), vec3<u32>(70842u, global1.x, u_input.a.x), Struct_1(1u), Struct_1(global1.x)), firstTrailingBit(0u)), func_1(any(vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), Struct_1(0u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true), true)))));
    var var_1 = -_wgslsmith_mult_i32(u_input.b, 2147483647i);
    let var_2 = -48500i;
    global1 = ~vec3<u32>(global1.x, firstLeadingBit(~105716u), _wgslsmith_mult_u32(global1.x, ~0u << (u_input.a.x % 32u)));
    var var_3 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), !(!vec3<bool>(false, any(vec3<bool>(true, true, true)), true)), func_2(vec3<f32>(_wgslsmith_f_op_f32(1554f + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(-848f + 284f))), _wgslsmith_add_vec4_i32(vec4<i32>(-u_input.b, select(var_0, u_input.b, true), var_0, var_2), max(vec4<i32>(u_input.b, 9267i, var_0, 13333i), vec4<i32>(-4355i, u_input.b, u_input.b, u_input.b))), Struct_1(global1.x)).a.x);
    var var_4 = firstTrailingBit(~countOneBits(firstLeadingBit(vec4<i32>(1i, u_input.b, -2147483647i, var_2)) & _wgslsmith_add_vec4_i32(vec4<i32>(var_2, 1i, 0i, -28581i), vec4<i32>(u_input.b, -46159i, -32064i, 1269i))));
    let var_5 = func_1(false, vec4<bool>(false, 1171f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) - _wgslsmith_f_op_f32(max(-698f, global0.x))), var_3.x, false), !select(vec3<bool>(true, all(vec3<bool>(true, false, var_3.x)), true), vec3<bool>(32264u == u_input.a.x, var_3.x, true), true), Struct_1(~global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(global1.yx, global0.x, _wgslsmith_f_op_vec4_f32(func_6(Struct_5(var_5.c.b, 0u), func_1(!all(vec4<bool>(var_3.x, true, var_3.x, var_3.x)), !vec4<bool>(var_3.x, var_3.x, false, true), select(select(vec3<bool>(false, false, var_3.x), vec3<bool>(true, false, false), var_3.x), select(vec3<bool>(true, var_5.b, var_5.c.a.x), vec3<bool>(var_3.x, true, var_3.x), var_3.x), true), Struct_1(func_2(global0.xzx, vec4<i32>(var_2, 5513i, var_4.x, 47171i), var_5.c.b.a).c.a)), select(select(!vec4<bool>(true, var_3.x, false, true), !vec4<bool>(true, var_3.x, var_5.b, var_3.x), 6661u > var_5.c.c.a), !select(vec4<bool>(var_5.c.a.x, var_5.b, false, var_5.b), vec4<bool>(var_5.b, true, var_5.b, var_5.b), vec4<bool>(var_3.x, var_5.c.a.x, var_3.x, true)), !select(vec4<bool>(false, var_3.x, var_5.b, var_3.x), vec4<bool>(true, false, var_3.x, true), vec4<bool>(false, true, true, false))))), ~(~0u << ((u_input.a.x & ~11079u) % 32u)), min(abs(vec3<i32>(max(var_0, -2147483647i), _wgslsmith_sub_i32(var_0, 30967i), var_4.x)), -abs(var_4.zxx) ^ -(~var_4.wyw)));
}

