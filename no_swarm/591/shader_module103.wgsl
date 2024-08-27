struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-730f, 1i, vec3<bool>(true, false, false)), Struct_1(-1000f, 14867i, vec3<bool>(true, false, false)), Struct_1(-231f, 66658i, vec3<bool>(false, false, true)), Struct_1(-389f, 37067i, vec3<bool>(false, false, true)), Struct_1(425f, -1i, vec3<bool>(true, false, true)), Struct_1(-1001f, i32(-2147483648), vec3<bool>(false, false, false)), Struct_1(-720f, i32(-2147483648), vec3<bool>(true, true, true)), Struct_1(989f, 0i, vec3<bool>(true, true, false)), Struct_1(432f, 1i, vec3<bool>(false, false, true)), Struct_1(-595f, 9676i, vec3<bool>(false, true, false)), Struct_1(1656f, -33234i, vec3<bool>(false, true, true)), Struct_1(-594f, 12859i, vec3<bool>(false, true, true)), Struct_1(-1000f, 6611i, vec3<bool>(true, false, false)), Struct_1(132f, 17324i, vec3<bool>(true, false, false)), Struct_1(570f, i32(-2147483648), vec3<bool>(false, true, false)), Struct_1(-771f, -70399i, vec3<bool>(true, false, false)), Struct_1(-208f, -1i, vec3<bool>(false, true, true)));

var<private> global1: f32 = -217f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<f32>) -> vec3<u32> {
    global0 = array<Struct_1, 17>();
    var var_0 = arg_0.x;
    global0 = array<Struct_1, 17>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_2.x)) + _wgslsmith_f_op_f32(286f * -121f)), -arg_0.x, !vec3<bool>(-6683i == arg_0.x, all(vec3<bool>(false, true, false)), arg_1 >= arg_2.x)), 1057f, vec2<bool>(true, (_wgslsmith_clamp_u32(19344u, 4294967295u, 0u) == min(u_input.b.x, 13104u)) || true), global0[_wgslsmith_index_u32(~113932u, 17u)], Struct_1(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), select(-22921i, 24741i, !select(true, false, false)), !vec3<bool>(any(vec4<bool>(true, false, true, true)), any(vec3<bool>(true, true, true)), true)));
    return max(~(~u_input.a >> (firstLeadingBit(select(u_input.b, u_input.a, var_1.a.c.x)) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b | vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x), u_input.a ^ u_input.b), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 64108u, u_input.b.x)) ^ vec3<u32>(~1u, ~u_input.a.x, u_input.a.x));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_5 {
    global0 = array<Struct_1, 17>();
    var var_0 = !arg_3.c.yz;
    var var_1 = abs(func_3(vec2<i32>(arg_3.b, arg_3.b), -1332f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_1, arg_1))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 1008f), vec4<f32>(arg_3.a, arg_3.a, arg_3.a, -1480f)), vec4<f32>(arg_1.x, -176f, arg_1.x, arg_3.a)))));
    let var_2 = vec4<i32>(45228i, -479i, 695i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b, arg_3.b, -28444i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_3.b, -5840i, arg_3.b), vec3<i32>(16835i, -2448i, arg_3.b))) & -1i) >> ((_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, 99410u, 0u, var_1.x)), abs(~vec4<u32>(85342u, 57349u, 67827u, var_1.x)), vec4<u32>(u_input.a.x | 1u, u_input.a.x, u_input.a.x, _wgslsmith_add_u32(u_input.b.x, u_input.a.x))) >> (select(vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(1u, var_1.x), var_1.x, var_1.x | 1u), min(firstLeadingBit(vec4<u32>(66258u, 2458u, var_1.x, var_1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 64189u, u_input.a.x, 0u), vec4<u32>(24937u, u_input.a.x, 11946u, 1u))), !select(vec4<bool>(arg_3.c.x, true, false, false), vec4<bool>(true, arg_0, arg_3.c.x, true), vec4<bool>(arg_3.c.x, true, false, true))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_0 = vec2<bool>(arg_3.c.x, true);
    return Struct_5(!(!arg_3.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.x, -791f, arg_3.a, arg_3.a), vec4<f32>(-152f, arg_3.a, arg_3.a, -1443f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(3253f, -386f, arg_3.a, -1139f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, arg_3.a, 1168f, arg_1.x)))), arg_1.zyz);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a.a), 1i, vec3<bool>(true, true, true));
    var var_1 = firstTrailingBit(~u_input.b.x | u_input.a.x);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -673f) - arg_0.b.x);
    let var_2 = vec3<bool>(arg_1.a.c.x, true, true);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b) * _wgslsmith_f_op_vec4_f32(trunc(arg_0.b)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<u32>) -> Struct_5 {
    var var_0 = Struct_5(all(vec2<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false)), true)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1077f - 556f), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(-3190f, arg_0)), _wgslsmith_f_op_f32(ceil(arg_0)), 331f), _wgslsmith_f_op_vec4_f32(func_4(func_2(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -565f, arg_0) - vec4<f32>(-1836f, -1000f, 1301f, 891f)), select(true, false, true), Struct_1(544f, arg_1, vec3<bool>(true, true, true))), Struct_4(Struct_1(909f, arg_1, vec3<bool>(false, false, true)), global0[_wgslsmith_index_u32(abs(599u), 17u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-351f, -684f, 1552f))))));
    let var_1 = var_0.a;
    global0 = array<Struct_1, 17>();
    let var_2 = ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 0u, arg_2.x, 20784u), vec4<u32>(arg_2.x, arg_2.x, u_input.b.x, 0u)) ^ ~abs(~vec4<u32>(arg_2.x, 4294967295u, 4294967295u, u_input.a.x)));
    global0 = array<Struct_1, 17>();
    return func_2((!(u_input.a.x < 4294967295u) | var_0.a) | true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 * -420f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -665f), _wgslsmith_f_op_f32(max(arg_0, arg_0))))), -326f, -492f, func_2(false, var_0.b, all(!vec2<bool>(var_0.a, false)), global0[_wgslsmith_index_u32(~(u_input.b.x ^ var_2.x), 17u)]).b.x), var_0.a, global0[_wgslsmith_index_u32((_wgslsmith_add_u32(4294967295u, arg_2.x) | arg_2.x) >> (51544u % 32u), 17u)]);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5) -> vec4<f32> {
    global0 = array<Struct_1, 17>();
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(8962i, -reverseBits(36993i), max(~arg_0.a.b, _wgslsmith_add_i32(arg_0.e.b, 1i)) | (select(38933i, arg_0.e.b, false) ^ select(25651i, 7765i, false))), _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -15441i, _wgslsmith_mult_i32(1i, arg_0.e.b), arg_0.a.b | arg_0.d.b) & vec3<i32>(~arg_0.d.b, _wgslsmith_mod_i32(arg_0.a.b, -2147483647i), firstTrailingBit(-54852i)), vec3<i32>(arg_0.d.b, countOneBits(arg_0.a.b), -(i32(-1i) * -2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1065f)))) - arg_0.a.a));
    global1 = arg_1.c.x;
    var_0 = ~_wgslsmith_dot_vec3_i32(select(~firstTrailingBit(vec3<i32>(arg_0.d.b, -53532i, arg_0.a.b)), -_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_0.d.b, 24671i), vec3<i32>(arg_0.d.b, arg_0.e.b, -20542i)), true & all(vec4<bool>(arg_1.a, true, true, arg_1.a))), vec3<i32>(_wgslsmith_mult_i32(~2147483647i, countOneBits(arg_0.e.b)), arg_0.a.b, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), max(vec2<i32>(arg_0.e.b, arg_0.a.b), vec2<i32>(arg_0.e.b, 0i)))));
    return arg_1.b;
}

