struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool = true;

var<private> global2: array<vec2<f32>, 6>;

var<private> global3: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(10696u, -1000f, Struct_2(true, vec2<bool>(false, false), Struct_1(vec3<u32>(46886u, 81589u, 3364u), vec4<u32>(1u, 4294967295u, 0u, 745u), vec2<bool>(true, true), -131f, 1u), Struct_1(vec3<u32>(0u, 1u, 0u), vec4<u32>(1u, 12555u, 2394u, 54255u), vec2<bool>(true, true), 1087f, 12591u))), Struct_4(41874u, 171f, Struct_2(true, vec2<bool>(true, true), Struct_1(vec3<u32>(4294967295u, 65877u, 0u), vec4<u32>(94463u, 4294967295u, 0u, 0u), vec2<bool>(false, false), -694f, 60117u), Struct_1(vec3<u32>(64640u, 1u, 1u), vec4<u32>(57826u, 31026u, 4294967295u, 1844u), vec2<bool>(false, false), 633f, 0u))), Struct_4(64021u, 418f, Struct_2(true, vec2<bool>(true, true), Struct_1(vec3<u32>(4294967295u, 0u, 58151u), vec4<u32>(0u, 0u, 12671u, 4294967295u), vec2<bool>(false, false), -1524f, 0u), Struct_1(vec3<u32>(29836u, 0u, 96041u), vec4<u32>(1u, 4294967295u, 4796u, 0u), vec2<bool>(false, true), -1807f, 4294967295u))), Struct_4(4294967295u, 1003f, Struct_2(true, vec2<bool>(false, true), Struct_1(vec3<u32>(0u, 4294967295u, 15144u), vec4<u32>(7046u, 4294967295u, 1u, 4294967295u), vec2<bool>(true, false), 592f, 32283u), Struct_1(vec3<u32>(14110u, 1u, 1u), vec4<u32>(0u, 1u, 16518u, 4294967295u), vec2<bool>(false, false), 136f, 1u))), Struct_4(66228u, 694f, Struct_2(false, vec2<bool>(false, true), Struct_1(vec3<u32>(11223u, 16786u, 1u), vec4<u32>(4294967295u, 3616u, 1u, 19192u), vec2<bool>(true, false), -109f, 7733u), Struct_1(vec3<u32>(89040u, 0u, 0u), vec4<u32>(1u, 24956u, 0u, 4103u), vec2<bool>(false, false), -873f, 39848u))), Struct_4(5621u, 1350f, Struct_2(true, vec2<bool>(true, false), Struct_1(vec3<u32>(1u, 1u, 46939u), vec4<u32>(36296u, 16977u, 10958u, 1u), vec2<bool>(false, true), 1053f, 18084u), Struct_1(vec3<u32>(4294967295u, 82312u, 4294967295u), vec4<u32>(4294967295u, 0u, 70274u, 59398u), vec2<bool>(true, true), 116f, 60269u))), Struct_4(118791u, 706f, Struct_2(true, vec2<bool>(true, true), Struct_1(vec3<u32>(11445u, 4294967295u, 148400u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec2<bool>(false, true), 1888f, 32867u), Struct_1(vec3<u32>(4294967295u, 0u, 2436u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec2<bool>(false, false), -1663f, 0u))), Struct_4(0u, -323f, Struct_2(false, vec2<bool>(false, true), Struct_1(vec3<u32>(4294967295u, 43235u, 20923u), vec4<u32>(0u, 13146u, 33413u, 69594u), vec2<bool>(false, true), -979f, 58288u), Struct_1(vec3<u32>(31685u, 0u, 1u), vec4<u32>(4294967295u, 0u, 48639u, 15779u), vec2<bool>(false, true), -1000f, 1u))), Struct_4(7444u, 1480f, Struct_2(false, vec2<bool>(false, false), Struct_1(vec3<u32>(0u, 42577u, 31906u), vec4<u32>(44133u, 50770u, 1u, 49412u), vec2<bool>(true, true), 284f, 1u), Struct_1(vec3<u32>(57070u, 85368u, 117u), vec4<u32>(15411u, 0u, 4294967295u, 33101u), vec2<bool>(true, false), -1126f, 71986u))), Struct_4(29164u, -448f, Struct_2(false, vec2<bool>(false, false), Struct_1(vec3<u32>(1u, 38468u, 24536u), vec4<u32>(0u, 35375u, 0u, 19124u), vec2<bool>(false, false), 972f, 21669u), Struct_1(vec3<u32>(4294967295u, 8327u, 0u), vec4<u32>(73235u, 4214u, 67984u, 9143u), vec2<bool>(false, true), -1000f, 0u))), Struct_4(6944u, -174f, Struct_2(false, vec2<bool>(true, false), Struct_1(vec3<u32>(1u, 23686u, 1u), vec4<u32>(3178u, 12897u, 1u, 0u), vec2<bool>(true, true), 176f, 4294967295u), Struct_1(vec3<u32>(1u, 4294967295u, 35207u), vec4<u32>(1u, 34573u, 53995u, 1u), vec2<bool>(false, false), 2679f, 37160u))), Struct_4(110377u, 299f, Struct_2(false, vec2<bool>(true, false), Struct_1(vec3<u32>(1u, 47537u, 1u), vec4<u32>(4294967295u, 0u, 110554u, 34836u), vec2<bool>(false, true), -274f, 3329u), Struct_1(vec3<u32>(15880u, 0u, 49832u), vec4<u32>(3603u, 1u, 57507u, 30649u), vec2<bool>(true, true), 1851f, 43699u))), Struct_4(35667u, 1725f, Struct_2(false, vec2<bool>(true, false), Struct_1(vec3<u32>(4294967295u, 114048u, 49720u), vec4<u32>(1161u, 0u, 35631u, 69851u), vec2<bool>(true, false), -340f, 11289u), Struct_1(vec3<u32>(449u, 63395u, 4294967295u), vec4<u32>(22361u, 0u, 32906u, 30662u), vec2<bool>(true, false), 232f, 4294967295u))), Struct_4(30589u, -428f, Struct_2(true, vec2<bool>(true, false), Struct_1(vec3<u32>(0u, 4294967295u, 22909u), vec4<u32>(4294967295u, 0u, 72857u, 1u), vec2<bool>(false, true), -1644f, 0u), Struct_1(vec3<u32>(57477u, 0u, 1u), vec4<u32>(43390u, 1u, 0u, 1u), vec2<bool>(false, true), -902f, 23376u))), Struct_4(1u, 443f, Struct_2(false, vec2<bool>(false, true), Struct_1(vec3<u32>(0u, 0u, 60444u), vec4<u32>(1u, 1u, 4294967295u, 29122u), vec2<bool>(true, true), 1219f, 41445u), Struct_1(vec3<u32>(0u, 1u, 0u), vec4<u32>(1u, 2165u, 4294967295u, 1u), vec2<bool>(false, false), -575f, 4294967295u))), Struct_4(10557u, 1256f, Struct_2(true, vec2<bool>(true, false), Struct_1(vec3<u32>(1u, 0u, 43203u), vec4<u32>(0u, 0u, 1u, 2549u), vec2<bool>(true, false), -376f, 42227u), Struct_1(vec3<u32>(4294967295u, 114473u, 21442u), vec4<u32>(242u, 9260u, 1u, 9995u), vec2<bool>(false, false), -503f, 76310u))), Struct_4(25051u, 570f, Struct_2(false, vec2<bool>(false, true), Struct_1(vec3<u32>(18348u, 56815u, 4294967295u), vec4<u32>(4241u, 1u, 24393u, 36647u), vec2<bool>(true, true), -1320f, 16076u), Struct_1(vec3<u32>(1u, 76983u, 4294967295u), vec4<u32>(67785u, 96872u, 1u, 2876u), vec2<bool>(true, true), -292f, 25936u))), Struct_4(22009u, 946f, Struct_2(true, vec2<bool>(true, true), Struct_1(vec3<u32>(4294967295u, 45596u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec2<bool>(true, false), -921f, 4294967295u), Struct_1(vec3<u32>(1u, 0u, 14130u), vec4<u32>(1u, 28123u, 1u, 1u), vec2<bool>(true, true), -119f, 32816u))), Struct_4(1u, -1000f, Struct_2(false, vec2<bool>(true, true), Struct_1(vec3<u32>(4294967295u, 60625u, 1u), vec4<u32>(5014u, 0u, 0u, 0u), vec2<bool>(true, true), -1067f, 1u), Struct_1(vec3<u32>(27351u, 0u, 35527u), vec4<u32>(4294967295u, 0u, 9067u, 23132u), vec2<bool>(false, false), -758f, 81414u))));

var<private> global4: Struct_4 = Struct_4(36055u, -1000f, Struct_2(false, vec2<bool>(true, true), Struct_1(vec3<u32>(1u, 45865u, 31560u), vec4<u32>(4294967295u, 25693u, 49077u, 4294967295u), vec2<bool>(true, true), 819f, 17812u), Struct_1(vec3<u32>(47682u, 56432u, 55710u), vec4<u32>(8999u, 1u, 83140u, 34456u), vec2<bool>(false, true), 752f, 4294967295u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    global4 = global3[_wgslsmith_index_u32(4294967295u, 19u)];
    global2 = array<vec2<f32>, 6>();
    global0 = Struct_3(global0.b, global0.b, global0.b.c.d, 1079f);
    global2 = array<vec2<f32>, 6>();
    global2 = array<vec2<f32>, 6>();
    return global4.c;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    global2 = array<vec2<f32>, 6>();
    let var_0 = global3[_wgslsmith_index_u32(1u, 19u)];
    var var_1 = func_2(~79713u);
    return global0.b.d;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_5) -> Struct_1 {
    global1 = arg_3.b | false;
    global0 = Struct_3(global4.c, arg_3.a.a, -887f, global4.b);
    global2 = array<vec2<f32>, 6>();
    global4 = global3[_wgslsmith_index_u32((~(1u ^ (arg_3.e.x >> (0u % 32u))) | 0u) & countOneBits(arg_3.e.x), 19u)];
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2242f + arg_2.d), 1393f, true)), global4.b, -525f, 1125f);
    return Struct_1(~arg_2.b.yyx, global0.b.d.b, vec2<bool>(!(!arg_2.c.x | true), false), _wgslsmith_f_op_f32(sign(arg_3.c)), global0.b.c.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: f32) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(1u, 19u)];
    let var_1 = vec2<i32>(46574i >> ((0u ^ _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, 143473u, 28092u), arg_0.b.c.b.yxz), countOneBits(var_0.c.c.b.wwy))) % 32u), -29312i);
    let var_2 = func_2((15935u & select(arg_0.b.d.e, global0.b.d.a.x ^ 1u, arg_0.a.d.c.x)) & ~func_2(global4.a).d.a.x);
    global2 = array<vec2<f32>, 6>();
    return Struct_2(func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(355f, -750f) + vec2<f32>(-928f, arg_0.b.c.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global2[_wgslsmith_index_u32(60632u, 6u)]))))), vec4<i32>(46291i, u_input.e.x, ~var_1.x, reverseBits(_wgslsmith_add_i32(u_input.a.x, var_1.x))), var_2.d, Struct_5(Struct_3(var_2, var_2, _wgslsmith_div_f32(var_2.d.d, -2079f), _wgslsmith_f_op_f32(269f + global4.b)), !var_2.c.c.x, _wgslsmith_f_op_f32(-821f * _wgslsmith_f_op_f32(-arg_0.a.d.d)), firstTrailingBit(_wgslsmith_sub_i32(-16466i, 1i)), firstLeadingBit(vec3<u32>(486u, global0.b.d.a.x, 1u)))).c.x, var_2.d.c, var_2.d, Struct_1(vec3<u32>(var_2.c.a.x, ~(~arg_1.x), ~(var_0.a ^ 4294967295u)), vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(33956u, 102488u)), 4294967295u, global4.a, 25957u), vec2<bool>(!func_1(true, vec4<u32>(28761u, global0.b.c.b.x, 1u, 7210u)).c.x, !global0.a.d.c.x), 1161f, 30960u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!(~(-u_input.d) < u_input.d));
    var var_0 = func_4(Struct_3(Struct_2(false, vec2<bool>(global0.a.b.x || global4.c.d.c.x, false), func_3(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(u_input.b.x, 6u)] - global2[_wgslsmith_index_u32(global4.c.c.a.x, 6u)]), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 0i, -77961i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.d, u_input.e.x, 0i)), func_1(true, global0.a.d.b), Struct_5(Struct_3(Struct_2(global0.a.c.c.x, vec2<bool>(true, true), global4.c.c, Struct_1(vec3<u32>(16213u, 33406u, u_input.b.x), vec4<u32>(59646u, 20173u, 0u, u_input.b.x), global0.b.b, 1000f, 58313u)), global0.a, -1082f, -1354f), global0.a.a, -463f, u_input.a.x, vec3<u32>(global0.b.c.a.x, u_input.b.x, 0u))), func_2(0u).c), global4.c, 788f, global0.a.c.d), ~_wgslsmith_div_vec2_u32(~global4.c.c.b.zy, ~_wgslsmith_div_vec2_u32(vec2<u32>(global4.c.d.e, global4.a), vec2<u32>(4294967295u, 4294967295u))), global0.d);
    global0 = Struct_3(func_2(u_input.c), func_2(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -235f))), _wgslsmith_f_op_f32(ceil(global0.c)));
    let var_1 = var_0.d.c.x;
    let var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, 1u), 19u)];
    var var_3 = Struct_4(global0.a.d.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1201f)))), func_2(reverseBits(global0.a.c.e)));
    let x = u_input.a;
    s_output = StorageBuffer(global4.a, var_0.d.b);
}

