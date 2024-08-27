struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: vec2<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(796f, -1i, Struct_1(0i, vec2<i32>(-10258i, -160i), 84912u, vec3<u32>(26983u, 0u, 1u), true), vec4<u32>(42969u, 57043u, 42066u, 1u)), Struct_2(112f, -18679i, Struct_1(1i, vec2<i32>(21451i, i32(-2147483648)), 4294967295u, vec3<u32>(1u, 15449u, 1u), true), vec4<u32>(22263u, 0u, 4294967295u, 4294967295u)), Struct_2(-443f, -9406i, Struct_1(42076i, vec2<i32>(-66837i, i32(-2147483648)), 1u, vec3<u32>(0u, 0u, 4294967295u), true), vec4<u32>(4294967295u, 91803u, 1u, 1u)), Struct_2(443f, 1i, Struct_1(0i, vec2<i32>(19272i, -1i), 24682u, vec3<u32>(4294967295u, 30u, 33590u), true), vec4<u32>(65201u, 0u, 4294967295u, 75439u)), Struct_2(-1356f, i32(-2147483648), Struct_1(10307i, vec2<i32>(2147483647i, 7320i), 4294967295u, vec3<u32>(43095u, 1u, 1u), true), vec4<u32>(1u, 4294967295u, 6902u, 4294967295u)), Struct_2(-940f, 0i, Struct_1(-1117i, vec2<i32>(-2506i, 0i), 4294967295u, vec3<u32>(7318u, 4294967295u, 1u), true), vec4<u32>(5749u, 41706u, 0u, 1u)), Struct_2(-1088f, 8038i, Struct_1(33519i, vec2<i32>(1i, 8747i), 4294967295u, vec3<u32>(0u, 0u, 0u), false), vec4<u32>(1u, 16160u, 28588u, 100023u)), Struct_2(-936f, -10131i, Struct_1(-11637i, vec2<i32>(0i, i32(-2147483648)), 27996u, vec3<u32>(4294967295u, 39635u, 0u), true), vec4<u32>(47463u, 33111u, 4294967295u, 4294967295u)), Struct_2(-176f, -46748i, Struct_1(-14135i, vec2<i32>(0i, 1i), 7433u, vec3<u32>(4294967295u, 89517u, 12472u), false), vec4<u32>(6966u, 92300u, 19575u, 4294967295u)), Struct_2(-202f, 2147483647i, Struct_1(-13127i, vec2<i32>(9115i, 48701i), 4294967295u, vec3<u32>(3780u, 25517u, 36534u), false), vec4<u32>(14960u, 1u, 1u, 86144u)), Struct_2(-1355f, -32642i, Struct_1(-31289i, vec2<i32>(-1i, 51893i), 0u, vec3<u32>(36704u, 4294967295u, 38208u), false), vec4<u32>(0u, 1u, 4294967295u, 10971u)), Struct_2(-275f, -28380i, Struct_1(2147483647i, vec2<i32>(i32(-2147483648), 0i), 1u, vec3<u32>(52379u, 4294967295u, 90688u), true), vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), Struct_2(-1017f, 0i, Struct_1(-16644i, vec2<i32>(-1i, -21462i), 46755u, vec3<u32>(4294967295u, 0u, 4294967295u), false), vec4<u32>(1u, 0u, 32453u, 4294967295u)), Struct_2(-1198f, -2732i, Struct_1(2147483647i, vec2<i32>(i32(-2147483648), i32(-2147483648)), 4294967295u, vec3<u32>(4294967295u, 4294967295u, 1u), false), vec4<u32>(1u, 108127u, 7855u, 34031u)), Struct_2(-724f, 1i, Struct_1(-7885i, vec2<i32>(-1i, -5733i), 12658u, vec3<u32>(0u, 8264u, 1u), true), vec4<u32>(4294967295u, 102846u, 36411u, 75257u)), Struct_2(-3308f, -1i, Struct_1(15611i, vec2<i32>(62725i, -4548i), 1u, vec3<u32>(4294967295u, 1u, 4294967295u), false), vec4<u32>(36728u, 22782u, 4294967295u, 19933u)), Struct_2(-1509f, 1i, Struct_1(28618i, vec2<i32>(-12183i, 71442i), 6830u, vec3<u32>(39398u, 34669u, 8863u), false), vec4<u32>(31050u, 96377u, 66645u, 33397u)), Struct_2(727f, 21192i, Struct_1(-6214i, vec2<i32>(2147483647i, -1i), 0u, vec3<u32>(0u, 0u, 30108u), false), vec4<u32>(5970u, 4294967295u, 1u, 1u)), Struct_2(1412f, 2147483647i, Struct_1(i32(-2147483648), vec2<i32>(-1i, 2294i), 0u, vec3<u32>(0u, 98167u, 122389u), false), vec4<u32>(4294967295u, 30611u, 4294967295u, 15579u)), Struct_2(-1422f, 0i, Struct_1(1i, vec2<i32>(1i, -8189i), 0u, vec3<u32>(87157u, 35637u, 101492u), false), vec4<u32>(4294967295u, 32121u, 4294967295u, 1u)), Struct_2(-229f, -43906i, Struct_1(-41496i, vec2<i32>(-45383i, 2147483647i), 1u, vec3<u32>(37823u, 4294967295u, 0u), true), vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), Struct_2(432f, 2147483647i, Struct_1(2147483647i, vec2<i32>(2147483647i, -1i), 29889u, vec3<u32>(36340u, 4294967295u, 100052u), false), vec4<u32>(26801u, 40325u, 1u, 1u)), Struct_2(113f, 18871i, Struct_1(-1i, vec2<i32>(-1i, 8116i), 5202u, vec3<u32>(3876u, 52339u, 55956u), true), vec4<u32>(0u, 4351u, 0u, 39520u)), Struct_2(704f, 1i, Struct_1(-48831i, vec2<i32>(23834i, -18927i), 4294967295u, vec3<u32>(0u, 1u, 9414u), true), vec4<u32>(0u, 17803u, 1u, 68009u)), Struct_2(-436f, -18063i, Struct_1(2147483647i, vec2<i32>(-14134i, 1i), 578u, vec3<u32>(49506u, 15931u, 4294967295u), true), vec4<u32>(4294967295u, 0u, 1483u, 0u)));

