struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
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

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec2<bool>(false, false), vec2<bool>(false, true), Struct_1(vec4<u32>(42394u, 12953u, 96061u, 55238u), false, vec4<u32>(19664u, 0u, 4294967295u, 76014u), 4294967295u), 28990u, Struct_1(vec4<u32>(21268u, 9949u, 0u, 4294967295u), false, vec4<u32>(0u, 35850u, 59825u, 2231u), 0u)), Struct_3(vec2<bool>(true, true), vec2<bool>(true, false), Struct_1(vec4<u32>(0u, 73251u, 5503u, 4294967295u), false, vec4<u32>(9064u, 1u, 0u, 0u), 67353u), 4294967295u, Struct_1(vec4<u32>(26513u, 1u, 1u, 19020u), false, vec4<u32>(4294967295u, 0u, 1u, 42013u), 1u)), Struct_3(vec2<bool>(false, false), vec2<bool>(false, false), Struct_1(vec4<u32>(17700u, 32257u, 50354u, 4294967295u), false, vec4<u32>(1u, 48248u, 17197u, 14741u), 140116u), 0u, Struct_1(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), true, vec4<u32>(95681u, 4294967295u, 28042u, 63u), 34939u)), Struct_3(vec2<bool>(false, true), vec2<bool>(true, false), Struct_1(vec4<u32>(70591u, 0u, 16320u, 38548u), false, vec4<u32>(82515u, 1u, 45071u, 1u), 38035u), 1u, Struct_1(vec4<u32>(65886u, 17844u, 4294967295u, 4294967295u), true, vec4<u32>(18129u, 0u, 0u, 32747u), 26645u)), Struct_3(vec2<bool>(false, false), vec2<bool>(true, true), Struct_1(vec4<u32>(67439u, 14814u, 23885u, 62207u), false, vec4<u32>(19273u, 11318u, 1u, 35662u), 4294967295u), 0u, Struct_1(vec4<u32>(40197u, 16871u, 29184u, 4294967295u), false, vec4<u32>(16049u, 1u, 0u, 4294967295u), 4294967295u)), Struct_3(vec2<bool>(false, false), vec2<bool>(false, false), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 43920u), true, vec4<u32>(4294967295u, 25162u, 1u, 70942u), 4156u), 1u, Struct_1(vec4<u32>(0u, 4294967295u, 19177u, 0u), true, vec4<u32>(28125u, 1u, 2129u, 1u), 0u)), Struct_3(vec2<bool>(false, true), vec2<bool>(false, false), Struct_1(vec4<u32>(0u, 43305u, 4294967295u, 0u), false, vec4<u32>(32912u, 22223u, 0u, 65677u), 19055u), 38297u, Struct_1(vec4<u32>(4294967295u, 1u, 29962u, 13902u), false, vec4<u32>(0u, 26929u, 39710u, 4294967295u), 1609u)), Struct_3(vec2<bool>(true, false), vec2<bool>(true, false), Struct_1(vec4<u32>(49613u, 93982u, 21752u, 12339u), false, vec4<u32>(43921u, 14135u, 63063u, 21008u), 0u), 1u, Struct_1(vec4<u32>(1u, 9512u, 40038u, 1u), false, vec4<u32>(1u, 3592u, 10371u, 1u), 0u)), Struct_3(vec2<bool>(true, true), vec2<bool>(false, false), Struct_1(vec4<u32>(0u, 30823u, 4294967295u, 32957u), true, vec4<u32>(36534u, 30450u, 1u, 0u), 0u), 69916u, Struct_1(vec4<u32>(37362u, 1u, 1u, 0u), false, vec4<u32>(25245u, 8214u, 61963u, 1u), 11033u)), Struct_3(vec2<bool>(true, true), vec2<bool>(true, true), Struct_1(vec4<u32>(4294967295u, 0u, 9360u, 36140u), false, vec4<u32>(0u, 101035u, 1u, 87807u), 52380u), 4294967295u, Struct_1(vec4<u32>(4294967295u, 66047u, 0u, 4294967295u), false, vec4<u32>(47281u, 40652u, 15859u, 20440u), 39214u)), Struct_3(vec2<bool>(false, true), vec2<bool>(true, false), Struct_1(vec4<u32>(9472u, 0u, 59973u, 29343u), false, vec4<u32>(0u, 54753u, 1u, 1u), 1u), 4294967295u, Struct_1(vec4<u32>(7645u, 34769u, 72035u, 4294967295u), false, vec4<u32>(73366u, 5879u, 1531u, 1u), 5876u)), Struct_3(vec2<bool>(true, false), vec2<bool>(true, true), Struct_1(vec4<u32>(4294967295u, 0u, 8043u, 1u), true, vec4<u32>(53868u, 1u, 0u, 0u), 54980u), 0u, Struct_1(vec4<u32>(0u, 1u, 37935u, 0u), false, vec4<u32>(4294967295u, 0u, 1u, 1u), 34694u)), Struct_3(vec2<bool>(false, true), vec2<bool>(false, true), Struct_1(vec4<u32>(16873u, 4502u, 16591u, 0u), false, vec4<u32>(23922u, 0u, 0u, 1u), 5056u), 43410u, Struct_1(vec4<u32>(1u, 21479u, 6602u, 4294967295u), true, vec4<u32>(4294967295u, 8315u, 4216u, 4294967295u), 18212u)), Struct_3(vec2<bool>(true, false), vec2<bool>(true, true), Struct_1(vec4<u32>(77481u, 37928u, 1u, 4294967295u), true, vec4<u32>(14690u, 24356u, 57902u, 4294967295u), 1u), 1u, Struct_1(vec4<u32>(19576u, 44365u, 90050u, 55613u), false, vec4<u32>(1u, 23264u, 86304u, 52646u), 1u)), Struct_3(vec2<bool>(true, false), vec2<bool>(false, false), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 4771u), true, vec4<u32>(1u, 15820u, 26055u, 4294967295u), 106610u), 14654u, Struct_1(vec4<u32>(0u, 0u, 38468u, 13684u), false, vec4<u32>(26720u, 41230u, 64364u, 4294967295u), 23104u)), Struct_3(vec2<bool>(true, true), vec2<bool>(false, true), Struct_1(vec4<u32>(58991u, 42610u, 33556u, 1u), false, vec4<u32>(24499u, 1u, 14707u, 1u), 18701u), 31730u, Struct_1(vec4<u32>(6153u, 1u, 16608u, 4294967295u), true, vec4<u32>(1u, 4294967295u, 38247u, 33802u), 0u)), Struct_3(vec2<bool>(false, true), vec2<bool>(true, false), Struct_1(vec4<u32>(88858u, 2600u, 1u, 12053u), true, vec4<u32>(8630u, 20048u, 4294967295u, 0u), 0u), 15407u, Struct_1(vec4<u32>(0u, 1u, 37284u, 64522u), false, vec4<u32>(10768u, 34238u, 1u, 0u), 0u)), Struct_3(vec2<bool>(true, false), vec2<bool>(true, false), Struct_1(vec4<u32>(110284u, 14657u, 0u, 0u), true, vec4<u32>(4294967295u, 0u, 4294967295u, 66950u), 4294967295u), 18223u, Struct_1(vec4<u32>(0u, 4294967295u, 44525u, 5845u), false, vec4<u32>(49172u, 4294967295u, 4294967295u, 1u), 4294967295u)), Struct_3(vec2<bool>(false, false), vec2<bool>(false, true), Struct_1(vec4<u32>(1u, 0u, 29142u, 3111u), false, vec4<u32>(57410u, 0u, 13178u, 0u), 4294967295u), 38952u, Struct_1(vec4<u32>(17623u, 1423u, 4294967295u, 46559u), false, vec4<u32>(19360u, 40792u, 4294967295u, 1722u), 1u)));

