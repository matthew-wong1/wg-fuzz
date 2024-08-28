struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(i32(-2147483648), i32(-2147483648), -2981i, i32(-2147483648)), vec4<i32>(1i, 0i, 1i, -66831i), vec4<i32>(1i, 2147483647i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -1i, 40229i, 3193i), vec4<i32>(26310i, -17977i, -1i, 1876i), vec4<i32>(-21525i, -39958i, 2147483647i, -50684i), vec4<i32>(-12955i, 13293i, 0i, 2147483647i), vec4<i32>(1837i, -11142i, 12286i, -46976i), vec4<i32>(8984i, i32(-2147483648), 23460i, 1i), vec4<i32>(-66774i, -19052i, -28590i, -1i), vec4<i32>(-45833i, -1i, 56851i, 16129i), vec4<i32>(19235i, 0i, -950i, 21131i), vec4<i32>(-25494i, 1i, 44610i, 14041i), vec4<i32>(2147483647i, 1i, -1i, -1i));

var<private> global1: bool = true;

var<private> global2: vec2<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    var var_0 = u_input.c >> (u_input.a % 32u);
    var var_1 = _wgslsmith_div_i32(u_input.c, -(firstTrailingBit(-41846i) | 1i) << (reverseBits(countOneBits(_wgslsmith_mod_u32(0u, 28925u))) % 32u));
    global0 = array<vec4<i32>, 14>();
    let var_2 = false;
    var var_3 = Struct_1(18996i, true);
    return select(u_input.b, ~26369u, _wgslsmith_f_op_f32(ceil(937f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1575f, -454f)) + 1050f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(u_input.e.x, true && !(all(vec2<bool>(global2.x, arg_3.b)) || select(false, arg_1.b, false)));
    let var_1 = func_3(true, vec2<bool>(!global2.x, !arg_3.b && false)) == ~u_input.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(674f)) * -1000f), _wgslsmith_f_op_f32(sign(1862f)), _wgslsmith_f_op_f32(-249f - 1f)));
    let var_3 = Struct_2(var_2.yz, arg_1);
    global1 = !(!(~_wgslsmith_div_u32(0u, u_input.a) < func_3(true, select(vec2<bool>(global2.x, false), vec2<bool>(false, false), vec2<bool>(var_3.b.b, var_3.b.b)))));
    return select(-vec4<i32>(~(-1i), 2147483647i, 19462i, -abs(-1i)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2, firstLeadingBit(19953u)), 14u)], false);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(func_2(vec2<i32>(arg_0.a, 1i), Struct_1(1i, arg_2.b.b), 3394u, arg_0) << (vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.b) % vec4<u32>(32u)), countOneBits(abs(vec4<i32>(2147483647i, -50908i, arg_0.a, u_input.c)))), -global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(u_input.a), 0u, u_input.a), 14u)]) < ~arg_0.a;
    var var_1 = arg_0;
    var_1 = Struct_1(firstTrailingBit(~10113i) >> ((~1u & u_input.a) % 32u), !(arg_2.a.x >= _wgslsmith_f_op_f32(-arg_2.a.x)));
    global0 = array<vec4<i32>, 14>();
    global2 = !(!(!select(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(global2.x, arg_2.b.b), var_1.b), select(vec2<bool>(var_1.b, true), vec2<bool>(false, true), false), false || var_0)));
    return select(select(vec2<bool>(arg_0.b & (arg_2.a.x <= arg_1.x), all(vec3<bool>(global2.x, true, true))), vec2<bool>(select(any(vec4<bool>(arg_0.b, false, var_0, arg_2.b.b)), var_1.b, all(vec3<bool>(var_0, false, true))), false), true), !select(!(!vec2<bool>(global2.x, true)), vec2<bool>(true, true), select(true, var_0, false) && !arg_0.b), !select(select(true, false, false), arg_2.b.b, arg_0.b) | all(select(vec2<bool>(true, true), vec2<bool>(arg_2.b.b, true), true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(arg_2, -1250f, global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(select(-168f, -1303f, true)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) - vec2<f32>(arg_2, arg_2))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1104f)), vec2<f32>(arg_2, -1187f), any(vec4<bool>(true, false, false, true)))))), Struct_1(-_wgslsmith_mult_i32(abs(-1371i), 1i), all(select(select(vec3<bool>(false, false, arg_0.x), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, true, arg_0.x)), vec3<bool>(true, true, true), select(vec3<bool>(global2.x, arg_0.x, arg_0.x), vec3<bool>(true, global2.x, arg_0.x), vec3<bool>(false, global2.x, true))))));
    let var_1 = 903f;
    var var_2 = Struct_2(var_0.a, var_0.b);
    var var_3 = select(!select(!select(vec4<bool>(false, var_2.b.b, false, var_2.b.b), vec4<bool>(var_0.b.b, var_2.b.b, var_2.b.b, true), vec4<bool>(var_0.b.b, var_2.b.b, var_0.b.b, false)), vec4<bool>(var_2.b.b, false, global2.x & false, false), vec4<bool>(select(var_0.b.b, arg_0.x, var_2.b.b), all(vec2<bool>(true, var_2.b.b)), var_0.b.b, true)), select(vec4<bool>(true, all(select(vec4<bool>(false, var_0.b.b, global2.x, arg_0.x), vec4<bool>(var_2.b.b, global2.x, global2.x, var_0.b.b), global2.x)), !all(vec2<bool>(false, var_2.b.b)), true), !vec4<bool>(true, -229f < var_0.a.x, all(arg_0), !var_0.b.b), vec4<bool>(var_0.b.b, _wgslsmith_f_op_f32(max(1069f, arg_2)) < -1000f, arg_0.x, true)), !all(select(!vec2<bool>(var_2.b.b, true), arg_0, !arg_0.x)));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(var_2.a)), vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-185f * arg_2))))), var_0.b);
    return Struct_2(var_0.a, var_2.b);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = vec4<u32>(83070u, ~0u, 22212u, _wgslsmith_mod_u32(firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(23618u, u_input.a, 42071u), arg_2.yyz)), _wgslsmith_sub_u32(select(arg_1, 1u, true), ~arg_2.x) | arg_2.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-231f * -789f)), vec2<f32>(-227f, _wgslsmith_div_f32(-139f, 852f)))), 13203u > func_3(false, vec2<bool>(false, arg_0.b.b)))) + arg_0.a);
    global2 = select(select(vec2<bool>(true, true), vec2<bool>(global2.x, true), all(!vec3<bool>(false, global2.x, true))), !(!select(select(vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), true), vec2<bool>(false, true), func_1(arg_0.b, vec2<f32>(1117f, 1000f), arg_0))), vec2<bool>(any(vec2<bool>(global2.x, false)), true));
    global0 = array<vec4<i32>, 14>();
    let var_2 = arg_0.a.x != _wgslsmith_f_op_f32(ceil(var_1.x));
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.a.x)))))), arg_0.a.x), arg_0.b);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global0 = array<vec4<i32>, 14>();
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x), vec3<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x))) * vec3<f32>(arg_2.a.x, arg_2.a.x, func_4(vec2<bool>(true, arg_2.b.b), global0[_wgslsmith_index_u32(4294967295u, 14u)], arg_2.a.x, u_input.a).a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, 259f, arg_2.a.x)) - vec3<f32>(arg_2.a.x, -638f, 1090f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-544f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x), _wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1585f - arg_2.a.x))))));
    var var_1 = var_0;
    let var_2 = -292f;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(514f)), 529f) - _wgslsmith_f_op_f32(1526f * -647f)), _wgslsmith_f_op_f32(max(-566f, _wgslsmith_f_op_f32(sign(-753f))))), func_6(Struct_1(u_input.e.x, any(select(vec2<bool>(global2.x, true), vec2<bool>(false, false), vec2<bool>(false, true)))), Struct_1(u_input.e.x | ~16224i, 15655u == u_input.b), func_5(func_4(func_1(Struct_1(-2147483647i, false), vec2<f32>(468f, 631f), Struct_2(vec2<f32>(-1891f, 959f), Struct_1(1i, global2.x))), vec4<i32>(-1i, u_input.e.x, 8591i, u_input.d.x), _wgslsmith_f_op_f32(-1000f - 319f), 1u), ~0u, vec4<u32>(u_input.a, u_input.b, 33223u, 76019u))));
    var var_1 = func_4(vec2<bool>(!select(any(vec2<bool>(var_0.b.b, global2.x)), u_input.d.x != u_input.d.x, true), func_4(vec2<bool>(true | var_0.b.b, !global2.x), select(func_2(u_input.d, Struct_1(-37223i, true), u_input.a, Struct_1(-16275i, true)), vec4<i32>(var_0.b.a, var_0.b.a, 26041i, u_input.d.x), !vec4<bool>(global2.x, true, global2.x, true)), _wgslsmith_f_op_f32(trunc(var_0.a.x)), u_input.a).b.b), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.b.a, -2371i), vec3<i32>(u_input.c, -18380i, 0i)), select(var_0.b.a, var_0.b.a, global2.x), var_0.b.a, func_5(Struct_2(vec2<f32>(var_0.a.x, 1714f), Struct_1(2147483647i, global2.x)), 21053u, vec4<u32>(22052u, u_input.a, u_input.b, u_input.a)).b.a), ~(global0[_wgslsmith_index_u32(u_input.a, 14u)] | vec4<i32>(1i, var_0.b.a, u_input.e.x, var_0.b.a)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.e.x, 36935i, u_input.d.x), global0[_wgslsmith_index_u32(u_input.a, 14u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(589f, var_0.a.x, global2.x)) + -1416f), _wgslsmith_f_op_f32(-var_0.a.x)))), u_input.b).b;
    var var_2 = abs(vec3<i32>(~31813i, var_0.b.a, var_1.a));
    var_2 = _wgslsmith_mult_vec3_i32(-func_2(var_2.yy, var_0.b, ~4294967295u, func_5(Struct_2(vec2<f32>(var_0.a.x, -1206f), var_0.b), u_input.b, vec4<u32>(u_input.b, u_input.a, 0u, 1u)).b).wwz ^ vec3<i32>(i32(-1i) * -2147483647i, ~var_2.x, func_4(select(vec2<bool>(false, false), vec2<bool>(global2.x, var_1.b), global2.x), global0[_wgslsmith_index_u32(u_input.a, 14u)], _wgslsmith_f_op_f32(var_0.a.x * 916f), _wgslsmith_sub_u32(4294967295u, u_input.a)).b.a), func_2(reverseBits(var_2.xx), func_4(!vec2<bool>(var_0.b.b, global2.x), abs(vec4<i32>(var_1.a, -1i, u_input.d.x, u_input.d.x)), _wgslsmith_div_f32(var_0.a.x, 1000f), abs(1u)).b, ~(~u_input.a), Struct_1(~(-5205i), global2.x)).zwy << (_wgslsmith_mod_vec3_u32(~reverseBits(vec3<u32>(4294967295u, u_input.a, 21161u)), ~(~vec3<u32>(u_input.a, 0u, u_input.a))) % vec3<u32>(32u)));
    let var_3 = var_0.b.b;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(433f, var_0.a.x, 1183f)))) * vec3<f32>(-1706f, var_0.a.x, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1976f + var_0.a.x), var_0.a.x, _wgslsmith_div_f32(var_0.a.x, var_0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~select(~vec3<u32>(4294967295u, 67926u, 22713u), firstTrailingBit(vec3<u32>(58850u, u_input.b, 14234u)), true), countOneBits(vec3<u32>(56492u, u_input.b, u_input.a)) | vec3<u32>(u_input.a, 55729u, ~1u), select(vec3<bool>(all(vec4<bool>(false, false, true, true)), true, all(vec2<bool>(false, false))), vec3<bool>(var_1.b, var_0.b.a <= var_0.b.a, all(vec4<bool>(true, false, false, var_0.b.b))), true)), -var_2.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4.x, var_4.x, var_0.a.x, var_0.a.x), vec4<f32>(var_0.a.x, 110f, var_0.a.x, 189f))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, 1722f, 1392f, var_4.x)), _wgslsmith_div_vec4_f32(vec4<f32>(2460f, var_0.a.x, var_4.x, 388f), vec4<f32>(var_0.a.x, var_0.a.x, var_4.x, 1650f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, -1802f, var_4.x, 101f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-138f, var_4.x, var_0.a.x, -778f), vec4<f32>(var_0.a.x, -597f, var_4.x, var_4.x))))), max(1u, firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.b, u_input.b), ~vec3<u32>(82710u, 29794u, 1u)))), _wgslsmith_add_u32(reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.b, 1u))), 4294967295u));
}

