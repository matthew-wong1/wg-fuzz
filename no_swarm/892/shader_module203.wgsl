struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(false, false, vec2<f32>(883f, 697f), Struct_1(vec4<i32>(1i, 5867i, 1i, 24654i), 418f, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec4<bool>(true, true, false, true))), Struct_4(true, false, vec2<f32>(1000f, 694f), Struct_1(vec4<i32>(50131i, 4385i, 1i, 13614i), 252f, vec2<u32>(62957u, 0u), vec3<i32>(-11456i, 35681i, 1i), vec4<bool>(false, false, false, false))), Struct_4(true, false, vec2<f32>(188f, 562f), Struct_1(vec4<i32>(-8438i, 2147483647i, 2147483647i, i32(-2147483648)), -1090f, vec2<u32>(4294967295u, 54325u), vec3<i32>(0i, -1i, 9603i), vec4<bool>(false, false, false, false))), Struct_4(false, true, vec2<f32>(-1056f, -1031f), Struct_1(vec4<i32>(27322i, i32(-2147483648), -5821i, -1410i), -833f, vec2<u32>(1u, 1u), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec4<bool>(false, false, true, true))), Struct_4(false, true, vec2<f32>(-721f, -390f), Struct_1(vec4<i32>(55541i, 44652i, -34976i, 1i), -903f, vec2<u32>(0u, 83513u), vec3<i32>(-1727i, -1i, 60142i), vec4<bool>(false, true, false, true))), Struct_4(false, true, vec2<f32>(-1521f, 593f), Struct_1(vec4<i32>(27325i, -7359i, 1i, 2147483647i), 1021f, vec2<u32>(9830u, 126656u), vec3<i32>(0i, -1i, 2147483647i), vec4<bool>(false, false, true, true))), Struct_4(false, true, vec2<f32>(1424f, -172f), Struct_1(vec4<i32>(4418i, 25869i, -48978i, 6620i), 981f, vec2<u32>(25723u, 22131u), vec3<i32>(-1i, 12475i, -1i), vec4<bool>(true, false, true, false))), Struct_4(true, false, vec2<f32>(1000f, -284f), Struct_1(vec4<i32>(2147483647i, 0i, 1i, i32(-2147483648)), 406f, vec2<u32>(0u, 1u), vec3<i32>(6922i, -32449i, 31455i), vec4<bool>(false, false, true, false))), Struct_4(false, false, vec2<f32>(-558f, -597f), Struct_1(vec4<i32>(2147483647i, 0i, 3004i, 2147483647i), 989f, vec2<u32>(1u, 0u), vec3<i32>(-1i, -22532i, i32(-2147483648)), vec4<bool>(true, false, false, true))), Struct_4(false, false, vec2<f32>(-741f, 136f), Struct_1(vec4<i32>(15380i, 0i, 1i, -8892i), -130f, vec2<u32>(17186u, 4294967295u), vec3<i32>(i32(-2147483648), 1i, -1i), vec4<bool>(true, true, false, false))), Struct_4(true, false, vec2<f32>(286f, 294f), Struct_1(vec4<i32>(38741i, 52324i, -28687i, 0i), -1000f, vec2<u32>(29131u, 0u), vec3<i32>(45672i, i32(-2147483648), 0i), vec4<bool>(true, true, true, true))), Struct_4(false, false, vec2<f32>(-1895f, -664f), Struct_1(vec4<i32>(-20793i, 21464i, 2147483647i, 2147483647i), 800f, vec2<u32>(0u, 0u), vec3<i32>(-25704i, i32(-2147483648), -1i), vec4<bool>(true, true, true, true))), Struct_4(false, false, vec2<f32>(1000f, -1165f), Struct_1(vec4<i32>(2147483647i, -7893i, i32(-2147483648), -22676i), -1949f, vec2<u32>(36150u, 4294967295u), vec3<i32>(i32(-2147483648), -1i, 62180i), vec4<bool>(true, false, true, true))), Struct_4(false, false, vec2<f32>(-658f, -1008f), Struct_1(vec4<i32>(1i, 1081i, -68778i, -1i), -1628f, vec2<u32>(75710u, 3852u), vec3<i32>(2147483647i, 2147483647i, -48216i), vec4<bool>(true, true, false, false))), Struct_4(false, true, vec2<f32>(-245f, -170f), Struct_1(vec4<i32>(0i, 1i, -64495i, -34333i), 1206f, vec2<u32>(0u, 74833u), vec3<i32>(i32(-2147483648), -262i, -3201i), vec4<bool>(false, true, true, true))), Struct_4(false, true, vec2<f32>(334f, 419f), Struct_1(vec4<i32>(i32(-2147483648), 19784i, -9221i, 41801i), -1034f, vec2<u32>(11672u, 12882u), vec3<i32>(2147483647i, 1i, -1i), vec4<bool>(true, true, false, false))), Struct_4(true, false, vec2<f32>(1551f, -1292f), Struct_1(vec4<i32>(2147483647i, -573i, 41617i, i32(-2147483648)), -455f, vec2<u32>(4294967295u, 0u), vec3<i32>(82411i, i32(-2147483648), 0i), vec4<bool>(true, true, false, true))), Struct_4(true, false, vec2<f32>(655f, 445f), Struct_1(vec4<i32>(13005i, -1i, 8955i, 26681i), 1417f, vec2<u32>(0u, 0u), vec3<i32>(493i, 46661i, 0i), vec4<bool>(true, true, true, false))));