fn func_6(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: f32) -> vec4<f32> {
    var var_0 = func_2(func_2(func_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-861f, -1164f), _wgslsmith_f_op_f32(arg_3 + -609f))), 11251i, u_input.b.xy).a, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1292f * arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(376f, arg_3)), arg_3, -1000f), func_1(arg_3, ~(~arg_2.b.b), ~(~u_input.b.zz)).a, global0[_wgslsmith_index_u32(95310u, 17u)]).a, _wgslsmith_f_op_vec4_f32(exp2(arg_0)), false || (any(vec3<bool>(false, true, true)) | all(select(arg_2.b.c, arg_2.a.c, arg_2.a.c.x))), arg_2.a).b.x;
    var_0 = 886f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.a.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(316f)) - _wgslsmith_f_op_f32(-arg_3))) * arg_0.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * arg_3);
    let var_1 = firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.b.x, ~(~0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), ~(~u_input.a.zy))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-807f, -1145f, _wgslsmith_div_f32(1748f, arg_3), 1000f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(742f, arg_3, -2213f, arg_2.b.a))), !(!vec4<bool>(arg_2.b.c.x, arg_1.x, arg_2.a.c.x, arg_1.x))))));
}

fn func_7(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: u32) -> Struct_1 {
    global0 = array<Struct_1, 17>();
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * -1301f))), select(-1i, _wgslsmith_sub_i32(10639i, -1i), arg_1.x <= arg_2.c.x) | countOneBits(max(354i, 1i)), select(vec3<bool>(arg_2.a, !arg_2.a, arg_2.a), vec3<bool>(!arg_2.a, true, false || arg_2.a), select(select(vec3<bool>(false, false, false), vec3<bool>(arg_2.a, true, true), arg_2.a), !vec3<bool>(false, true, arg_2.a), arg_2.a))), global0[_wgslsmith_index_u32(0u, 17u)]);
    var var_1 = 47091u;
    var_1 = ~max(21910u, ~func_3(vec2<i32>(19424i, 2147483647i) | vec2<i32>(var_0.a.b, 26755i), 260f, _wgslsmith_f_op_vec4_f32(floor(arg_2.b))).x);
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(0i, -6878i) << (arg_0.x % 32u), _wgslsmith_clamp_i32(-11134i, 0i, _wgslsmith_mult_i32(abs(-2147483647i), ~var_0.b.b))), 27555i);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(1i >> (1u % 32u));
    let var_1 = false;
    global1 = 1000f;
    let var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(-max(vec3<i32>(var_0, 10392i, 29582i), vec3<i32>(-1i, 1i, var_0)) >> (u_input.b % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -7769i, var_0, min(var_0, -2147483647i)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(-20990i, var_0, var_0))))), -43919i, -4244i, abs(0i));
    let var_3 = func_7(firstLeadingBit(u_input.b.xx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(898f, 539f, -900f, -1132f))))), Struct_5(var_1, _wgslsmith_f_op_vec4_f32(func_6(_wgslsmith_f_op_vec4_f32(func_5(Struct_2(Struct_1(2212f, -15091i, vec3<bool>(var_1, var_1, var_1)), 646f, vec2<bool>(false, var_1), global0[_wgslsmith_index_u32(4294967295u, 17u)], Struct_1(-414f, var_0, vec3<bool>(false, false, var_1))), func_1(-1094f, var_0, vec2<u32>(0u, u_input.b.x)))), !select(vec4<bool>(var_1, false, var_1, false), vec4<bool>(var_1, false, var_1, false), vec4<bool>(var_1, true, true, var_1)), Struct_4(Struct_1(430f, -1943i, vec3<bool>(var_1, true, true)), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 17u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1028f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1053f * 557f), _wgslsmith_f_op_f32(f32(-1f) * -864f), -105f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, 272f, -101f))))), u_input.a.x);
    var var_4 = func_7(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(func_3(var_2.wz, var_3.a, vec4<f32>(-201f, var_3.a, var_3.a, -796f)).x, ~21465u), ~u_input.a.x), vec2<u32>(u_input.a.x << (56732u % 32u), _wgslsmith_mult_u32(u_input.b.x, 68078u)) | u_input.b.yy), vec4<f32>(var_3.a, var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1955f, var_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a, _wgslsmith_f_op_f32(f32(-1f) * -764f)))), func_2(var_3.c.x | func_2(var_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, var_3.a, 673f, var_3.a) - vec4<f32>(290f, var_3.a, -130f, 455f)), true, Struct_1(-702f, 12914i, var_3.c)).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, _wgslsmith_f_op_vec4_f32(func_4(Struct_5(false, vec4<f32>(601f, 1000f, var_3.a, 938f), vec3<f32>(var_3.a, -1298f, var_3.a)), Struct_4(Struct_1(var_3.a, 61761i, var_3.c), global0[_wgslsmith_index_u32(3233u, 17u)]))).x, 1201f, 1f)), func_2(false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1025f, -631f, 573f, -217f), vec4<f32>(var_3.a, var_3.a, -296f, -505f), vec4<bool>(true, true, false, true))), vec4<f32>(var_3.a, -1592f, -1117f, 329f), select(vec4<bool>(true, var_1, true, var_1), vec4<bool>(true, var_3.c.x, true, var_3.c.x), true))), true && !var_1, Struct_1(-1406f, 1i, var_3.c)).a, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.a))), -abs(11747i), !func_7(vec2<u32>(u_input.a.x, u_input.a.x), vec4<f32>(-250f, var_3.a, var_3.a, -1000f), Struct_5(true, vec4<f32>(1000f, var_3.a, var_3.a, var_3.a), vec3<f32>(377f, var_3.a, var_3.a)), 45806u).c)), func_3(var_2.yw, 1551f, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(func_1(var_3.a, var_3.b, u_input.b.zy).c.x, _wgslsmith_f_op_f32(var_3.a - -248f), var_3.a, _wgslsmith_f_op_f32(-1000f * -1000f))))).x).c;
    global0 = array<Struct_1, 17>();
    let var_5 = _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b.xz), u_input.b.yx);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(961f, _wgslsmith_f_op_f32(exp2(var_3.a))), -1i, abs(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(33306u, 21415u, 0u, u_input.a.x), vec4<u32>(u_input.b.x, 3160u, 88027u, 1u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.a, -1701f))) + vec2<f32>(177f, var_3.a)))));
}

