struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(0i, 26058i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, -23581i), vec2<i32>(-10192i, 1i), vec2<i32>(2147483647i, -7543i), vec2<i32>(1580i, -19530i), vec2<i32>(-1i, 49224i), vec2<i32>(-1i, -28385i), vec2<i32>(69360i, -1i), vec2<i32>(5164i, i32(-2147483648)), vec2<i32>(-11794i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(-39642i, 83424i));

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(114f, vec2<u32>(104903u, 1u), 37761u, vec3<bool>(false, false, false)), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(-311f, vec2<u32>(0u, 1u), 101103u, vec3<bool>(true, true, false)), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(-219f, vec2<u32>(0u, 2120u), 28093u, vec3<bool>(false, false, true)), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(-1000f, vec2<u32>(0u, 14406u), 0u, vec3<bool>(true, true, false)), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(471f, vec2<u32>(6512u, 28224u), 44328u, vec3<bool>(false, false, false)), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(-1000f, vec2<u32>(0u, 10759u), 1u, vec3<bool>(true, false, false)), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(507f, vec2<u32>(13624u, 4294967295u), 115572u, vec3<bool>(true, true, true)), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(-1170f, vec2<u32>(79744u, 54906u), 4294967295u, vec3<bool>(false, false, true)), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(382f, vec2<u32>(0u, 79278u), 0u, vec3<bool>(false, true, true)), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(1000f, vec2<u32>(61380u, 33578u), 36094u, vec3<bool>(false, false, true)), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(-815f, vec2<u32>(27160u, 0u), 192u, vec3<bool>(true, false, true)), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(-770f, vec2<u32>(11545u, 1u), 41029u, vec3<bool>(true, false, true)), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(-285f, vec2<u32>(9262u, 4294967295u), 1250u, vec3<bool>(false, false, false)), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(2091f, vec2<u32>(35634u, 6642u), 4294967295u, vec3<bool>(true, true, false)), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(1136f, vec2<u32>(1u, 4294967295u), 13649u, vec3<bool>(false, true, true)), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(-887f, vec2<u32>(0u, 18756u), 20175u, vec3<bool>(false, true, false)), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(-1590f, vec2<u32>(8203u, 0u), 6106u, vec3<bool>(true, false, false)), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(545f, vec2<u32>(1u, 36652u), 4294967295u, vec3<bool>(false, false, true)), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(-1061f, vec2<u32>(510u, 14994u), 19129u, vec3<bool>(true, false, false)), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(-1000f, vec2<u32>(1u, 4294967295u), 0u, vec3<bool>(false, true, true)), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(1426f, vec2<u32>(0u, 0u), 1u, vec3<bool>(false, false, true)), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(-433f, vec2<u32>(101559u, 1u), 0u, vec3<bool>(false, true, true)), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(1016f, vec2<u32>(41005u, 4294967295u), 4294967295u, vec3<bool>(false, false, true)), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(249f, vec2<u32>(0u, 0u), 74886u, vec3<bool>(false, true, false)), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(-1469f, vec2<u32>(16252u, 1u), 91649u, vec3<bool>(true, false, true)), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(835f, vec2<u32>(4294967295u, 4294967295u), 8986u, vec3<bool>(false, true, false)), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(675f, vec2<u32>(1u, 0u), 44368u, vec3<bool>(true, true, false)), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(162f, vec2<u32>(0u, 25947u), 71954u, vec3<bool>(false, false, false)), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(-304f, vec2<u32>(94134u, 4294967295u), 36586u, vec3<bool>(true, true, false)), vec4<bool>(true, false, true, true)));

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(389f, vec2<u32>(4294967295u, 34172u), 51943u, vec3<bool>(false, true, true)), Struct_1(-1846f, vec2<u32>(1u, 14781u), 23766u, vec3<bool>(true, false, true)), Struct_1(-1422f, vec2<u32>(34535u, 27347u), 0u, vec3<bool>(true, true, false)), Struct_1(-324f, vec2<u32>(32425u, 1u), 0u, vec3<bool>(true, true, true)), Struct_1(1167f, vec2<u32>(5747u, 11051u), 4294967295u, vec3<bool>(true, true, true)), Struct_1(-492f, vec2<u32>(172514u, 27104u), 30935u, vec3<bool>(false, true, true)), Struct_1(-2108f, vec2<u32>(1u, 10363u), 62917u, vec3<bool>(true, false, false)), Struct_1(878f, vec2<u32>(27375u, 15826u), 4294967295u, vec3<bool>(true, true, true)), Struct_1(-320f, vec2<u32>(1u, 4859u), 4294967295u, vec3<bool>(true, true, true)), Struct_1(1110f, vec2<u32>(3012u, 4294967295u), 0u, vec3<bool>(false, false, false)), Struct_1(1207f, vec2<u32>(1u, 38071u), 51758u, vec3<bool>(false, false, false)), Struct_1(-328f, vec2<u32>(4294967295u, 1u), 4294967295u, vec3<bool>(false, true, false)), Struct_1(-1000f, vec2<u32>(35966u, 0u), 35034u, vec3<bool>(true, true, true)), Struct_1(471f, vec2<u32>(0u, 27393u), 1u, vec3<bool>(true, true, false)), Struct_1(1539f, vec2<u32>(73667u, 33763u), 0u, vec3<bool>(true, true, true)), Struct_1(-167f, vec2<u32>(86916u, 18478u), 19713u, vec3<bool>(true, false, false)), Struct_1(-187f, vec2<u32>(36658u, 36636u), 12686u, vec3<bool>(false, false, false)), Struct_1(-137f, vec2<u32>(0u, 74104u), 11142u, vec3<bool>(true, false, true)), Struct_1(826f, vec2<u32>(1u, 8227u), 17259u, vec3<bool>(true, true, false)), Struct_1(-1237f, vec2<u32>(16322u, 80054u), 24337u, vec3<bool>(false, true, false)), Struct_1(-2357f, vec2<u32>(1u, 1u), 4294967295u, vec3<bool>(true, false, false)), Struct_1(1000f, vec2<u32>(0u, 0u), 53276u, vec3<bool>(true, true, false)), Struct_1(233f, vec2<u32>(18344u, 1u), 1u, vec3<bool>(true, true, true)), Struct_1(564f, vec2<u32>(34407u, 1u), 22609u, vec3<bool>(false, true, false)), Struct_1(1000f, vec2<u32>(0u, 1u), 4294967295u, vec3<bool>(false, false, false)), Struct_1(-1705f, vec2<u32>(0u, 1u), 91245u, vec3<bool>(false, true, false)), Struct_1(1291f, vec2<u32>(0u, 4294967295u), 19208u, vec3<bool>(false, false, true)), Struct_1(732f, vec2<u32>(1u, 1u), 85678u, vec3<bool>(false, false, true)), Struct_1(-982f, vec2<u32>(65113u, 24394u), 22270u, vec3<bool>(true, true, true)));

