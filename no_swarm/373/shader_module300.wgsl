struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(-979f, -593f, 1752f), vec3<f32>(429f, -1857f, 118f), vec3<f32>(737f, 626f, -765f), vec3<f32>(1831f, 1412f, -191f), vec3<f32>(-1000f, -188f, 266f), vec3<f32>(480f, 561f, 1076f), vec3<f32>(-2120f, 1181f, 1323f), vec3<f32>(413f, -2089f, 593f), vec3<f32>(-2252f, -848f, 1000f), vec3<f32>(-1850f, 523f, 597f), vec3<f32>(-1175f, 2323f, 574f), vec3<f32>(-1331f, -1461f, -311f), vec3<f32>(-1815f, 673f, -329f), vec3<f32>(-400f, -544f, 1000f), vec3<f32>(-913f, 441f, -611f), vec3<f32>(1293f, 1052f, -1369f), vec3<f32>(-1519f, 1436f, -990f), vec3<f32>(-935f, -1786f, 1737f), vec3<f32>(-786f, -1297f, -169f), vec3<f32>(968f, 1587f, 1545f), vec3<f32>(273f, 1752f, -2584f), vec3<f32>(2260f, 149f, -433f));

var<private> global1: array<Struct_1, 11>;

var<private> global2: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec2<u32>(15485u, 1u), vec3<u32>(1u, 1u, 4294967295u), Struct_2(659u, false, true), vec2<i32>(32032i, 8163i), Struct_2(1u, true, true)), Struct_3(vec2<u32>(4294967295u, 118315u), vec3<u32>(92860u, 0u, 0u), Struct_2(95126u, true, true), vec2<i32>(34499i, 1i), Struct_2(30025u, true, false)), Struct_3(vec2<u32>(16282u, 83660u), vec3<u32>(63054u, 1u, 0u), Struct_2(65887u, true, true), vec2<i32>(-5840i, 0i), Struct_2(45868u, false, false)), Struct_3(vec2<u32>(9574u, 64208u), vec3<u32>(43867u, 1u, 0u), Struct_2(0u, true, true), vec2<i32>(-4982i, 2147483647i), Struct_2(4294967295u, false, true)), Struct_3(vec2<u32>(59886u, 73956u), vec3<u32>(52590u, 94081u, 32595u), Struct_2(1u, true, true), vec2<i32>(i32(-2147483648), -20023i), Struct_2(4294967295u, false, true)), Struct_3(vec2<u32>(3257u, 0u), vec3<u32>(1u, 1u, 39033u), Struct_2(0u, true, false), vec2<i32>(2147483647i, i32(-2147483648)), Struct_2(1u, false, true)), Struct_3(vec2<u32>(2338u, 25335u), vec3<u32>(1u, 18165u, 36909u), Struct_2(4294967295u, false, false), vec2<i32>(2147483647i, 1i), Struct_2(24680u, true, true)), Struct_3(vec2<u32>(4294967295u, 13607u), vec3<u32>(1u, 5668u, 4112u), Struct_2(59863u, false, true), vec2<i32>(-1i, 0i), Struct_2(4294967295u, false, true)), Struct_3(vec2<u32>(0u, 0u), vec3<u32>(3790u, 62965u, 0u), Struct_2(0u, false, false), vec2<i32>(-10179i, -1i), Struct_2(1u, true, false)), Struct_3(vec2<u32>(1u, 4294967295u), vec3<u32>(1u, 25366u, 0u), Struct_2(4294967295u, false, false), vec2<i32>(-1i, 1i), Struct_2(58380u, false, true)), Struct_3(vec2<u32>(0u, 4294967295u), vec3<u32>(2241u, 41568u, 0u), Struct_2(1u, true, false), vec2<i32>(i32(-2147483648), -1i), Struct_2(4294967295u, false, false)), Struct_3(vec2<u32>(24966u, 4294967295u), vec3<u32>(1u, 62425u, 99585u), Struct_2(22341u, false, true), vec2<i32>(1i, 1i), Struct_2(1u, true, false)), Struct_3(vec2<u32>(15493u, 12505u), vec3<u32>(22675u, 13368u, 4294967295u), Struct_2(1u, false, true), vec2<i32>(12647i, 22486i), Struct_2(10927u, false, true)), Struct_3(vec2<u32>(102226u, 4294967295u), vec3<u32>(21230u, 94137u, 0u), Struct_2(9939u, true, false), vec2<i32>(-1i, 37263i), Struct_2(46504u, false, false)), Struct_3(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(1u, 1u, 13588u), Struct_2(1u, true, true), vec2<i32>(11259i, 1i), Struct_2(0u, true, false)), Struct_3(vec2<u32>(34574u, 1u), vec3<u32>(1u, 0u, 38229u), Struct_2(4294967295u, true, true), vec2<i32>(-1i, 59648i), Struct_2(25771u, false, false)), Struct_3(vec2<u32>(0u, 1u), vec3<u32>(13138u, 0u, 43727u), Struct_2(4294967295u, false, false), vec2<i32>(-33088i, -32171i), Struct_2(4294967295u, false, true)), Struct_3(vec2<u32>(11961u, 78860u), vec3<u32>(1u, 36124u, 4294967295u), Struct_2(38833u, false, true), vec2<i32>(-28161i, 30003i), Struct_2(0u, true, true)), Struct_3(vec2<u32>(0u, 0u), vec3<u32>(0u, 51984u, 61524u), Struct_2(17070u, true, false), vec2<i32>(-1i, 1i), Struct_2(0u, true, true)), Struct_3(vec2<u32>(4735u, 0u), vec3<u32>(4294967295u, 15929u, 2730u), Struct_2(47845u, true, false), vec2<i32>(0i, 62740i), Struct_2(14088u, true, true)), Struct_3(vec2<u32>(0u, 1u), vec3<u32>(0u, 1u, 32544u), Struct_2(0u, true, false), vec2<i32>(15945i, 69158i), Struct_2(4294967295u, false, false)), Struct_3(vec2<u32>(41053u, 25255u), vec3<u32>(1u, 1u, 1u), Struct_2(0u, false, true), vec2<i32>(-949i, 11492i), Struct_2(32908u, true, true)), Struct_3(vec2<u32>(1u, 65580u), vec3<u32>(38317u, 26670u, 0u), Struct_2(1u, false, true), vec2<i32>(0i, 0i), Struct_2(87859u, false, false)), Struct_3(vec2<u32>(12757u, 6004u), vec3<u32>(7773u, 4294967295u, 11302u), Struct_2(0u, false, false), vec2<i32>(2147483647i, -28174i), Struct_2(25703u, false, false)), Struct_3(vec2<u32>(0u, 26034u), vec3<u32>(19371u, 51806u, 0u), Struct_2(0u, true, false), vec2<i32>(i32(-2147483648), 0i), Struct_2(74711u, false, true)), Struct_3(vec2<u32>(15097u, 1u), vec3<u32>(1u, 920u, 85783u), Struct_2(0u, true, false), vec2<i32>(i32(-2147483648), 1i), Struct_2(4294967295u, true, false)));