var<private> global1: bool = false;

var<private> global2: bool;

var<private> global3: array<i32, 7>;

var<private> global4: f32 = 1209f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool) -> vec2<i32> {
    var var_0 = vec3<bool>(arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1076f)))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f)), false);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-505f, 1f)) - _wgslsmith_f_op_f32(f32(-1f) * -506f))) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1060f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 338f) - _wgslsmith_div_f32(703f, _wgslsmith_f_op_f32(-716f + -1034f)))));
    var_0 = select(!select(!(!vec3<bool>(true, false, var_0.x)), vec3<bool>(false, true, true), select(vec3<bool>(var_0.x, arg_2, arg_2), vec3<bool>(true, true, true), any(vec2<bool>(var_0.x, arg_2)))), vec3<bool>(false, !(!any(vec3<bool>(var_0.x, var_0.x, true))), arg_2), all(vec4<bool>(true, true, any(vec2<bool>(true, true)), false)));
    global2 = true;
    var var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(1i, 1i), reverseBits(0i)), vec2<i32>(arg_0.a.c.x, _wgslsmith_clamp_i32(arg_0.a.c.x | u_input.c.x, -116111i, -97905i))), vec2<i32>(reverseBits(0i), -global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 25627u), 7u)]), -vec2<i32>(arg_0.a.c.x & 0i, 32344i));
    return _wgslsmith_add_vec2_i32(arg_0.a.c.zz, _wgslsmith_mod_vec2_i32(min(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a.c.x, arg_0.a.a), arg_0.a.c.zx), vec2<i32>(_wgslsmith_add_i32(-43878i, -39070i), _wgslsmith_div_i32(-68667i, var_1.x))), firstLeadingBit(-arg_0.a.c.zx)));
}

fn func_2() -> vec3<bool> {
    let var_0 = global3[_wgslsmith_index_u32(select(~(1u << (_wgslsmith_dot_vec2_u32(min(vec2<u32>(19293u, 5532u), vec2<u32>(0u, 0u)), vec2<u32>(0u, 40371u) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))) % 32u)), firstLeadingBit(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(19277u, 4294967295u), 0u)), true), 7u)];
    var var_1 = Struct_1(~(~1i), _wgslsmith_mult_vec2_i32(func_3(Struct_4(Struct_3(-2147483647i, vec2<u32>(4294967295u, 9960u), u_input.d), ~vec2<u32>(8036u, 21887u), firstLeadingBit(vec3<u32>(101854u, 1u, 28956u))), vec4<u32>(1u, 1u, 1u, 1u), any(vec4<bool>(false, false, true, false)) | true), u_input.c.yw), 0u, ~vec3<u32>(4294967295u, 0u, 1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(13265u, 43370u, 17100u), vec3<u32>(4294967295u, 4294967295u, 63562u)) % 32u)), true);
    let var_2 = -func_3(Struct_4(Struct_3(_wgslsmith_mod_i32(u_input.b, u_input.a), ~var_1.d.yy, ~u_input.d), vec2<u32>(abs(var_1.d.x), var_1.c), ~max(var_1.d, var_1.d)), ~min(~vec4<u32>(var_1.c, 7973u, var_1.d.x, var_1.d.x), vec4<u32>(53742u, 16395u, var_1.d.x, var_1.d.x)), -u_input.a >= _wgslsmith_div_i32(-1i, _wgslsmith_clamp_i32(u_input.a, u_input.c.x, -30871i)));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2202f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1399f - -727f) + -288f), !all(select(vec4<bool>(var_1.e, false, var_1.e, var_1.e), !vec4<bool>(true, false, true, var_1.e), !var_1.e))));
    var var_4 = Struct_1(_wgslsmith_add_i32(1i, (min(0i, -1i) >> (min(var_1.d.x, var_1.d.x) % 32u)) & 2147483647i), ~vec2<i32>(var_1.a ^ _wgslsmith_add_i32(global3[_wgslsmith_index_u32(var_1.d.x, 7u)], -1i), 48322i), 4294967295u, reverseBits(((vec3<u32>(var_1.c, 76510u, var_1.c) ^ var_1.d) << (var_1.d % vec3<u32>(32u))) | var_1.d), !(!(!var_1.e)) || select(false, any(vec2<bool>(var_1.e, false)), var_1.e));
    return !vec3<bool>(false, true, any(vec3<bool>(false, false, var_4.e)) & true);
}

