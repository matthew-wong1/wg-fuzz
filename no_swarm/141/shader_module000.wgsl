struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<f32>(-2022f, 744f, 2108f, -1465f), 1i, false), Struct_1(vec4<f32>(698f, 1248f, 232f, 2985f), i32(-2147483648), false), Struct_1(vec4<f32>(-396f, 2262f, 1000f, 394f), -37134i, false), Struct_1(vec4<f32>(-320f, 464f, 1779f, 1177f), -1i, true), Struct_1(vec4<f32>(-1691f, 739f, -296f, -1573f), 15796i, false), Struct_1(vec4<f32>(-441f, 249f, 1000f, 1753f), 2147483647i, false), Struct_1(vec4<f32>(-782f, 1600f, -945f, 1912f), -48433i, true), Struct_1(vec4<f32>(-1087f, -2006f, 1662f, -1000f), 1i, true), Struct_1(vec4<f32>(-664f, 340f, -453f, 952f), i32(-2147483648), false), Struct_1(vec4<f32>(1161f, -1000f, -313f, -1031f), -37994i, true), Struct_1(vec4<f32>(650f, -668f, 509f, 494f), -1i, false), Struct_1(vec4<f32>(-476f, 227f, -446f, 1008f), -75910i, false), Struct_1(vec4<f32>(-188f, -724f, -346f, -1416f), -22786i, false), Struct_1(vec4<f32>(-1795f, 106f, -1089f, -673f), 41660i, false), Struct_1(vec4<f32>(792f, -374f, -862f, 156f), 4835i, false), Struct_1(vec4<f32>(-248f, 1331f, -1609f, -441f), -4029i, true), Struct_1(vec4<f32>(449f, 456f, -295f, -1133f), -281i, true), Struct_1(vec4<f32>(1063f, -1607f, 1951f, -1958f), 17211i, true));

var<private> global1: i32 = -23414i;

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(Struct_1(vec4<f32>(573f, 1099f, -447f, 623f), 26768i, true), 864f, vec3<u32>(22277u, 1u, 20122u)), Struct_4(Struct_1(vec4<f32>(1253f, 1741f, -1000f, -305f), -22029i, false), -632f, vec3<u32>(1u, 0u, 3975u)), Struct_4(Struct_1(vec4<f32>(1471f, -214f, -1706f, -1462f), i32(-2147483648), true), -1186f, vec3<u32>(4294967295u, 21907u, 0u)), Struct_4(Struct_1(vec4<f32>(1252f, -365f, 2302f, -1024f), 10021i, false), 884f, vec3<u32>(92152u, 12865u, 55988u)), Struct_4(Struct_1(vec4<f32>(116f, 558f, -1000f, -278f), 7561i, false), -337f, vec3<u32>(9580u, 0u, 64131u)), Struct_4(Struct_1(vec4<f32>(522f, -1044f, 363f, -114f), -77802i, true), 1000f, vec3<u32>(20246u, 38732u, 43889u)), Struct_4(Struct_1(vec4<f32>(-225f, 450f, -483f, 249f), 39555i, true), 747f, vec3<u32>(1u, 1u, 72825u)), Struct_4(Struct_1(vec4<f32>(149f, -1607f, 370f, 1068f), 61330i, true), -875f, vec3<u32>(39845u, 1u, 4294967295u)), Struct_4(Struct_1(vec4<f32>(-2110f, 1029f, 1771f, 625f), i32(-2147483648), false), -720f, vec3<u32>(1u, 26557u, 0u)), Struct_4(Struct_1(vec4<f32>(489f, 102f, 265f, -396f), 1i, false), -1038f, vec3<u32>(4294967295u, 12547u, 1u)), Struct_4(Struct_1(vec4<f32>(-752f, -1721f, 346f, 195f), -49497i, false), -317f, vec3<u32>(4294967295u, 63337u, 1u)), Struct_4(Struct_1(vec4<f32>(-189f, 1744f, 1026f, -1000f), -15677i, false), 1610f, vec3<u32>(21556u, 6613u, 18779u)), Struct_4(Struct_1(vec4<f32>(390f, 299f, 1217f, 942f), 17381i, false), 496f, vec3<u32>(0u, 1u, 15498u)), Struct_4(Struct_1(vec4<f32>(-754f, -184f, -349f, -822f), 1i, false), 1433f, vec3<u32>(4294967295u, 0u, 18472u)), Struct_4(Struct_1(vec4<f32>(1445f, -1329f, 1217f, 1488f), 0i, false), 154f, vec3<u32>(4294967295u, 1u, 0u)), Struct_4(Struct_1(vec4<f32>(-215f, -711f, -1606f, -550f), -31159i, false), -986f, vec3<u32>(26497u, 4294967295u, 13194u)), Struct_4(Struct_1(vec4<f32>(-724f, -286f, 199f, -1056f), 16294i, true), 891f, vec3<u32>(37740u, 0u, 71030u)));