var<private> global1: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

var<private> global2: array<Struct_4, 6>;

var<private> global3: array<Struct_3, 12>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: bool) -> vec2<bool> {
    global2 = array<Struct_4, 6>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(238f, arg_0))))))));
    global1 = array<vec3<bool>, 3>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(44342u, 0u, 1599u)), vec3<u32>(1u, 1u, 1u))) << ((~0u >> (abs(firstTrailingBit(38195u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(11450u, 40903u, 4502u, 92096u), vec4<u32>(1u, 1u, 55676u, 72132u)) % 32u)) % 32u)) % 32u), 6u)];
    var var_2 = _wgslsmith_f_op_f32(-332f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 * var_1.a.a.x))));
    return select(var_1.c, var_1.b.yw, select(var_1.b.xw, select(var_1.c, var_1.b.zw, arg_2), !(!arg_1)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1, min(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_1, 0u), vec3<u32>(0u, 0u, arg_1))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1, arg_1, 54321u), vec3<u32>(arg_1, 0u, arg_1)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_1, 1u), vec3<u32>(arg_1, 0u, 0u), vec3<u32>(arg_1, 0u, 50228u)))), 45363u)), 12u)];
    global0 = array<Struct_3, 19>();
    let var_1 = 1u;
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, -927f), vec2<f32>(arg_2, 731f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-378f, arg_0) * _wgslsmith_div_vec2_f32(vec2<f32>(-455f, arg_0), vec2<f32>(arg_0, 1862f))))), !(!(!select(vec4<bool>(false, var_0.b.x, var_0.e.b, var_0.e.b), vec4<bool>(var_0.e.b, var_0.b.x, false, var_0.b.x), false))), func_3(2015f, !var_0.e.b, false, ~(-27177i) >= _wgslsmith_div_i32(arg_3.x, _wgslsmith_mult_i32(-2147483647i, arg_3.x))));
    let var_3 = global2[_wgslsmith_index_u32(var_1, 6u)];
    return 35690u;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: i32) -> vec2<bool> {
    global3 = array<Struct_3, 12>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_div_f32(571f, arg_1))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_2(arg_1, 4294967295u, -1651f, -u_input.a.yyx & ~u_input.c.xwy), firstTrailingBit(10807u)), 6u)];
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(449f * arg_1))));
    var var_3 = select(firstTrailingBit(~abs(~vec4<u32>(arg_0, 1u, arg_0, 27896u))), _wgslsmith_clamp_vec4_u32(max(_wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, arg_0, 0u, arg_0)), ~vec4<u32>(1u, 4294967295u, 15231u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 58621u, arg_0, arg_0), vec4<u32>(0u, arg_0, arg_0, arg_0) | vec4<u32>(45458u, arg_0, 25147u, arg_0))), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, _wgslsmith_clamp_u32(arg_0, arg_0, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 67113u, arg_0), vec3<u32>(4294967295u, arg_0, arg_0)), arg_0), vec4<u32>(func_2(-679f, arg_0, 1000f, vec3<i32>(33801i, u_input.c.x, -35476i)), firstLeadingBit(arg_0), arg_0, 0u)), select(select(vec4<u32>(4294967295u, 4294967295u, 34244u, 24462u), vec4<u32>(44217u, arg_0, arg_0, 1518u), vec4<bool>(var_1.c.x, var_1.b.x, false, var_1.b.x)), min(vec4<u32>(4294967295u, arg_0, 1u, arg_0), vec4<u32>(23890u, 0u, 4294967295u, arg_0)), !var_1.b) & (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 9666u, arg_0, arg_0), vec4<u32>(0u, arg_0, 30997u, 0u)) & _wgslsmith_add_vec4_u32(vec4<u32>(18176u, arg_0, arg_0, arg_0), vec4<u32>(27194u, arg_0, arg_0, 1u)))), any(vec2<bool>(false, true)));
    return var_1.b.zw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false | !all(func_1(15122u, 638f, -2147483647i)), any(global1[_wgslsmith_index_u32(1u, 3u)]) || any(vec2<bool>(true, true)), select(!func_1(0u, 460f, -8656i & u_input.a.x).x, true, true), true && (!all(vec2<bool>(true, false)) & select(any(vec2<bool>(true, false)), true, false)));
    var var_1 = countOneBits(~(select(u_input.a.ww, vec2<i32>(u_input.a.x, u_input.b), any(vec4<bool>(var_0.x, var_0.x, var_0.x, true))) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(-11657i, u_input.a.x) << (vec2<u32>(20039u, 17754u) % vec2<u32>(32u)), ~vec2<i32>(u_input.b, u_input.b))));
    global2 = array<Struct_4, 6>();
    var var_2 = !select(!vec4<bool>(true, false, var_0.x || var_0.x, true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, false, var_0.x, true), false), !vec4<bool>(true, var_0.x, false, false)), select(vec4<bool>(false, var_0.x, false, var_0.x), select(vec4<bool>(false, true, false, false), vec4<bool>(var_0.x, true, var_0.x, true), false), vec4<bool>(true, var_0.x, false, var_0.x)), all(!vec2<bool>(var_0.x, true))), select(vec4<bool>(func_1(4294967295u, -1258f, -1i).x, !var_0.x, true, true), select(!vec4<bool>(var_0.x, true, var_0.x, true), !vec4<bool>(var_0.x, true, var_0.x, false), false), any(vec4<bool>(true, false, var_0.x, var_0.x))));
    let var_3 = vec3<u32>(select(~func_2(_wgslsmith_f_op_f32(-577f * 249f), ~130149u, _wgslsmith_f_op_f32(round(-740f)), _wgslsmith_div_vec3_i32(u_input.a.yxx, vec3<i32>(-2147483647i, u_input.c.x, -26367i))), firstTrailingBit(_wgslsmith_add_u32(1u, ~12498u)), true), 1u, _wgslsmith_sub_u32(countOneBits(~1u), ~(~(~4294967295u))));
    global0 = array<Struct_3, 19>();
    let var_4 = Struct_1(~(~(~abs(vec4<u32>(0u, 59954u, 32691u, var_3.x)))), true, ~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, var_3.x, 1u, 4294967295u) ^ (vec4<u32>(var_3.x, 18614u, 68721u, var_3.x) & vec4<u32>(var_3.x, 3094u, 4294967295u, 1u)), ~(vec4<u32>(var_3.x, var_3.x, 2404u, 627u) >> (vec4<u32>(var_3.x, var_3.x, 88938u, 77637u) % vec4<u32>(32u)))), var_3.x ^ ~(1u << (var_3.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, -1158f))));
}