var<private> global3: array<f32, 29>;

var<private> global4: array<Struct_3, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec2<bool>, arg_3: i32) -> u32 {
    global3 = array<f32, 29>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstTrailingBit(~_wgslsmith_mod_u32(arg_0, u_input.b.x)), (~max(arg_0, 76369u) ^ _wgslsmith_div_u32(~27395u, u_input.c | u_input.b.x)) >> (~9569u % 32u)), 11u)];
    let var_1 = Struct_2(0u, var_0.b.x, true);
    let var_2 = select(_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(-1i) * -u_input.d), _wgslsmith_sub_vec2_i32(-min(u_input.a & vec2<i32>(0i, arg_3), u_input.a), vec2<i32>(~(~u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, u_input.a.x, arg_3), vec3<i32>(0i, -2147483647i, 12537i)))), !(!any(vec2<bool>(var_0.b.x, false))));
    global4 = array<Struct_3, 26>();
    return 12884u;
}

fn func_2() -> vec4<u32> {
    global3 = array<f32, 29>();
    global3 = array<f32, 29>();
    let var_0 = global0[_wgslsmith_index_u32(16275u, 22u)];
    return _wgslsmith_add_vec4_u32(vec4<u32>(select(_wgslsmith_mult_u32(1u, u_input.b.x), _wgslsmith_add_u32(u_input.c, 85773u), true), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4844u, 0u), u_input.b), func_3(u_input.c, global3[_wgslsmith_index_u32(u_input.b.x, 29u)], vec2<bool>(true, false), u_input.a.x) & _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(816u, u_input.c, 0u)), ~select(u_input.c, 52516u, true)) & vec4<u32>(~(1u & u_input.b.x), u_input.c, abs(~u_input.b.x), abs(u_input.b.x) >> (~43309u % 32u)), ~vec4<u32>(7854u, _wgslsmith_add_u32(25852u, ~u_input.b.x), 4294967295u, u_input.c));
}

