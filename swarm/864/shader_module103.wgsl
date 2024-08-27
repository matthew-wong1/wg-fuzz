struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9>;

var<private> global1: array<f32, 4> = array<f32, 4>(-271f, -404f, -911f, 239f);

var<private> global2: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(-1711f, 517f, -668f), vec3<f32>(111f, 775f, 2439f), vec3<f32>(986f, 547f, -1530f), vec3<f32>(959f, -534f, 432f), vec3<f32>(662f, -672f, 1000f), vec3<f32>(-929f, -1619f, 1036f), vec3<f32>(883f, 1369f, 249f), vec3<f32>(841f, 705f, -1207f), vec3<f32>(-927f, -1986f, -1139f), vec3<f32>(1201f, -666f, 440f), vec3<f32>(-921f, 295f, 2478f), vec3<f32>(584f, -389f, 896f), vec3<f32>(1000f, 1000f, -477f), vec3<f32>(-612f, -742f, 517f), vec3<f32>(-481f, 1274f, -1204f), vec3<f32>(-259f, -404f, 2289f), vec3<f32>(316f, -699f, 288f), vec3<f32>(-1473f, -1424f, 707f), vec3<f32>(-2181f, -1000f, 812f));

var<private> global3: vec2<i32>;

var<private> global4: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    global2 = array<vec3<f32>, 19>();
    global3 = u_input.b.zw;
    var var_0 = Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_f_op_f32(step(-337f, 3172f)))), global1[_wgslsmith_index_u32(~(~u_input.a), 4u)], _wgslsmith_div_f32(-169f, global1[_wgslsmith_index_u32(~4902u, 4u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 4u)] - 909f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], 831f, global1[_wgslsmith_index_u32(4220u, 4u)], -948f) + vec4<f32>(420f, global1[_wgslsmith_index_u32(arg_0, 4u)], 137f, global1[_wgslsmith_index_u32(arg_0, 4u)])), vec4<f32>(-1254f, global1[_wgslsmith_index_u32(1u, 4u)], -256f, -544f))))), Struct_1(global1[_wgslsmith_index_u32(~(~u_input.a), 4u)], _wgslsmith_f_op_f32(step(-1075f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 4u)]) - _wgslsmith_f_op_f32(f32(-1f) * -2120f)))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), all(vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), all(vec3<bool>(false, true, true)))), arg_0), vec3<u32>(_wgslsmith_div_u32(4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 10087u, 48661u), vec3<u32>(u_input.a, 67409u, u_input.a)) % 32u), 34092u), 1u, 4294967295u));
    global3 = abs(countOneBits(u_input.b.wx));
    var_0 = Struct_3(vec4<f32>(1142f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.b.a))))), 120f, global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_0, ~u_input.a), 4u)]), var_0.b, var_0.c);
    return ~(~max(min(~vec4<u32>(6071u, var_0.c.x, 82903u, var_0.b.d), vec4<u32>(var_0.b.d, 6701u, 100574u, u_input.a)), vec4<u32>(0u, 1u, _wgslsmith_sub_u32(var_0.c.x, arg_0), 40895u)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: i32) -> f32 {
    var var_0 = !select(!arg_0.c, !select(vec4<bool>(false, arg_0.c.x, false, arg_0.c.x), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, arg_0.c.x, true), vec4<bool>(false, true, false, arg_0.c.x)), vec4<bool>(false, arg_0.c.x, true, true)), !select(!arg_0.c, arg_0.c, select(vec4<bool>(true, arg_0.c.x, true, false), vec4<bool>(arg_0.c.x, true, arg_0.c.x, false), false)));
    global3 = -vec2<i32>(arg_3, -countOneBits(~global3.x));
    var var_1 = -2147483647i;
    var var_2 = var_0.x;
    return _wgslsmith_f_op_f32(-1099f - _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(arg_0.d, 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-160f, -710f)) - -281f))));
}