var<private> global3: array<i32, 4>;

var<private> global4: array<i32, 26>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> vec3<bool> {
    var var_0 = ~arg_1.a.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.a.a)), _wgslsmith_f_op_f32(max(arg_1.a.a, _wgslsmith_f_op_f32(3257f * 293f))))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2387f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1578f)))), 1313f));
    var var_2 = vec4<bool>(arg_2, true, true, !all(select(!arg_1.b.zy, select(vec2<bool>(arg_2, arg_1.b.x), arg_1.b.zw, vec2<bool>(false, arg_1.b.x)), vec2<bool>(false, true))));
    global3 = array<i32, 4>();
    let var_3 = vec4<i32>(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(arg_1.a.c, 4264u), arg_0), 13u)], _wgslsmith_div_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(34440u, 26u)], global4[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec2<i32>(global3[_wgslsmith_index_u32(arg_1.a.c, 4u)], global4[_wgslsmith_index_u32(43687u, 26u)]))) | global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(1u), 72332u | abs(arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.c, 1u, u_input.a.x), vec3<u32>(arg_0, 10836u, 0u))), 26u)], _wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.a.x, 4u)] | ~firstLeadingBit(global3[_wgslsmith_index_u32(arg_0, 4u)]), _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(-35782i, abs(global3[_wgslsmith_index_u32(0u, 4u)])))), (global3[_wgslsmith_index_u32(firstLeadingBit(~arg_0), 4u)] & _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(arg_1.a.b.x, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), -vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], 61744i))) & _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(~14623u, 4u)], -max(global3[_wgslsmith_index_u32(arg_1.a.c, 4u)], global3[_wgslsmith_index_u32(arg_1.a.c, 4u)])), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(max(_wgslsmith_add_u32(1u, 1u), 2381u), 4u)], global4[_wgslsmith_index_u32(u_input.a.x >> (abs(arg_1.a.b.x ^ arg_1.a.c) % 32u), 26u)]));
    return select(vec3<bool>(arg_0 >= _wgslsmith_add_u32(14541u, _wgslsmith_mult_u32(52678u, u_input.a.x)), _wgslsmith_clamp_u32(39264u, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.a.x), u_input.a)) >= abs(29648u), true), var_2.xxz, select(select(select(!arg_1.b.xxz, var_2.yxy, false), select(!var_2.zxy, arg_1.a.d, vec3<bool>(arg_1.a.d.x, false, var_2.x)), any(arg_1.b)), arg_1.b.xyx, arg_1.b.x));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_1.x)))), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(round(arg_1.x)))), _wgslsmith_f_op_f32(trunc(1442f)), 543f));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x * arg_1.x))))), u_input.a, ~1u, !func_3(u_input.a.x, Struct_2(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 29u)], vec4<bool>(true, true, true, true)), all(vec4<bool>(false, false, false, false))));
    let var_2 = _wgslsmith_mult_vec3_u32(min((_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_1.b.x, 4294967295u), vec3<u32>(u_input.a.x, var_1.c, 4294967295u), vec3<u32>(4294967295u, 99631u, 4294967295u)) & ~vec3<u32>(u_input.a.x, var_1.b.x, 8852u)) >> (vec3<u32>(15668u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(0u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(70145u, 64737u, 0u), vec3<u32>(0u, u_input.a.x, 55336u))) % vec3<u32>(32u)), select(~vec3<u32>(var_1.c, 4294967295u, 14212u), firstTrailingBit(vec3<u32>(1u, var_1.c, var_1.c)), true) | ~_wgslsmith_div_vec3_u32(vec3<u32>(29541u, u_input.a.x, var_1.b.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))), max(max(~(~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), vec3<u32>(0u, u_input.a.x, 63266u)), vec3<u32>(1604u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, var_1.c, var_1.c, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, 0u, 57862u)), ~_wgslsmith_div_u32(var_1.b.x, var_1.b.x))));
    var var_3 = Struct_4(true, select(vec4<bool>(true, false, !var_1.d.x, true), !(!select(vec4<bool>(false, false, var_1.d.x, var_1.d.x), vec4<bool>(true, false, var_1.d.x, true), vec4<bool>(false, var_1.d.x, var_1.d.x, false))), (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, global4[_wgslsmith_index_u32(24913u, 26u)], arg_0), vec3<i32>(13815i, global4[_wgslsmith_index_u32(1u, 26u)], 46339i)) ^ _wgslsmith_sub_i32(0i, 0i)) < arg_0), global0[_wgslsmith_index_u32(u_input.a.x, 13u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(768f, var_1.a, var_1.a, arg_1.x) * arg_1) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -702f, -558f, 1223f) + vec4<f32>(arg_1.x, -1000f, 391f, arg_1.x))) + arg_1)));
    var var_4 = _wgslsmith_clamp_u32(47345u, var_1.b.x, ~u_input.a.x);
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, reverseBits(~47292u)), ~var_2.xz);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    let var_0 = !func_3(u_input.a.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(4294967295u), _wgslsmith_mod_u32(arg_1.c, 0u)), select(~vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(arg_1.b.x, u_input.a.x), arg_1.d.x)), 29u)], arg_1.d.x).x;
    let var_1 = Struct_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a), arg_1.a, select(true, true, arg_1.d.x == var_0))));
    global2 = array<Struct_1, 29>();
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(546f - _wgslsmith_f_op_f32(ceil(232f))), arg_1.a, -468f < _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-211f, _wgslsmith_f_op_f32(f32(-1f) * -1385f))))));
    let var_3 = Struct_3(-(~_wgslsmith_clamp_i32(-2147483647i, arg_0, global4[_wgslsmith_index_u32(u_input.a.x, 26u)]) & _wgslsmith_dot_vec2_i32(-global0[_wgslsmith_index_u32(arg_1.c, 13u)], global0[_wgslsmith_index_u32(1u, 13u)])), vec4<i32>(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, global3[_wgslsmith_index_u32(4294967295u, 4u)]), global0[_wgslsmith_index_u32(u_input.a.x, 13u)], vec2<i32>(arg_0, global3[_wgslsmith_index_u32(arg_1.c, 4u)]))), global3[_wgslsmith_index_u32(1u, 4u)], 0i, _wgslsmith_clamp_i32(1i, 1i, select(2147483647i, 1464i, arg_1.d.x))) | vec4<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(38882i, arg_0, arg_0, 0i), vec4<i32>(-3638i, global3[_wgslsmith_index_u32(4294967295u, 4u)], 21346i, arg_0))), global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(33945u, 47942u, 0u), 26u)], global4[_wgslsmith_index_u32(~func_2(arg_0, vec4<f32>(var_1.a, 2031f, -563f, var_2)), 26u)], -46630i), select(_wgslsmith_mod_i32(38314i, _wgslsmith_mult_i32(22431i, global3[_wgslsmith_index_u32(arg_1.b.x, 4u)]) | global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 1u), 4u)]), _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(arg_1.b.x, 13u)], -(~vec2<i32>(-1i, global4[_wgslsmith_index_u32(4294967295u, 26u)]))), !var_0), u_input.a.x, vec4<f32>(1078f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -2460f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -988f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1223f + _wgslsmith_f_op_f32(trunc(567f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(447f * var_1.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))))));
    return var_3;
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.e.wxy) + _wgslsmith_div_vec3_f32(arg_0.e.zyx, arg_0.e.zxx)))));
    global3 = array<i32, 4>();
    global2 = array<Struct_1, 29>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, max(_wgslsmith_mult_u32(50059u, 0u), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), _wgslsmith_mod_u32(~u_input.a.x, 47310u)) ^ vec3<u32>(0u, 16181u, _wgslsmith_add_u32(~arg_0.d, 1u)), ~_wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0.d, arg_0.d), vec3<u32>(u_input.a.x, arg_0.d, 37399u)), select(~vec3<u32>(1u, u_input.a.x, 24108u), ~vec3<u32>(49314u, 58541u, arg_0.d), vec3<bool>(arg_1, arg_1, false)))), 29u)];
    var var_2 = -firstTrailingBit(arg_0.b.ywy);
    return func_2(-(1i ^ global4[_wgslsmith_index_u32(1u, 26u)]), arg_0.e);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: i32, arg_3: vec4<bool>) -> i32 {
    let var_0 = global4[_wgslsmith_index_u32(func_5(func_4(arg_1.c, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(-8301i, vec4<f32>(1000f, -224f, 134f, arg_0.x)), ~1u), 29u)]), any(vec2<bool>(arg_3.x, true)), arg_0.x, _wgslsmith_f_op_f32(max(-745f, _wgslsmith_div_f32(arg_1.e.x, -1266f)))), 26u)] ^ global3[_wgslsmith_index_u32(u_input.a.x, 4u)];
    var var_1 = arg_3;
    var var_2 = false;
    global3 = array<i32, 4>();
    let var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(~firstTrailingBit(0i << (u_input.a.x % 32u)), ~global3[_wgslsmith_index_u32(u_input.a.x, 4u)], 0i, _wgslsmith_mult_i32(22138i, i32(-1i) * -11057i)), abs(-abs(vec4<i32>(arg_2, 0i, -9967i, arg_2)) & ~countOneBits(arg_1.b)));
    return -arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<i32>(-1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 2147483647i, global4[_wgslsmith_index_u32(u_input.a.x, 26u)], -2147483647i), vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], global3[_wgslsmith_index_u32(u_input.a.x, 4u)], global3[_wgslsmith_index_u32(92272u, 4u)], -2147483647i)), global3[_wgslsmith_index_u32(u_input.a.x, 4u)], func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-163f, 115f, 1000f, -340f), vec4<f32>(-1022f, -320f, -1000f, -526f)), Struct_3(global3[_wgslsmith_index_u32(25385u, 4u)], vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 26u)], -2147483647i, -29709i, -7460i), 24817i, 0u, vec4<f32>(1000f, -1999f, 1510f, 1983f)), global4[_wgslsmith_index_u32(1u ^ u_input.a.x, 26u)], select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true))), global3[_wgslsmith_index_u32(func_4(min(-30913i, -global4[_wgslsmith_index_u32(u_input.a.x, 26u)]), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a.x, 42138u), 29u)]).d, 4u)], 34419i);
    var var_1 = func_4(abs(_wgslsmith_sub_i32(firstTrailingBit(~2147483647i), ~reverseBits(22122i))), global2[_wgslsmith_index_u32(~2798u, 29u)]);
    var var_2 = select(vec3<i32>(-(~(36987i << (var_1.d % 32u))), -4105i, global3[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec3<i32>(~_wgslsmith_div_i32(~33113i, -20791i ^ var_0.x), ~var_1.b.x, -23587i), false);
    var var_3 = global1[_wgslsmith_index_u32(1u, 29u)];
    let var_4 = vec2<bool>(func_4(_wgslsmith_mod_i32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(46555u, u_input.a.x), 26u)], ~0i), Struct_1(_wgslsmith_f_op_f32(739f - -844f), min(vec2<u32>(0u, var_3.a.b.x), u_input.a), var_1.d, select(var_3.a.d, vec3<bool>(true, var_3.b.x, false), vec3<bool>(var_3.b.x, var_3.a.d.x, false)))).c <= -2147483647i, var_3.b.x);
    var_3 = global1[_wgslsmith_index_u32(2158u, 29u)];
    let var_5 = func_4(var_2.x, var_3.a).d;
    var var_6 = global1[_wgslsmith_index_u32(var_5, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.e.wzw) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1378f, var_6.a.a, var_1.e.x) - var_1.e.wzw)))), func_4(-86466i, Struct_1(1000f, max(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 30393u), vec2<u32>(74370u, var_1.d)), vec2<u32>(u_input.a.x, 65964u)), 1u, var_6.b.yyy)).b.x);
}