fn func_1(arg_0: u32, arg_1: f32) -> vec2<i32> {
    global2 = array<Struct_3, 26>();
    var var_0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(~(~12841u), _wgslsmith_dot_vec4_u32(func_2(), ~vec4<u32>(u_input.c, 0u, 0u, 33769u))), u_input.b.x);
    global1 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_dot_vec3_i32(firstTrailingBit(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.d.x, 11618i) >> (vec3<u32>(6567u, 1u, 4294967295u) % vec3<u32>(32u)), reverseBits(vec3<i32>(-51925i, u_input.e, u_input.a.x))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, firstTrailingBit(firstLeadingBit(413i)), ~(-1352i)), vec3<i32>(i32(-1i) * -40239i, 0i, max(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.d.x, 2147483647i), vec4<i32>(2147483647i, u_input.d.x, 85553i, -10124i)), _wgslsmith_dot_vec2_i32(u_input.d, u_input.d))), vec3<i32>(1i, 1i, 1i)));
    var var_2 = Struct_5(true, -42022i);
    return -(u_input.a ^ u_input.a);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_5 {
    let var_0 = -143f;
    return Struct_5(true, _wgslsmith_add_i32(-(~(-25724i)), reverseBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_3.x, arg_3.x, -2147483647i, u_input.e), vec4<i32>(39537i, arg_3.x, arg_0.a, u_input.a.x) & vec4<i32>(0i, -1i, -77892i, 1i)))));
}