var<private> global3: array<u32, 6>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>) -> bool {
    var var_0 = arg_1;
    global2 = array<Struct_4, 17>();
    let var_1 = Struct_3(!(!select(select(vec4<bool>(true, arg_0.a.c, false, true), vec4<bool>(arg_0.a.c, arg_0.a.c, false, false), false), !vec4<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.c, true), all(vec3<bool>(arg_0.a.c, true, false)))));
    global3 = array<u32, 6>();
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(arg_0.a.a, _wgslsmith_div_vec4_f32(arg_0.a.a, arg_0.a.a)), arg_0.a.b, true);
    return var_1.a.x;
}

fn func_2(arg_0: vec4<f32>) -> vec2<u32> {
    global0 = array<Struct_1, 18>();
    var var_0 = Struct_5(func_3(Struct_4(Struct_1(arg_0, _wgslsmith_sub_i32(u_input.b, 19787i), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 2929f)), ~(~vec3<u32>(u_input.a, global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(6620u, 6u)]))), firstLeadingBit(vec2<i32>(u_input.b, -38321i))), _wgslsmith_f_op_f32(select(-200f, _wgslsmith_f_op_f32(ceil(arg_0.x)), any(vec2<bool>(true, true)))));
    let var_1 = Struct_3(vec4<bool>(!(_wgslsmith_f_op_f32(-arg_0.x) <= -322f), var_0.a, !(!var_0.a | true), any(vec2<bool>(true, true)) != select(var_0.a, true, true)));
    global1 = 1i;
    var_0 = Struct_5(func_3(Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0), -1i ^ u_input.b, -808f <= arg_0.x), var_0.b, ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(1u, 6u)], u_input.a), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], u_input.a, global3[_wgslsmith_index_u32(15902u, 6u)]))), abs(firstLeadingBit(max(vec2<i32>(-1i, 1i), vec2<i32>(-2147483647i, u_input.b))))), arg_0.x);
    return vec2<u32>(_wgslsmith_div_u32(~(global3[_wgslsmith_index_u32(4294967295u, 6u)] << (~8028u % 32u)), u_input.a), _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(52071u, global3[_wgslsmith_index_u32(20204u, 6u)], 25668u, 15083u), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a)), vec4<u32>(1u, global3[_wgslsmith_index_u32(u_input.a, 6u)], global3[_wgslsmith_index_u32(27887u, 6u)], 81918u) ^ vec4<u32>(u_input.a, 4294967295u, u_input.a, 43146u)), 6u)], ~(~(1837u & u_input.a))));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_5 {
    global1 = 1i;
    global2 = array<Struct_4, 17>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.a.x, arg_2.b.a.x)) * arg_2.b.a.xx))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) - vec2<f32>(381f, -313f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.a.x, 859f) * var_0))));
    let var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(select(~(vec4<i32>(arg_2.b.b, 2147483647i, u_input.b, -17176i) ^ vec4<i32>(u_input.b, 1i, -2718i, 8340i)), vec4<i32>(-35201i, _wgslsmith_dot_vec2_i32(arg_2.c.wy, vec2<i32>(2147483647i, arg_2.c.x)), ~u_input.b, abs(0i)), !vec4<bool>(true, arg_0, true, arg_2.b.c)), _wgslsmith_mod_vec4_i32(-arg_2.c, vec4<i32>(_wgslsmith_dot_vec3_i32(arg_2.c.ywy, vec3<i32>(u_input.b, arg_2.b.b, 0i)), _wgslsmith_add_i32(arg_2.b.b, 5907i), ~u_input.b, min(u_input.b, 2147483647i)))), -min(arg_2.c, abs(arg_2.c & vec4<i32>(arg_2.c.x, u_input.b, arg_2.b.b, arg_2.b.b))));
    return Struct_5(true, 1180f);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4) -> Struct_4 {
    var var_0 = global2[_wgslsmith_index_u32(~(abs(~1u) << (_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(23136u, global3[_wgslsmith_index_u32(32624u, 6u)]), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(0u, 6u)], 6u)]), arg_1.c.x) % 32u)), 17u)];
    global1 = arg_1.a.b;
    return Struct_4(global0[_wgslsmith_index_u32(~(~1u), 18u)], 317f, select(~firstTrailingBit(var_0.c) ^ vec3<u32>(89352u, ~23337u, abs(1u)), vec3<u32>(_wgslsmith_clamp_u32(1u, var_0.c.x, 5961u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 4294967295u, 25170u, 7715u), vec4<u32>(u_input.a, var_0.c.x, 1u, 127673u)), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(22625u >> (u_input.a % 32u), 6u)], _wgslsmith_mult_u32(var_0.c.x, u_input.a))), true));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = func_5(func_4(all(vec3<bool>(true, true, true)) | arg_1.x, _wgslsmith_mod_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(41873u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 6u)], 6u)]), 6u)], countOneBits(46315u)), min(func_2(vec4<f32>(-751f, arg_2.x, arg_2.x, arg_2.x)), vec2<u32>(u_input.a, u_input.a))), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(3664u, u_input.a), 18u)], Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -949f, arg_2.x, arg_2.x) - vec4<f32>(arg_2.x, 1710f, arg_2.x, -271f)), 42362i, true), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -8193i, arg_0, u_input.b), vec4<i32>(-1i, arg_0, 78543i, u_input.b), vec4<i32>(2147483647i, 24149i, arg_0, arg_0)), vec4<i32>(arg_0, -5681i, 33652i, u_input.b)))), global2[_wgslsmith_index_u32(u_input.a, 17u)]);
    var var_1 = !(!(!vec4<bool>(true, !arg_3.x, var_0.a.c, any(arg_1))));
    var var_2 = ~(~(~(~u_input.a)) & 1u);
    var_2 = ~1u;
    var var_3 = select(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(0i, arg_0, var_0.a.b), vec3<i32>(91453i, 38656i, u_input.b) ^ -vec3<i32>(-10219i, -9421i, -91799i), vec3<i32>(firstTrailingBit(arg_0), u_input.b, 1i)), select(-vec3<i32>(arg_0, -15277i, arg_0) << (var_0.c % vec3<u32>(32u)), vec3<i32>(~arg_0, -u_input.b, var_0.a.b), var_1.yzz)), -vec3<i32>(6266i, u_input.b, var_0.a.b), vec3<bool>(func_3(Struct_4(Struct_1(var_0.a.a, arg_0, var_1.x), -1219f, var_0.c), _wgslsmith_mult_vec2_i32(vec2<i32>(4508i, arg_0), vec2<i32>(arg_0, var_0.a.b) & vec2<i32>(u_input.b, var_0.a.b))), abs(global3[_wgslsmith_index_u32(u_input.a, 6u)] | global3[_wgslsmith_index_u32(var_0.c.x, 6u)]) != _wgslsmith_add_u32(firstTrailingBit(global3[_wgslsmith_index_u32(0u, 6u)]), ~83563u), var_1.x));
    return Struct_1(var_0.a.a, _wgslsmith_dot_vec2_i32(var_3.xy, vec2<i32>(_wgslsmith_sub_i32(35678i | u_input.b, countOneBits(arg_0)), u_input.b >> (80613u % 32u))), false);
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> bool {
    let var_0 = ~firstTrailingBit(~vec2<u32>(~58663u, 4294967295u));
    var var_1 = arg_0.c;
    let var_2 = Struct_2(func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-26668i, arg_0.b, _wgslsmith_mult_i32(arg_0.b, u_input.b)), abs(vec3<i32>(-20872i, arg_0.b, u_input.b))), select(select(vec2<bool>(arg_0.c, arg_0.c), select(vec2<bool>(false, false), vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.c, true)), vec2<bool>(true, arg_0.c)), vec2<bool>(false, arg_0.c), arg_0.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_5(Struct_5(arg_0.c, -218f), global2[_wgslsmith_index_u32(u_input.a, 17u)]).a.a.x, -670f)), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0.c, arg_0.c), vec3<bool>(false, false, arg_0.c)))), func_1(u_input.b << (u_input.a % 32u), select(vec2<bool>(true, arg_0.c), vec2<bool>(true, true), arg_0.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), func_4(false, var_0, Struct_2(arg_0, Struct_1(vec4<f32>(-641f, 452f, 436f, arg_0.a.x), -2147483647i, true), vec4<i32>(arg_1, arg_0.b, u_input.b, u_input.b))).b)), vec3<bool>(!select(arg_0.c, arg_0.c, arg_0.c), arg_0.c, arg_0.c)), vec4<i32>(-7724i, abs(~1i), arg_0.b & (_wgslsmith_div_i32(1i, arg_0.b) >> (1u % 32u)), -1i & arg_1));
    var var_3 = _wgslsmith_add_vec4_u32(max(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(1u, 92051u, 0u, u_input.a)) >> (~vec4<u32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(u_input.a, 6u)], global3[_wgslsmith_index_u32(u_input.a, 6u)]) % vec4<u32>(32u)), ~select(vec4<u32>(u_input.a, 8126u, 61376u, u_input.a), vec4<u32>(55366u, 3743u, global3[_wgslsmith_index_u32(u_input.a, 6u)], u_input.a), arg_0.c), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.x, 20640u, 32750u), vec4<u32>(38428u, global3[_wgslsmith_index_u32(1u, 6u)], 67212u, global3[_wgslsmith_index_u32(var_0.x, 6u)])), ~vec4<u32>(32058u, 16387u, 38052u, 20916u), abs(vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], u_input.a, global3[_wgslsmith_index_u32(u_input.a, 6u)])))), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(var_0.x, u_input.a, var_0.x, var_0.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(103445u, global3[_wgslsmith_index_u32(var_0.x, 6u)], var_0.x), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~global3[_wgslsmith_index_u32(var_0.x, 6u)], u_input.a ^ 28206u, ~1u))), ~vec4<u32>(1u, reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14394u, 6u)], 6u)] & var_0.x), 4294967295u, global3[_wgslsmith_index_u32(~u_input.a, 6u)]));
    var var_4 = arg_0.c;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(231f, -888f, -426f, 2980f) - vec4<f32>(-645f, 832f, -769f, -231f)), vec4<f32>(-754f, -228f, -796f, 752f)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(413f - -941f), _wgslsmith_div_f32(-700f, -1424f), 1757f, -1251f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-399f, 201f, 2534f, 1739f) * vec4<f32>(968f, -614f, 1206f, 1621f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-577f, 375f, 1114f, 873f))))))), -38682i, !any(vec4<bool>(true, true, true, true)) && func_6(func_1(min(u_input.b, 1i), vec2<bool>(false, true), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1547f, 1380f))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), ~u_input.b));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(216f, var_0.a.x, 678f, -724f), var_0.a)))) - vec4<f32>(754f, var_0.a.x, _wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1228f - 1065f)))), u_input.b, true);
    var var_2 = _wgslsmith_mult_vec3_u32(func_5(Struct_5(!any(vec3<bool>(var_1.c, var_0.c, var_1.c)), var_1.a.x), Struct_4(Struct_1(func_1(-4777i, vec2<bool>(true, var_1.c), vec2<f32>(var_0.a.x, -978f), vec3<bool>(false, var_1.c, var_0.c)).a, var_1.b, true), -429f, ~(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 6u)], 6u)], 4294967295u, 13784u) >> (vec3<u32>(1u, 33133u, u_input.a) % vec3<u32>(32u))))).c, ~(~(~vec3<u32>(42189u, global3[_wgslsmith_index_u32(u_input.a, 6u)], 6110u))) ^ ~vec3<u32>(~31117u, u_input.a >> (56929u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 6u)], 0u, global3[_wgslsmith_index_u32(u_input.a, 6u)], 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 6u)], 25453u, 4294967295u, u_input.a))));
    let var_3 = Struct_3(select(!select(select(vec4<bool>(false, var_1.c, true, var_0.c), vec4<bool>(var_0.c, true, var_0.c, var_0.c), false), vec4<bool>(var_1.c, var_0.c, var_0.c, var_1.c), var_0.c), vec4<bool>(false, func_3(func_5(Struct_5(true, 338f), global2[_wgslsmith_index_u32(39592u, 17u)]), vec2<i32>(var_0.b, -58094i)), _wgslsmith_f_op_f32(-var_1.a.x) != _wgslsmith_f_op_f32(round(var_1.a.x)), var_0.c), !(!vec4<bool>(var_1.c, var_0.c, false, true))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.a.xx, var_1.a.wx))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.a.xz))))));
    global1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-958f, select(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, ~1i, -2865i), ~countOneBits(vec3<i32>(var_1.b, 1i, 2147483647i)), vec3<i32>(-60697i, var_1.b, var_1.b)), ~countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(8218i, -55068i, 9599i), vec3<i32>(4108i, var_1.b, -5491i))), var_0.c), select(vec3<i32>(countOneBits(u_input.b) | (var_1.b | 25624i), select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, var_0.b, var_1.b, -2147483647i), vec4<i32>(u_input.b, var_0.b, -1i, u_input.b)), var_1.b, true), abs(i32(-1i) * -1i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(var_1.b, var_1.b)) << (_wgslsmith_div_u32(global3[_wgslsmith_index_u32(1u, 6u)], var_2.x) % 32u), -abs(58565i), 1i), _wgslsmith_mod_u32(~0u, var_2.x) > (0u | (global3[_wgslsmith_index_u32(u_input.a, 6u)] >> (global3[_wgslsmith_index_u32(u_input.a, 6u)] % 32u)))), _wgslsmith_div_u32(~0u, u_input.a));
}

