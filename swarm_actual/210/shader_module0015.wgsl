struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 12>;

var<private> global2: array<Struct_1, 25>;

var<private> global3: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(-19763i, -2472i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-6888i, 0i, -10873i, 65223i), vec4<i32>(-62779i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(-1i, 1i, 2147483647i, -21407i), vec4<i32>(-7228i, -605i, -3660i, -1i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, -5317i), vec4<i32>(-1i, -92377i, i32(-2147483648), 75596i), vec4<i32>(78295i, -12930i, -2793i, 0i), vec4<i32>(39545i, 11794i, -7736i, 47609i), vec4<i32>(19912i, -60330i, 1i, 2151i), vec4<i32>(-17770i, 1i, 0i, 0i), vec4<i32>(14999i, -13081i, -10741i, i32(-2147483648)), vec4<i32>(-16329i, 120682i, 21672i, 13080i), vec4<i32>(25668i, 1496i, -1199i, 16632i), vec4<i32>(i32(-2147483648), -8674i, 1i, -50893i), vec4<i32>(-21466i, 47953i, 0i, -28597i), vec4<i32>(4213i, -1i, 1i, 17293i), vec4<i32>(0i, -17324i, 2147483647i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, -21077i, 2147483647i), vec4<i32>(-1i, -20028i, -12209i, i32(-2147483648)), vec4<i32>(1i, -15555i, i32(-2147483648), 0i), vec4<i32>(-36548i, 1i, -6721i, 37290i), vec4<i32>(23892i, 7402i, 2147483647i, 13859i), vec4<i32>(0i, 1i, -1661i, i32(-2147483648)));

var<private> global4: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(112f, -816f)))) - vec2<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -786f)));
    global2 = array<Struct_1, 25>();
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_1.xy))), vec2<f32>(1155f, var_0.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-364f, var_0.x))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(899f, -1085f))))))));
    global3 = array<vec4<i32>, 24>();
    global4 = vec3<bool>(!any(global4.zy) & true, true, global4.x);
    return -1i;
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: i32, arg_3: vec3<u32>) -> i32 {
    var var_0 = arg_0.c.b;
    var var_1 = Struct_2(arg_1.x, Struct_1(vec4<i32>(arg_2, countOneBits(u_input.a.x) | -global1[_wgslsmith_index_u32(76002u, 12u)], _wgslsmith_dot_vec4_i32(~var_0.a, var_0.a & global3[_wgslsmith_index_u32(arg_3.x, 24u)]), 0i), ~firstTrailingBit(arg_2), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-542f, arg_1.x, arg_1.x) * vec3<f32>(-664f, -534f, arg_0.c.b.c.x)) - vec3<f32>(-1492f, 358f, arg_1.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.c, arg_0.c.b.c)))), arg_0.c.b.d, global4.x), true);
    let var_2 = ~countOneBits(vec2<u32>(_wgslsmith_sub_u32(arg_3.x >> (arg_0.c.b.d % 32u), 132898u), max(~15598u, ~148442u)));
    var var_3 = Struct_3(firstLeadingBit(~(1u ^ _wgslsmith_sub_u32(var_1.b.d, arg_3.x))), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(850f - 1530f) - _wgslsmith_f_op_f32(-1193f * arg_1.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-565f - var_1.b.c.x))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b, -488f)) + _wgslsmith_f_op_f32(arg_1.x * -647f)))));
    return firstTrailingBit(~(-_wgslsmith_dot_vec3_i32(arg_0.c.b.a.xwz, vec3<i32>(var_3.b, u_input.a.x, 31174i)) ^ 1i));
}