var<private> global1: array<vec2<u32>, 16>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec4<f32>) -> u32 {
    global0 = array<Struct_4, 18>();
    var var_0 = arg_2.x;
    global1 = array<vec2<u32>, 16>();
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(1f - arg_2.x);
    return abs(7452u);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    var var_0 = Struct_3(Struct_2(abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.b.d.c.x, 4294967295u, 1u), vec3<u32>(u_input.c, 4294967295u, arg_0.a))), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -892f), 47785u), all(vec2<bool>(false, arg_0.b.a)), arg_1.b.d.b, Struct_2(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a, 80808u, arg_1.b.d.c.x), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.d, arg_1.b.d.c.x, 4294967295u), vec3<u32>(arg_0.b.d.c.x, arg_0.b.d.c.x, arg_0.b.d.c.x))), Struct_1(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.x, arg_1.c, arg_2.d.x, 2147483647i), arg_0.b.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(143f + arg_1.b.c.x)), global1[_wgslsmith_index_u32(func_3(!arg_1.b.d.e, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, arg_0.a), vec3<u32>(u_input.c, 4294967295u, arg_2.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, -1548f, -888f, arg_2.b) - vec4<f32>(574f, arg_0.b.d.b, 798f, arg_2.b))), 16u)], firstTrailingBit(abs(vec3<i32>(arg_1.c, -1i, 2147483647i))), !(!vec4<bool>(arg_1.b.d.e.x, arg_1.b.d.e.x, arg_2.e.x, arg_2.e.x))), arg_2.b, ~(~arg_2.c.x)));
    var var_1 = all(!arg_1.b.d.e.xyx);
    var var_2 = _wgslsmith_mult_vec3_i32(~vec3<i32>(0i, _wgslsmith_add_i32(-25161i, arg_3.x), max(arg_3.x, i32(-1i) * -2147483647i)), countOneBits(arg_2.a.yxy));
    var_2 = arg_2.d;
    var var_3 = Struct_2(vec3<u32>(~u_input.c, _wgslsmith_add_u32(1u, min(arg_2.c.x, ~arg_1.b.d.c.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_2.c.x, 41989u, arg_1.a), vec4<u32>(arg_0.b.d.c.x, ~1u, _wgslsmith_div_u32(1u, arg_2.c.x), _wgslsmith_clamp_u32(4294967295u, arg_1.d, arg_0.a)))), Struct_1(arg_2.a, _wgslsmith_f_op_f32(1016f - _wgslsmith_div_f32(arg_0.b.c.x, _wgslsmith_div_f32(arg_1.b.d.b, arg_1.b.d.b))), var_0.a.a.yy, select(var_0.a.b.a.yyy, abs(vec3<i32>(0i, 1i, -1i)), select(vec3<bool>(arg_0.b.d.e.x, true, true), vec3<bool>(true, true, true), arg_1.b.d.e.x)) & vec3<i32>(i32(-1i) * -17025i, ~(-1i), ~u_input.b.x), arg_2.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.c)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f) * -967f))), min(arg_0.a | arg_1.b.d.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_1.d, 69322u, ~4294967295u, 32926u), ~vec4<u32>(var_0.d.d, u_input.a.x, 81288u, 94577u) | vec4<u32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, 0u))));
    return abs(~firstLeadingBit(~(~1869u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> Struct_2 {
    global0 = array<Struct_4, 18>();
    var var_0 = Struct_5(func_4(Struct_5(1u << (countOneBits(u_input.c) % 32u), Struct_4(false, true, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 385f) - vec2<f32>(arg_1, -830f)), Struct_1(vec4<i32>(23242i, u_input.b.x, -2778i, 43910i), -176f, arg_0, vec3<i32>(4398i, -2147483647i, -2147483647i), vec4<bool>(false, false, true, true))), -14573i, abs(func_3(vec4<bool>(true, true, false, false), vec3<u32>(4294967295u, 21242u, arg_0.x), vec4<f32>(arg_1, arg_1, arg_1, arg_1)))), Struct_5(abs(arg_0.x) >> (~arg_0.x % 32u), global0[_wgslsmith_index_u32(~1u, 18u)], 1i, 68901u), Struct_1(vec4<i32>(u_input.b.x, 2147483647i, -u_input.b.x, 0i >> (1u % 32u)), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(arg_1 + 1000f)), (vec2<u32>(1u, 45880u) >> (global1[_wgslsmith_index_u32(4294967295u, 16u)] % vec2<u32>(32u))) ^ ~vec2<u32>(arg_0.x, 18439u), abs(max(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(-21246i, 1i, u_input.b.x))), vec4<bool>(true, true, true, true)), vec2<i32>(2147483647i, ~(i32(-1i) * -14040i))), global0[_wgslsmith_index_u32(~u_input.c, 18u)], _wgslsmith_mod_i32(8060i, -2147483647i), 18945u);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1505f - 1052f), -416f) + var_0.b.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1922f, arg_1)))), var_0.b.d.b, _wgslsmith_f_op_f32(ceil(var_0.b.c.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.c.x, _wgslsmith_div_f32(2226f, 307f), _wgslsmith_f_op_f32(-var_0.b.d.b), _wgslsmith_f_op_f32(step(1684f, arg_1))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-753f, arg_1, 547f, 1127f)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.c.x, -445f, arg_1, arg_1), vec4<f32>(arg_1, var_0.b.c.x, -386f, var_0.b.d.b))))));
    var var_2 = min(var_0.c, max(3758i, reverseBits(1i)));
    global1 = array<vec2<u32>, 16>();
    return Struct_2(~vec3<u32>(1u, ~4294967295u, ~u_input.a.x), var_0.b.d, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(trunc(var_1.x))), arg_0.x);
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<i32>) -> i32 {
    var var_0 = Struct_3(Struct_2(~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.d.c.x, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, arg_1.d.c.x)), vec3<u32>(1u, 4294967295u, 1u)), Struct_1(-vec4<i32>(2147483647i, arg_3.x, -3664i, -1i), _wgslsmith_f_op_f32(-289f - -1000f), vec2<u32>(4294967295u, 1u), _wgslsmith_div_vec3_i32(vec3<i32>(-251i, -2147483647i, arg_0), -vec3<i32>(arg_3.x, -1i, arg_3.x)), select(arg_1.d.e, arg_2.d.e, !arg_2.d.e)), _wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(arg_1.d.c.x, arg_1.d.c.x), 54798u)), true, _wgslsmith_f_op_f32(396f + arg_2.d.b), func_2(~countOneBits(max(global1[_wgslsmith_index_u32(1u, 16u)], u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.d.b))))));
    var_0 = Struct_3(Struct_2(reverseBits(~vec3<u32>(u_input.c, arg_2.d.c.x, 4294967295u)), Struct_1(-vec4<i32>(var_0.a.b.a.x, var_0.d.b.a.x, arg_1.d.a.x, -2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1344f), ~arg_2.d.c, select(-arg_2.d.a.wwy, select(var_0.a.b.a.zyw, vec3<i32>(-1i, arg_0, arg_0), vec3<bool>(true, false, false)), vec3<bool>(true, var_0.a.b.e.x, true)), !vec4<bool>(var_0.a.b.e.x, true, false, false)), _wgslsmith_f_op_f32(-1376f * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.d.b.b, arg_1.d.b), _wgslsmith_f_op_f32(floor(668f))))), 0u), all(func_2(countOneBits(~vec2<u32>(0u, arg_1.d.c.x)), arg_1.d.b).b.e.wz), _wgslsmith_div_f32(arg_1.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_2.d.b)), _wgslsmith_div_f32(-2355f, arg_1.d.b))))), Struct_2(vec3<u32>(~(~17558u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.c.x, u_input.a.x, arg_2.d.c.x, arg_2.d.c.x) & vec4<u32>(var_0.a.d, u_input.c, 4294967295u, 84685u), ~vec4<u32>(u_input.a.x, 1u, 26670u, 1u)), ~_wgslsmith_mult_u32(u_input.c, 62256u)), func_2(arg_1.d.c, _wgslsmith_f_op_f32(min(579f, arg_1.c.x))).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.d.b)) * arg_1.d.b), _wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_2.d.c.x, 16909u), vec2<u32>(arg_2.d.c.x, 10467u)), var_0.a.b.c)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.c);
    var_0 = Struct_3(var_0.d, _wgslsmith_add_u32(arg_1.d.c.x, u_input.c) > 19605u, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1623f, var_0.d.c)))))), func_2(~global1[_wgslsmith_index_u32(func_3(!vec4<bool>(true, var_0.b, arg_2.a, arg_1.d.e.x), _wgslsmith_sub_vec3_u32(var_0.a.a, vec3<u32>(u_input.c, arg_1.d.c.x, arg_2.d.c.x)), vec4<f32>(-444f, arg_2.c.x, var_0.a.c, 574f)), 16u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-386f, -328f) - _wgslsmith_f_op_f32(-var_1.x)), arg_2.d.b)));
    var_0 = Struct_3(func_2(func_2(global1[_wgslsmith_index_u32(select(~22532u, ~17967u, all(arg_1.d.e.zy)), 16u)], arg_2.c.x).a.yz, -882f), false, _wgslsmith_f_op_f32(trunc(arg_1.c.x)), func_2(vec2<u32>(0u >> ((var_0.a.b.c.x ^ 101764u) % 32u), 20979u), _wgslsmith_f_op_f32(-1f)));
    return i32(-1i) * -arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1309f, 494f, 852f, -116f) - vec4<f32>(770f, -1000f, 1983f, 107f)), vec4<f32>(1528f, -1000f, -649f, 1188f))) - vec4<f32>(_wgslsmith_f_op_f32(199f + 1076f), _wgslsmith_div_f32(863f, -1000f), -340f, _wgslsmith_f_op_f32(select(-861f, -100f, true)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(638f, 819f, 1000f, -322f), vec4<f32>(426f, 408f, 193f, 1193f))))))));
    global0 = array<Struct_4, 18>();
    global1 = array<vec2<u32>, 16>();
    var var_1 = Struct_1(_wgslsmith_mod_vec4_i32(max(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), ~vec4<i32>(u_input.b.x, 2147483647i, 0i, u_input.b.x), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x)), vec4<i32>(abs(u_input.b.x), _wgslsmith_sub_i32(-1i, u_input.b.x), func_1(u_input.b.x, Struct_4(false, true, var_0.yx, Struct_1(vec4<i32>(-7912i, u_input.b.x, u_input.b.x, 75849i), var_0.x, u_input.a, vec3<i32>(57253i, 1i, 6469i), vec4<bool>(true, false, false, false))), Struct_4(true, false, vec2<f32>(var_0.x, var_0.x), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -18411i, 47347i), var_0.x, vec2<u32>(0u, u_input.c), vec3<i32>(u_input.b.x, 52009i, u_input.b.x), vec4<bool>(false, true, false, true))), vec4<i32>(13262i, 13843i, 1i, 51641i)), u_input.b.x)), _wgslsmith_clamp_vec4_i32(abs(~vec4<i32>(u_input.b.x, u_input.b.x, 0i, 2147483647i)), vec4<i32>(1i << (u_input.a.x % 32u), u_input.b.x, ~2147483647i, u_input.b.x), func_2(vec2<u32>(u_input.a.x, 0u) ^ global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 1551f).b.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1516f, var_0.x) - var_0.x)), _wgslsmith_f_op_f32(1000f - var_0.x), true)), vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), abs(~firstLeadingBit(u_input.a.x))), vec3<i32>(39122i, 16963i, max(_wgslsmith_mod_i32(-1i, u_input.b.x), -u_input.b.x)) >> (~vec3<u32>(u_input.a.x, ~u_input.a.x, ~u_input.c) % vec3<u32>(32u)), !select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, func_2(vec2<u32>(u_input.c, 4765u), var_0.x).b.e.x)));
    global0 = array<Struct_4, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b))), vec4<u32>(var_1.c.x << (var_1.c.x % 32u), 1u, ~0u, countOneBits(_wgslsmith_mult_u32(1476u, u_input.a.x)) ^ ~_wgslsmith_mult_u32(u_input.c, 45424u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1566f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(-879f + _wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_1.e.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1.b, var_1.b) + var_0.zzy) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-320f, var_1.b, 743f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(234f, var_1.b, var_1.e.x)), 245f, _wgslsmith_f_op_f32(431f * -1000f)))));
}