fn func_1() -> Struct_2 {
    var var_0 = 1u;
    let var_1 = ~(~vec3<u32>(1u, 1u, 1u));
    let var_2 = select(!(!vec3<bool>(any(vec3<bool>(false, false, true)), true, any(vec4<bool>(false, false, false, false)))), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))), all(vec3<bool>(true, true, true)), true), func_2());
    let var_3 = Struct_1(~(~global3[_wgslsmith_index_u32(firstLeadingBit(var_1.x), 7u)]) | min(-52781i >> (var_1.x % 32u), u_input.a), vec2<i32>(func_3(Struct_4(Struct_3(-22524i, vec2<u32>(var_1.x, var_1.x), u_input.d), vec2<u32>(43016u, var_1.x), var_1), ~vec4<u32>(var_1.x, 0u, var_1.x, var_1.x), true).x ^ global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1733u, 1u, var_1.x), 7u)], -1i), 1u, _wgslsmith_mult_vec3_u32(~var_1, _wgslsmith_sub_vec3_u32(~(vec3<u32>(var_1.x, var_1.x, 0u) | vec3<u32>(28587u, 4294967295u, var_1.x)), vec3<u32>(0u, var_1.x, var_1.x >> (var_1.x % 32u)))), var_2.x);
    global0 = array<Struct_2, 25>();
    return global0[_wgslsmith_index_u32(~((~var_3.c << (32094u % 32u)) >> (1u % 32u)), 25u)];
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = vec2<i32>(arg_1.b, min(~(~(-5500i)), _wgslsmith_add_i32(reverseBits(func_1().b), _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, 1i), abs(35087i)))));
    let var_1 = Struct_2(arg_1.a, -24429i, arg_1.c, ~((vec4<u32>(4294967295u, 81550u, arg_1.c.d.x, arg_1.c.c) ^ arg_1.d) ^ reverseBits(arg_1.d)) & arg_1.d);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a)));
    let var_4 = _wgslsmith_div_vec2_u32(max(vec2<u32>(~(~0u), 63351u), ~(~(~arg_1.c.d.zx))), _wgslsmith_div_vec2_u32(~vec2<u32>(arg_1.d.x, 4294967295u), vec2<u32>(22992u, abs(firstTrailingBit(1u)))));
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 7>();
    let var_0 = ~(~1u);
    var var_1 = Struct_3(-9227i, firstLeadingBit(vec2<u32>(~abs(var_0), var_0 & var_0)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, ~u_input.d.x, func_4(_wgslsmith_f_op_f32(min(-1253f, 425f)), func_1(), _wgslsmith_f_op_f32(908f * 162f), 1i)), vec3<i32>(0i, func_3(Struct_4(Struct_3(-2147483647i, vec2<u32>(1u, 0u), vec3<i32>(145i, -1i, 0i)), vec2<u32>(var_0, 5218u), vec3<u32>(1u, 36629u, var_0)), select(vec4<u32>(6548u, 0u, 78308u, var_0), vec4<u32>(var_0, 1u, var_0, var_0), false), true).x, firstLeadingBit(func_1().c.b.x))));
    let var_2 = vec2<i32>(abs(var_1.c.x), var_1.c.x);
    global4 = -551f;
    global1 = true;
    var var_3 = ~var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_vec3_i32(~u_input.c.yxy, _wgslsmith_mod_vec3_i32(var_1.c, vec3<i32>(global3[_wgslsmith_index_u32(9176u, 7u)], -2147483647i, -1i)))) | abs(var_1.c), _wgslsmith_sub_vec4_u32(vec4<u32>(13922u, ~125u, select(var_1.b.x, ~4877u, true), 17054u), vec4<u32>(~1u, var_1.b.x, ~3650u, 39985u) ^ (~vec4<u32>(4294967295u, 79505u, var_0, var_0) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.x, 6559u, 4294967295u, var_1.b.x), vec4<u32>(4294967295u, var_1.b.x, var_1.b.x, var_0)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f) * func_1().a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(173f)))), 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1419f, -1284f) + _wgslsmith_div_vec3_f32(vec3<f32>(111f, -974f, 1703f), vec3<f32>(572f, 357f, -911f))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1634f, 320f, 1324f))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-378f)) * _wgslsmith_f_op_f32(f32(-1f) * -795f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1530f))))));
}

