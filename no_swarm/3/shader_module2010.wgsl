struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(-1000f, 247f, -1017f, 2082f, -1116f, 1000f, 1041f, -643f, 571f, -1293f, 436f, 439f, -1639f, 825f, -644f, -1130f, -1000f, -873f, 233f, -1247f, -1313f, -618f, 1895f, 1742f, -629f, 835f);

var<private> global1: array<u32, 15> = array<u32, 15>(31796u, 0u, 32367u, 0u, 0u, 19282u, 1u, 1u, 34640u, 34806u, 21022u, 79386u, 4294967295u, 1u, 4294967295u);

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(false, 2147483647i, 1131f, vec4<i32>(-63773i, 3098i, 1947i, -1i), false), Struct_1(false, i32(-2147483648), -139f, vec4<i32>(49128i, 31039i, -48417i, 1i), false), Struct_1(false, 8738i, -235f, vec4<i32>(-1i, -7643i, i32(-2147483648), 39257i), false), Struct_1(true, -1i, 1000f, vec4<i32>(16695i, -1i, 2197i, 2147483647i), false), Struct_1(true, 0i, -228f, vec4<i32>(6067i, 10369i, 1i, 0i), false), Struct_1(true, -14926i, 428f, vec4<i32>(18322i, 2147483647i, -467i, 1i), false));