fn func_1() -> vec4<u32> {
    global2 = array<Struct_1, 25>();
    var var_0 = global4.yx;
    let var_1 = ~u_input.b.x;
    let var_2 = vec3<bool>(_wgslsmith_sub_i32(func_2(-1000f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1915f, 874f, -1078f, -408f) * vec4<f32>(436f, 1020f, -348f, 530f))), -(~u_input.a.x)) <= func_3(Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, var_1), u_input.b.wxy), _wgslsmith_f_op_f32(step(-227f, -1000f)), Struct_2(1772f, global2[_wgslsmith_index_u32(u_input.b.x, 25u)], false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1699f, 1348f)), ~2147483647i, u_input.b.yzy), true, global4.x);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -299f), global2[_wgslsmith_index_u32(0u, 25u)], !((var_1 > _wgslsmith_mod_u32(3968u, u_input.b.x)) || var_2.x));
    return u_input.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32) -> u32 {
    global0 = -(~firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, arg_1.b.b), 1i >> (arg_1.b.d % 32u))));
    var var_0 = vec3<u32>(arg_0.x, countOneBits(0u), ~(~48974u)) | (u_input.b.yyz & func_1().yxz);
    global0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(countOneBits(-2147483647i), -3088i), -global1[_wgslsmith_index_u32(~4294967295u, 12u)]);
    var var_1 = arg_1.b.c.x;
    global1 = array<i32, 12>();
    return _wgslsmith_mult_u32(var_0.x, ~max(~4294967295u, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(_wgslsmith_mult_u32(48051u, u_input.b.x) ^ 4294967295u, ~4088u) ^ func_4(func_1(), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-217f - 421f)), Struct_1(_wgslsmith_clamp_vec4_i32(global3[_wgslsmith_index_u32(u_input.b.x, 24u)], vec4<i32>(global1[_wgslsmith_index_u32(17590u, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.a.x, -17075i), vec4<i32>(-19277i, -1i, u_input.a.x, 79072i)), 1i, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1130f, 1755f, -445f), vec3<f32>(-639f, 3399f, 1581f))), u_input.b.x, global4.x), false), _wgslsmith_mult_u32(~(1u & u_input.b.x), ~_wgslsmith_mult_u32(14057u, 0u)));
    let var_1 = Struct_3(95672u, ~u_input.a.x, -462f);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1169f)), var_1.c, var_1.c) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-678f, var_1.c, -630f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-926f, var_1.c, 148f) - vec3<f32>(var_1.c, var_1.c, -1648f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(978f))), var_1.c, _wgslsmith_f_op_f32(max(284f, -443f)))));
    global4 = select(vec3<bool>(true, !global4.x, global4.x), !(!vec3<bool>(global4.x || true, !global4.x, global4.x)), true);
    var var_3 = select(vec3<bool>(false, global4.x, countOneBits(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(global1[_wgslsmith_index_u32(var_1.a, 12u)], global1[_wgslsmith_index_u32(31781u, 12u)]))) < u_input.a.x), select(vec3<bool>(any(select(vec4<bool>(global4.x, global4.x, false, true), vec4<bool>(global4.x, true, global4.x, true), vec4<bool>(false, true, true, true))), true & (var_2.x < 920f), global4.x), !(!vec3<bool>(global4.x, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, global4.x == global4.x, false), vec3<bool>(false, false, !global4.x))), any(vec2<bool>(var_2.x != _wgslsmith_f_op_f32(abs(var_1.c)), _wgslsmith_add_i32(2147483647i, var_1.b) >= (i32(-1i) * -2147483647i))));
    global0 = var_1.b & ~35447i;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-var_2.x)))), global2[_wgslsmith_index_u32(max(u_input.b.x & min(~46170u, _wgslsmith_mult_u32(var_1.a, 4294967295u)), _wgslsmith_dot_vec4_u32(min(u_input.b, u_input.b), vec4<u32>(var_1.a, 4294967295u, u_input.b.x, var_1.a)) >> ((min(57303u, u_input.b.x) << (~54840u % 32u)) % 32u)), 25u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(var_1.a << (24810u % 32u)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, 25901u, u_input.b.x), var_1.a)), 12u)] < u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(24003u, var_4.b.d << (var_1.a % 32u), 2381u, ~func_4(u_input.b, Struct_2(var_1.c, global2[_wgslsmith_index_u32(var_4.b.d, 25u)], var_4.c), 60472u)) | (abs(reverseBits(vec4<u32>(u_input.b.x, var_1.a, var_4.b.d, var_4.b.d))) ^ (~vec4<u32>(5512u, 34128u, var_1.a, 0u) >> (vec4<u32>(var_4.b.d, 12891u, 4294967295u, var_1.a) % vec4<u32>(32u)))));
}