fn func_5(arg_0: Struct_5, arg_1: vec2<i32>) -> Struct_4 {
    let var_0 = all(vec2<bool>(any(!vec2<bool>(false, arg_0.a)), arg_0.a)) & ((~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.d.x, arg_0.b), vec3<i32>(65965i, -1i, arg_0.b)) & arg_1.x) < (arg_1.x | -(~1i)));
    let var_1 = _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(0u | ~u_input.c, 29u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c, 29u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b.x, 29u)] - -744f), global3[_wgslsmith_index_u32(~31960u, 29u)]))))));
    var var_2 = vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(81819u), ((u_input.c | 4294967295u) << (0u % 32u)) >> (~(u_input.b.x << (0u % 32u)) % 32u)), countOneBits(~(~u_input.b.x)), _wgslsmith_mod_u32(countOneBits(func_2().x), u_input.b.x), min(~firstLeadingBit(_wgslsmith_add_u32(1u, 40016u)), abs(max(u_input.b.x, 20872u) & reverseBits(4294967295u))));
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(max(min(0i, arg_1.x), u_input.d.x) | -(~arg_1.x), ~(-1i), u_input.e), ~(-min(~vec3<i32>(arg_1.x, arg_0.b, arg_0.b), -vec3<i32>(1i, arg_1.x, arg_1.x))));
    var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(1i, _wgslsmith_sub_i32(u_input.a.x, 1i), -14383i), -countOneBits(vec3<i32>(arg_0.b, -59555i, -2817i)), vec3<bool>(true, any(vec4<bool>(false, true, arg_0.a, arg_0.a)), !var_0)), vec3<i32>(var_3.x, -_wgslsmith_mult_i32(u_input.e, -1i), func_1(u_input.b.x, global3[_wgslsmith_index_u32(87713u, 29u)]).x & u_input.d.x)), vec3<i32>(_wgslsmith_add_i32(arg_1.x, -countOneBits(var_3.x)), arg_1.x, abs(-1i)));
    return Struct_4(var_3.x, !select(select(!vec3<bool>(arg_0.a, arg_0.a, var_0), vec3<bool>(false, true, arg_0.a), vec3<bool>(arg_0.a, true, var_0)), select(!vec3<bool>(var_0, arg_0.a, var_0), !vec3<bool>(var_0, false, arg_0.a), true), !arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>(true, _wgslsmith_f_op_f32(1000f + 1194f) >= _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 29u)])));
    var var_1 = func_5(func_4(Struct_4(_wgslsmith_dot_vec2_i32(func_1(1u, global3[_wgslsmith_index_u32(17262u, 29u)]), vec2<i32>(0i, u_input.d.x)), !(!vec3<bool>(var_0.x, var_0.x, var_0.x))), vec3<u32>(16236u, u_input.c, ~u_input.c), Struct_2(func_3(1u, _wgslsmith_f_op_f32(2046f - 1015f), var_0, ~18784i), select(!var_0.x, 4294967295u != u_input.c, any(vec3<bool>(var_0.x, var_0.x, var_0.x))), !(!var_0.x)), max(_wgslsmith_add_vec3_i32(vec3<i32>(25824i, 0i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, u_input.a.x) >> (vec3<u32>(27399u, 48u, u_input.b.x) % vec3<u32>(32u))), reverseBits(-vec3<i32>(u_input.e, -2147483647i, -27964i)))), max(func_1(~_wgslsmith_clamp_u32(u_input.b.x, u_input.c, u_input.c), global3[_wgslsmith_index_u32(~firstLeadingBit(u_input.b.x), 29u)]), vec2<i32>(u_input.d.x, firstLeadingBit(u_input.d.x))));
    var var_2 = _wgslsmith_div_f32(-987f, _wgslsmith_f_op_f32(f32(-1f) * -1832f));
    global0 = array<vec3<f32>, 22>();
    global1 = array<Struct_1, 11>();
    let var_3 = func_4(func_5(func_4(func_5(func_4(Struct_4(46623i, var_1.b), u_input.b, Struct_2(54212u, var_1.b.x, false), vec3<i32>(u_input.a.x, -23634i, u_input.e)), _wgslsmith_add_vec2_i32(u_input.d, vec2<i32>(2147483647i, -1i))), ~u_input.b, Struct_2(min(u_input.c, u_input.c), u_input.a.x != var_1.a, !var_0.x), vec3<i32>(u_input.a.x, _wgslsmith_div_i32(-23699i, 47147i), 5911i)), abs(_wgslsmith_div_vec2_i32(u_input.d, u_input.d))), ~(~firstLeadingBit(u_input.b)), Struct_2(~u_input.c, true, !all(vec4<bool>(var_0.x, var_0.x, true, var_0.x))), max(vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.d.x, var_1.a, u_input.a.x)), abs(vec3<i32>(1i, u_input.d.x, 14191i))), -10396i, 9023i), (select(vec3<i32>(u_input.e, 39175i, u_input.d.x), vec3<i32>(7439i, -22842i, 1i), var_1.b.x) & ~vec3<i32>(5927i, 8724i, u_input.a.x)) >> (firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))));
    let var_4 = Struct_3(vec2<u32>(u_input.b.x, 34922u), select(vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 1u), ~4294967295u), vec3<u32>(0u, ~63608u, 23350u), false) << (func_2().zyx % vec3<u32>(32u)), Struct_2(32786u, var_0.x, true), reverseBits(~(select(u_input.a, u_input.a, false) >> (~vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)))), Struct_2(u_input.c, u_input.b.x == 60437u, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.x, -466f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-323f - global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13498u, 72901u, 0u, var_4.e.a), vec4<u32>(1u, u_input.c, 0u, u_input.b.x)), 29u)]))), -(~firstLeadingBit(-vec4<i32>(u_input.a.x, 51051i, -1i, var_1.a))));
}