var<private> global3: bool;

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(false, -70669i, 383f, vec4<i32>(8031i, -20850i, -47220i, 25484i), false), Struct_1(true, 2147483647i, -227f, vec4<i32>(2147483647i, -1i, 26834i, 43243i), false), Struct_1(false, -1i, 612f, vec4<i32>(65701i, -1i, -2583i, -1i), false), Struct_1(true, i32(-2147483648), 1682f, vec4<i32>(-5448i, 2147483647i, -16055i, -45316i), true), Struct_1(false, 0i, 577f, vec4<i32>(i32(-2147483648), i32(-2147483648), -26731i, 1i), false), Struct_1(true, -25795i, -300f, vec4<i32>(-1i, -10998i, 13245i, 2147483647i), true), Struct_1(false, i32(-2147483648), 2831f, vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 2147483647i), true), Struct_1(true, -21065i, 327f, vec4<i32>(2147483647i, 27586i, i32(-2147483648), -1i), true), Struct_1(true, 10170i, 521f, vec4<i32>(-17631i, -1i, 1i, -39290i), false), Struct_1(false, -73854i, 204f, vec4<i32>(-1i, 1i, -12301i, -42056i), true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: Struct_2) -> Struct_1 {
    global4 = array<Struct_1, 10>();
    var var_0 = (u_input.b | -23877i) ^ 57642i;
    let var_1 = arg_2;
    let var_2 = var_1;
    var var_3 = -322f;
    return arg_2.b;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(167f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) + _wgslsmith_f_op_f32(round(141f)))) + 482f)));
    global3 = arg_2.a;
    global2 = array<Struct_1, 6>();
    let var_1 = ~arg_2.b;
    global0 = array<f32, 26>();
    return Struct_1((abs(_wgslsmith_mod_u32(u_input.a.x, 47069u)) | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(25926u, 15u)] ^ firstLeadingBit(96813u), 15u)], 15u)]) <= ~0u, max(arg_0.b, var_1), _wgslsmith_f_op_f32(973f + 1000f), select(vec4<i32>(-40610i, arg_1.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-10246i, var_1, arg_0.d.d.x), func_2(vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)], 0u), vec3<f32>(arg_2.c, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 26u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 26u)]), Struct_4(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], Struct_1(arg_1.d.e, var_1, 1163f, vec4<i32>(arg_1.d.d.x, -15121i, 4633i, 0i), arg_0.d.a), 341f, arg_2.c, Struct_2(arg_0.c.e, 79639u, false)), Struct_2(true, 13530u, arg_0.c.a)).d.yzw), arg_2.d.x), _wgslsmith_div_vec4_i32(firstTrailingBit(-vec4<i32>(var_1, arg_0.c.b, var_1, var_1)), _wgslsmith_mod_vec4_i32(arg_1.c.d, arg_0.d.d)), arg_0.c.a), any(select(!vec4<bool>(false, arg_2.a, arg_1.d.a, true), vec4<bool>(false, arg_0.c.e, false == arg_2.e, arg_1.c.a | false), arg_1.c.a)));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = vec3<bool>(false, -54945i != max(-1i, u_input.b), arg_3.c.e);
    global3 = _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 1u) < 85853u;
    global0 = array<f32, 26>();
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(62042u, 26u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c.c + arg_2.c) * _wgslsmith_f_op_f32(arg_1.c - 693f)) * arg_3.d.c), 508f, -791f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-502f * arg_1.c), _wgslsmith_f_op_f32(select(func_3(Struct_3(vec2<i32>(arg_2.d.x, -69635i), -14268i, Struct_1(arg_3.d.a, 0i, global0[_wgslsmith_index_u32(arg_1.e.b, 26u)], vec4<i32>(-11763i, -2147483647i, -20332i, arg_0), arg_2.e), Struct_1(arg_1.e.a, arg_0, global0[_wgslsmith_index_u32(18720u, 26u)], arg_2.d, true), 121f), arg_3, arg_2).c, _wgslsmith_f_op_f32(abs(arg_2.c)), false)), arg_3.e, -1986f)));
    var var_2 = Struct_3(_wgslsmith_sub_vec2_i32(abs(arg_1.b.d.zw & max(arg_1.b.d.wx, vec2<i32>(-11118i, -1i))), arg_2.d.xw), ~(~1i | min(0i, arg_3.c.b)), func_2(~_wgslsmith_mult_vec4_u32(vec4<u32>(20660u, u_input.a.x, 93682u, u_input.a.x), firstTrailingBit(vec4<u32>(u_input.a.x, 29428u, u_input.a.x, arg_1.a))), var_1.yxx, arg_1, arg_1.e), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(67495u, _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_1.e.b, u_input.a.x, u_input.a.x, 58885u), vec4<u32>(arg_1.a, ~arg_1.e.b, ~u_input.a.x, countOneBits(61851u))), arg_1.e.b), 6u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.c - var_1.x))));
    return ~4294967295u;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<bool>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(1u | (func_4(-1i, Struct_4(1u, func_2(vec4<u32>(0u, 0u, global1[_wgslsmith_index_u32(75203u, 15u)], global1[_wgslsmith_index_u32(30026u, 15u)]), vec3<f32>(466f, global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]), Struct_4(arg_0, Struct_1(arg_1.x, u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], vec4<i32>(2147483647i, 21604i, u_input.b, 0i), arg_2.x), global0[_wgslsmith_index_u32(arg_0, 26u)], global0[_wgslsmith_index_u32(arg_0, 26u)], Struct_2(true, 4294967295u, false)), Struct_2(false, global1[_wgslsmith_index_u32(1u, 15u)], arg_2.x)), global0[_wgslsmith_index_u32(arg_0, 26u)], global0[_wgslsmith_index_u32(arg_0 & 51071u, 26u)], Struct_2(arg_1.x, u_input.a.x, true)), func_3(Struct_3(vec2<i32>(-5768i, u_input.b), u_input.b, global4[_wgslsmith_index_u32(8241u, 10u)], Struct_1(false, 61533i, 1265f, vec4<i32>(-4014i, -2147483647i, -16763i, u_input.b), true), -704f), Struct_3(vec2<i32>(-1i, -22019i), u_input.b, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 6u)], global4[_wgslsmith_index_u32(1u, 10u)], 114f), func_2(vec4<u32>(83183u, global1[_wgslsmith_index_u32(50168u, 15u)], global1[_wgslsmith_index_u32(48337u, 15u)], 4294967295u), vec3<f32>(2865f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 26u)], -1000f), Struct_4(u_input.a.x, Struct_1(false, 1181i, global0[_wgslsmith_index_u32(arg_0, 26u)], vec4<i32>(u_input.b, 1i, u_input.b, -26512i), false), global0[_wgslsmith_index_u32(u_input.a.x, 26u)], -449f, Struct_2(false, 51907u, arg_1.x)), Struct_2(arg_2.x, 0u, true))), Struct_3(vec2<i32>(u_input.b, -2147483647i), u_input.b, func_3(Struct_3(vec2<i32>(u_input.b, -44627i), -4148i, Struct_1(arg_2.x, -1i, 1000f, vec4<i32>(-18727i, 44540i, u_input.b, 0i), true), Struct_1(true, -1i, global0[_wgslsmith_index_u32(26319u, 26u)], vec4<i32>(-3555i, 0i, 2147483647i, u_input.b), true), global0[_wgslsmith_index_u32(102129u, 26u)]), Struct_3(vec2<i32>(u_input.b, -2147483647i), u_input.b, Struct_1(true, -1i, 667f, vec4<i32>(-1i, -39828i, u_input.b, -53983i), arg_1.x), global2[_wgslsmith_index_u32(90332u, 6u)], 2911f), global2[_wgslsmith_index_u32(u_input.a.x, 6u)]), func_2(vec4<u32>(0u, 48501u, 60968u, arg_0), vec3<f32>(204f, -512f, global0[_wgslsmith_index_u32(841u, 26u)]), Struct_4(63982u, Struct_1(arg_2.x, u_input.b, 328f, vec4<i32>(u_input.b, -28603i, -1i, 0i), arg_1.x), global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(arg_0, 26u)], Struct_2(false, global1[_wgslsmith_index_u32(18280u, 15u)], true)), Struct_2(true, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], arg_1.x)), 1467f)) >> (~1u % 32u)), 26u)];
    let var_1 = firstTrailingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(~31951i, _wgslsmith_mod_i32(u_input.b, u_input.b), _wgslsmith_sub_i32(u_input.b, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-41476i, 7735i, -13166i, 2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), vec4<i32>(reverseBits(0i), -2147483647i, _wgslsmith_div_i32(u_input.b, u_input.b), -14379i)));
    global3 = func_3(Struct_3(vec2<i32>(-1i, -var_1), -2147483647i, func_2(select(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], u_input.a.x, 1u, 0u), vec4<u32>(arg_0, 88613u, 1u, 0u), vec4<bool>(arg_2.x, arg_1.x, true, arg_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0[_wgslsmith_index_u32(0u, 26u)], -548f)), Struct_4(arg_0, Struct_1(false, u_input.b, -669f, vec4<i32>(var_1, var_1, var_1, -16398i), arg_1.x), 534f, 889f, Struct_2(false, 0u, arg_2.x)), Struct_2(arg_1.x, arg_0, arg_2.x)), global2[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_f_op_f32(f32(-1f) * -814f)), Struct_3(-(vec2<i32>(-15642i, u_input.b) | vec2<i32>(30513i, -2147483647i)), -1i ^ u_input.b, Struct_1(false, ~2147483647i, _wgslsmith_f_op_f32(min(-1369f, global0[_wgslsmith_index_u32(0u, 26u)])), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -1i, -44229i, 42181i), vec4<i32>(u_input.b, -1i, -31191i, 0i)), arg_1.x), global4[_wgslsmith_index_u32(~1u, 10u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(149f * global0[_wgslsmith_index_u32(21802u, 26u)])))), global4[_wgslsmith_index_u32(~23009u, 10u)]).d.x > -u_input.b;
    var var_2 = vec2<f32>(global0[_wgslsmith_index_u32(~4294967295u, 26u)], _wgslsmith_f_op_f32(abs(-668f)));
    let var_3 = _wgslsmith_sub_u32(arg_0, ~u_input.a.x);
    return ~(~55021u);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: bool) -> u32 {
    var var_0 = ~4294967295u ^ u_input.a.x;
    global1 = array<u32, 15>();
    let var_1 = Struct_1(func_3(Struct_3(vec2<i32>(u_input.b, -31941i) & (vec2<i32>(u_input.b, u_input.b) | vec2<i32>(u_input.b, 2147483647i)), 33046i, Struct_1(-1i <= u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, -6163i), vec4<i32>(u_input.b, 0i, -33536i, -47358i)), _wgslsmith_f_op_f32(-arg_0), vec4<i32>(u_input.b, -22234i, -25485i, u_input.b), arg_2 && arg_2), func_3(Struct_3(vec2<i32>(u_input.b, 2147483647i), -1i, Struct_1(arg_2, 1i, -989f, vec4<i32>(0i, 0i, u_input.b, -2147483647i), arg_2), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 6u)], -329f), Struct_3(vec2<i32>(-27935i, 43425i), u_input.b, global2[_wgslsmith_index_u32(arg_1, 6u)], Struct_1(false, u_input.b, arg_0, vec4<i32>(5371i, 2147483647i, -2147483647i, u_input.b), arg_2), arg_0), Struct_1(false, 1i, 325f, vec4<i32>(-49999i, -28024i, u_input.b, u_input.b), false)), -1000f), Struct_3(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, u_input.b)), ~(-77080i) ^ ~u_input.b, func_3(Struct_3(vec2<i32>(u_input.b, u_input.b), 14737i, Struct_1(true, u_input.b, arg_0, vec4<i32>(-1i, 0i, -592i, -2147483647i), true), Struct_1(arg_2, u_input.b, -1000f, vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b), arg_2), global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), Struct_3(vec2<i32>(2147483647i, u_input.b), u_input.b, global4[_wgslsmith_index_u32(35440u, 10u)], Struct_1(false, -2147483647i, global0[_wgslsmith_index_u32(1u, 26u)], vec4<i32>(u_input.b, 1i, u_input.b, -1i), true), 1642f), Struct_1(false, u_input.b, 1172f, vec4<i32>(u_input.b, 26464i, 9645i, u_input.b), true)), Struct_1(!arg_2, _wgslsmith_mult_i32(u_input.b, -6118i), _wgslsmith_f_op_f32(arg_0 + arg_0), abs(vec4<i32>(u_input.b, -46149i, -18724i, 123665i)), arg_2 && arg_2), _wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.a.x, arg_1, 56237u, 0u), vec3<f32>(1000f, -230f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), Struct_4(45549u, Struct_1(true, 18141i, 686f, vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), true), arg_0, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], Struct_2(arg_2, 26494u, false)), Struct_2(arg_2, u_input.a.x, arg_2)).c + arg_0)), Struct_1(arg_2, abs(u_input.b) << (~2841u % 32u), func_2(vec4<u32>(36990u, 29452u, 4294967295u, global1[_wgslsmith_index_u32(1u, 15u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(6638u, 26u)], 1021f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8977u, 15u)], 26u)])), Struct_4(51074u, Struct_1(false, 2147483647i, arg_0, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), arg_2), global0[_wgslsmith_index_u32(arg_1, 26u)], arg_0, Struct_2(arg_2, 4294967295u, arg_2)), Struct_2(arg_2, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50725u, 15u)], 15u)], false)).c, vec4<i32>(-1i) * -vec4<i32>(u_input.b, 1i, u_input.b, u_input.b), !arg_2)).a, u_input.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(arg_0, 1502f, arg_2)))))), ~abs(vec4<i32>(u_input.b, func_2(vec4<u32>(4863u, 1u, arg_1, u_input.a.x), vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 26u)], 1081f, arg_0), Struct_4(arg_1, Struct_1(arg_2, u_input.b, -1099f, vec4<i32>(u_input.b, u_input.b, u_input.b, 48562i), arg_2), arg_0, global0[_wgslsmith_index_u32(0u, 26u)], Struct_2(true, 1780u, true)), Struct_2(arg_2, 29967u, true)).d.x, firstLeadingBit(-2147483647i), 45810i)), arg_2);
    let var_2 = Struct_4(_wgslsmith_div_u32(~(~u_input.a.x), ~25568u), func_3(Struct_3(func_2(~vec4<u32>(arg_1, arg_1, u_input.a.x, 4294967295u), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 26u)], -736f, var_1.c))), Struct_4(1u, Struct_1(arg_2, var_1.b, var_1.c, vec4<i32>(-1i, 2147483647i, -2147483647i, 17311i), var_1.a), global0[_wgslsmith_index_u32(72427u, 26u)], var_1.c, Struct_2(var_1.a, 4294967295u, true)), Struct_2(false, 0u, var_1.e)).d.xw, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, -731i), var_1.d.yx) ^ ~(-1i), global4[_wgslsmith_index_u32(~1u, 10u)], Struct_1(true, _wgslsmith_mult_i32(u_input.b, var_1.b), arg_0, ~var_1.d, arg_2), 665f), Struct_3(firstLeadingBit(func_2(vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), vec3<f32>(442f, var_1.c, -1254f), Struct_4(1u, var_1, 682f, -741f, Struct_2(false, 0u, var_1.e)), Struct_2(var_1.e, 1u, true)).d.xz), abs(min(2147483647i, var_1.b)), Struct_1(!var_1.a, var_1.d.x, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], vec4<i32>(u_input.b, 11112i, var_1.b, 2147483647i), false), Struct_1(738f > global0[_wgslsmith_index_u32(1104u, 26u)], -2147483647i | var_1.b, 1546f, var_1.d, !var_1.a), _wgslsmith_f_op_f32(step(var_1.c, _wgslsmith_f_op_f32(select(-878f, arg_0, arg_2))))), Struct_1(true, -7410i, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_div_f32(256f, arg_0), any(vec2<bool>(var_1.a, true)))), _wgslsmith_clamp_vec4_i32(var_1.d, var_1.d, vec4<i32>(var_1.b, var_1.b, -6846i, 0i)), !(false || arg_2))), _wgslsmith_f_op_f32(1000f - var_1.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1115f, global0[_wgslsmith_index_u32(0u, 26u)])))), -1688f)), Struct_2(false, min(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x)), func_3(Struct_3(_wgslsmith_sub_vec2_i32(var_1.d.yz, vec2<i32>(var_1.b, -15852i)), var_1.d.x, var_1, var_1, _wgslsmith_f_op_f32(-arg_0)), Struct_3(vec2<i32>(-35266i, -1i), 37504i, global2[_wgslsmith_index_u32(u_input.a.x, 6u)], Struct_1(false, -1i, arg_0, vec4<i32>(-3136i, u_input.b, u_input.b, 34981i), false), _wgslsmith_f_op_f32(arg_0 * arg_0)), global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~18296u, 15u)], 10u)]).a));
    var var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.d.xxw, vec3<i32>(var_2.b.d.x, var_1.b, 37946i)), -min(var_2.b.d.zzz, vec3<i32>(-51579i, firstTrailingBit(-9162i), i32(-1i) * -41304i)));
    return _wgslsmith_dot_vec2_u32(~max(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a, var_2.a), ~vec2<u32>(u_input.a.x, arg_1)), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a.x, var_2.a))), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.e.b | 0u, func_1(global1[_wgslsmith_index_u32(1u, 15u)], vec3<bool>(var_2.e.c, var_2.e.a, var_1.e), vec3<bool>(true, arg_2, var_2.b.e))) & vec2<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(arg_1, 15u)]), arg_1), abs(~vec2<u32>(global1[_wgslsmith_index_u32(var_2.a, 15u)], 4294967295u) << (u_input.a.yz % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2((-u_input.b >> (~u_input.a.x % 32u)) == -firstLeadingBit(reverseBits(25426i)), _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_mod_u32(~19743u, ~69002u), firstTrailingBit(select(u_input.a.x, 4294967295u, true)), ~_wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(1u, 15u)])), abs(~(~vec4<u32>(16678u, 0u, 127893u, u_input.a.x)))), false);
    var var_1 = global4[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 0u), 15u)], ~u_input.a.x), 15u)], 15u)], 26u)])), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, global1[_wgslsmith_index_u32(func_1(countOneBits(38402u), select(vec3<bool>(false, var_0.c, true), vec3<bool>(false, true, var_0.a), vec3<bool>(true, true, var_0.c)), vec3<bool>(true, false, var_0.c)), 15u)]), 15u)], var_0.c), 10u)];
    let var_2 = Struct_3(var_1.d.xy, -8715i, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b, 15u)], 10u)], global4[_wgslsmith_index_u32(34083u, 10u)], -484f);
    let var_3 = vec2<i32>(var_1.b, select(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_1.d.wyy, vec3<i32>(1i, -15941i, var_1.b)), ~(-2147483647i)), var_2.c.d.x), abs(_wgslsmith_dot_vec4_i32(var_1.d << (vec4<u32>(5219u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], var_0.b, 27653u) % vec4<u32>(32u)), var_1.d)), true));
    var var_4 = Struct_1(true, -2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -595f), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, 64741i), var_1.d.xx), reverseBits(i32(-1i) * -1i)), -8070i, ~_wgslsmith_sub_i32(firstTrailingBit(0i), 1i), -53948i), !(!select(true, var_2.c.c > var_1.c, any(vec2<bool>(true, var_2.d.a)))));
    var_4 = global4[_wgslsmith_index_u32(u_input.a.x, 10u)];
    var var_5 = abs(~vec2<u32>(~max(45981u, global1[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(0u, 15u)], _wgslsmith_div_u32(u_input.a.x, 13935u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-185f, -1000f) + vec2<f32>(-1001f, global0[_wgslsmith_index_u32(0u, 26u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.c, var_2.d.c)), !vec2<bool>(false, var_0.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c, var_1.c), vec2<f32>(var_1.c, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b, 15u)], 26u)]), true)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-676f, var_2.e) - vec2<f32>(var_2.e, 352f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1311f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c - -913f), _wgslsmith_f_op_f32(-var_2.c.c)))), var_4.c, var_4.c, func_3(var_2, var_2, Struct_1(!(38376u >= u_input.a.x), (-15361i & var_3.x) >> (func_4(var_2.b, Struct_4(5829u, Struct_1(var_2.c.a, 2147483647i, -542f, vec4<i32>(-2147483647i, -1976i, 1i, var_2.b), var_0.c), -820f, 207f, var_0), global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35593u, 15u)], 10u)], Struct_3(var_3, var_2.c.d.x, global2[_wgslsmith_index_u32(1u, 6u)], global4[_wgslsmith_index_u32(1u, 10u)], -1163f)) % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.c)), -1000f), vec4<i32>(_wgslsmith_sub_i32(2147483647i, var_1.d.x), i32(-1i) * -2147483647i, var_3.x | 1i, 2147483647i), true)).d.x);
}