fn func_2() -> Struct_1 {
    var var_0 = ~u_input.a;
    let var_1 = vec2<u32>(~u_input.a, max(u_input.a, _wgslsmith_mult_u32(u_input.a, ~u_input.a))) ^ max(vec2<u32>(u_input.a, abs(u_input.a)) << (vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(101601u, u_input.a, u_input.a), vec3<u32>(u_input.a, 81809u, 1u))) % vec2<u32>(32u)), vec2<u32>(~(~0u), ~u_input.a << (29393u % 32u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(876f * -680f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -366f), -562f)), false))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4205u, 4u)]), _wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(87061u, 4u)]), vec4<bool>(true, true, true, true), var_1.x), 1u, func_3(_wgslsmith_div_u32(1u, 95219u)), u_input.b.x)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(12468u, var_1.x, 26990u, var_1.x), vec4<u32>(var_1.x, u_input.a, 24864u, var_1.x)), 4u)]))));
    var var_3 = global0[_wgslsmith_index_u32(1u, 9u)];
    global3 = firstLeadingBit(~abs(u_input.b.yx));
    return Struct_1(global1[_wgslsmith_index_u32(func_3(~(~_wgslsmith_sub_u32(11952u, var_3.b.d.d))).x, 4u)], global1[_wgslsmith_index_u32(reverseBits(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.x, u_input.a), vec3<u32>(u_input.a, var_3.a, u_input.a)))), 4u)], select(var_3.b.d.c, vec4<bool>(var_3.b.a.c.x, true, ~4294967295u < _wgslsmith_clamp_u32(var_3.e.d, 50182u, var_3.a), false), var_3.b.c.c), ~(_wgslsmith_sub_u32(129214u, var_1.x) & firstTrailingBit(u_input.a)) ^ _wgslsmith_div_u32(~var_1.x, func_3(_wgslsmith_mult_u32(var_1.x, var_1.x)).x));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_3) -> vec2<u32> {
    global3 = vec2<i32>(-global3.x, global3.x);
    global1 = array<f32, 4>();
    var var_0 = -u_input.b.xyx;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2495f + -1185f) - _wgslsmith_div_f32(359f, arg_0.a)) * arg_0.b)));
    var var_1 = true;
    return _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_2.b.d, 1u), arg_2.c.zz), ~vec2<u32>(1u, ~max(0u, arg_2.c.x)));
}

fn func_1(arg_0: f32, arg_1: u32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_1, 4294967295u), 4294967295u), 4u)];
    let var_1 = 25039u & _wgslsmith_dot_vec2_u32(func_5(func_2(), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(32631u, 4u)], arg_0)))), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -381f, 996f, -1000f) + vec4<f32>(arg_0, -960f, arg_0, -560f)), func_2(), vec3<u32>(0u, arg_1, u_input.a))), vec2<u32>(_wgslsmith_mult_u32(~4294967295u, 0u), ~_wgslsmith_add_u32(1u, 1u)));
    global4 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_1, 13286u), 4u)];
    var var_2 = func_2();
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), -782f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), -1299f, _wgslsmith_f_op_f32(sign(func_2().a)))), func_2(), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(arg_1, var_1, var_2.d) | abs(vec3<u32>(64894u, 67181u, 4294967295u))), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, var_1), vec3<u32>(4294967295u, 71052u, arg_1)) & firstTrailingBit(vec3<u32>(arg_1, 6758u, var_1)))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 9>();
    var var_0 = vec3<i32>(u_input.b.x, -_wgslsmith_clamp_i32(18705i, 37585i, global3.x), countOneBits(firstLeadingBit(func_1(global1[_wgslsmith_index_u32(1u, 4u)], ~u_input.a))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 162f, global1[_wgslsmith_index_u32(64764u, 4u)], global1[_wgslsmith_index_u32(73306u, 4u)])) + vec4<f32>(1182f, global1[_wgslsmith_index_u32(u_input.a, 4u)], -386f, global1[_wgslsmith_index_u32(u_input.a, 4u)]))))), func_2(), vec3<u32>(~u_input.a, abs(0u), ~firstLeadingBit(52424u)));
    global0 = array<Struct_4, 9>();
    var var_2 = -var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(select(vec4<u32>(11553u, 71867u, 1u, 0u) | vec4<u32>(0u, 0u, u_input.a, var_1.c.x), vec4<u32>(0u, var_1.c.x, 56926u, 1u) | vec4<u32>(u_input.a, 8592u, 0u, var_1.b.d), var_1.b.c), min(vec4<u32>(u_input.a, 1u, var_1.b.d, var_1.b.d) & vec4<u32>(54572u, var_1.b.d, 1u, var_1.b.d), vec4<u32>(5985u, u_input.a, u_input.a, 0u))) >> (~vec4<u32>(5241u, 16674u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 33626u, 0u), vec3<u32>(4294967295u, u_input.a, 41549u)), _wgslsmith_sub_u32(0u, var_1.b.d)) % vec4<u32>(32u)), var_1.c, 3657u, _wgslsmith_f_op_f32(-1f), abs(firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b.xx, var_0.xx))));
}

