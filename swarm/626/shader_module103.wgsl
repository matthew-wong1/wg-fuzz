struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true));

var<private> global1: vec2<f32> = vec2<f32>(729f, -698f);

var<private> global2: u32 = 4294967295u;

var<private> global3: array<i32, 7> = array<i32, 7>(-1i, 1i, 2147483647i, -9379i, -49041i, -1i, 2147483647i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> f32 {
    var var_0 = select(vec3<bool>(all(vec3<bool>(all(vec3<bool>(true, arg_0, false)), arg_0, true)), !(!(!arg_0)), true && (true | any(vec2<bool>(arg_0, true)))), vec3<bool>(true, true, -27770i < abs(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 7u)])), false);
    global1 = _wgslsmith_f_op_vec2_f32(-arg_1.xy);
    global2 = u_input.b.x;
    let var_1 = Struct_2(firstTrailingBit(min(2147483647i, ~7370i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) - -737f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2476f))), Struct_1(_wgslsmith_f_op_f32(240f + -1000f), vec3<u32>(select(u_input.b.x >> (u_input.b.x % 32u), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), any(var_0.yz)), u_input.b.x, 1u), select(4376u, _wgslsmith_mod_u32(179235u, 8637u) ^ (u_input.b.x ^ 1u), !(55380u >= u_input.b.x)), select(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(57189u, u_input.b.x), u_input.b)), 25u)], select(select(vec4<bool>(arg_0, arg_0, arg_0, true), global0[_wgslsmith_index_u32(55318u, 25u)], false), !global0[_wgslsmith_index_u32(u_input.b.x, 25u)], var_0.x), !(!var_0.x)), _wgslsmith_f_op_f32(round(-1338f))), 11530u, arg_0);
    global0 = array<vec4<bool>, 25>();
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1000f, arg_1, -678f) * vec4<f32>(arg_1, -442f, arg_1, global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_0, arg_1)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-392f, arg_0, 2030f, global1.x)))), vec4<f32>(295f, _wgslsmith_f_op_f32(arg_0 * -292f), _wgslsmith_f_op_f32(f32(-1f) * -2297f), _wgslsmith_f_op_f32(f32(-1f) * -2464f)), !global0[_wgslsmith_index_u32(~1u, 25u)])) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(840f, arg_1, arg_0, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -381f, -1143f, arg_1)))))));
    var var_1 = select(-vec4<i32>(~_wgslsmith_add_i32(global3[_wgslsmith_index_u32(1u, 7u)], 1i), u_input.a.x, -347i, _wgslsmith_mult_i32(firstTrailingBit(arg_3), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, 59917u, arg_2.x), 7u)])), ~(-_wgslsmith_sub_vec4_i32(-u_input.a, min(vec4<i32>(global3[_wgslsmith_index_u32(arg_2.x, 7u)], arg_3, arg_3, -16933i), u_input.a))), global0[_wgslsmith_index_u32(1u, 25u)]);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, vec4<f32>(arg_1, global1.x, arg_0, var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 1012f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -1023f), -1184f)));
    global0 = array<vec4<bool>, 25>();
    global2 = min(~1u, ~arg_2.x);
    return Struct_1(-240f, arg_2.wyx, 4294967295u, !global0[_wgslsmith_index_u32(1u, 25u)], -1356f);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_2(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(-1296f, _wgslsmith_add_vec3_u32(vec3<u32>(arg_3.c, u_input.b.x, arg_3.b.x), arg_3.b), ~reverseBits(1u) | _wgslsmith_dot_vec2_u32(arg_3.b.yx, ~u_input.b), func_2(global1.x, _wgslsmith_f_op_f32(func_3(false, _wgslsmith_div_vec4_f32(vec4<f32>(-163f, global1.x, -1109f, global1.x), vec4<f32>(836f, -1585f, 668f, -1276f)))), vec4<u32>(u_input.b.x, u_input.b.x, 9903u, arg_3.b.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u) % vec4<u32>(32u)), reverseBits(~20605i)).d, global1.x), ~(~(~92511u >> (select(u_input.b.x, 42063u, false) % 32u))), arg_3.b.x != 4294967295u);
    let var_1 = 1271f;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(_wgslsmith_f_op_f32(var_1 + global1.x), _wgslsmith_f_op_f32(func_3(true, vec4<f32>(var_0.c.a, 2713f, arg_3.e, global1.x))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u), vec4<u32>(4294967295u, 29865u, 1u, u_input.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_0.a, 0i, 1i), vec4<i32>(var_0.a, var_0.a, global3[_wgslsmith_index_u32(43495u, 7u)], var_0.a))).a, -1032f)));
    var var_3 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_sub_i32(var_0.a << (67188u % 32u), global3[_wgslsmith_index_u32(0u, 7u)])), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), arg_3, ~4294967295u, !any(!(!global0[_wgslsmith_index_u32(19911u, 25u)])));
    let var_4 = Struct_2(0i, _wgslsmith_f_op_f32(floor(var_1)), func_2(-367f, 1f, ~vec4<u32>(1u, ~u_input.b.x, var_3.c.c, u_input.b.x ^ 31137u), ~(~(~(-25514i)))), 1u, !all(vec3<bool>(var_0.c.d.x != var_0.c.d.x, all(vec2<bool>(arg_1.x, arg_1.x)), true)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(890f + _wgslsmith_f_op_f32(func_3(all(vec4<bool>(false, false, false, var_3.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1458f, 707f, arg_3.a, -172f) * vec4<f32>(-350f, var_0.c.e, -1000f, arg_3.a)))))))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-func_2(-256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-699f - global1.x)), vec4<u32>(u_input.b.x, u_input.b.x & 39027u, u_input.b.x & arg_0.d, arg_0.d), ~global3[_wgslsmith_index_u32(u_input.b.x, 7u)]).a), arg_0.c.b, select(_wgslsmith_dot_vec2_u32(~vec2<u32>(14163u, 23320u), arg_0.c.b.yy), 52909u, arg_0.c.d.x), !arg_0.c.d, 594f);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(457f))), var_0.a, _wgslsmith_f_op_f32(-global1.x), arg_0.c.e))));
    global0 = array<vec4<bool>, 25>();
    var var_2 = 8028i;
    global2 = 20420u;
    return Struct_2(1i, 101f, arg_0.c, ~41617u, !arg_0.e || all(var_0.d));
}

fn func_1() -> vec2<f32> {
    var var_0 = func_5(Struct_2(u_input.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.b), 25u)], vec2<bool>(true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), func_2(350f, global1.x, vec4<u32>(u_input.b.x, 0u, 0u, 1u), -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2985f, global1.x, false))), true)), func_2(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1393f * global1.x) * 401f), reverseBits(max(vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(4294967295u, 1u, u_input.b.x, 1u))), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], -1i) << (select(u_input.b.x, 0u, true) % 32u)), _wgslsmith_mult_u32(u_input.b.x, ~(~u_input.b.x)), func_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.x, 664f), -171f, true)), global1.x, ~(vec4<u32>(46311u, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)), 0i).d.x));
    let var_1 = var_0.a != global3[_wgslsmith_index_u32(~var_0.c.c << (u_input.b.x % 32u), 7u)];
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-789f, var_0.c.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, var_0.c.a))))) - vec2<f32>(-102f, 492f));
    global0 = array<vec4<bool>, 25>();
    var var_2 = func_5(func_5(Struct_2(_wgslsmith_mult_i32(i32(-1i) * -53144i, -1i), _wgslsmith_f_op_f32(f32(-1f) * -507f), func_5(Struct_2(0i, global1.x, var_0.c, var_0.d, var_0.c.d.x)).c, select(30429u >> (var_0.c.b.x % 32u), firstLeadingBit(var_0.d), var_1), var_0.e)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.a, var_0.b, false))), _wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.b, -1624f))), vec2<f32>(global1.x, global1.x))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.e, var_0.b) * vec2<f32>(413f, global1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(495f, global1.x, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(117f * 1000f), _wgslsmith_f_op_f32(210f + global1.x)))) * _wgslsmith_f_op_f32(abs(global1.x))), ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec3<u32>(41174u, u_input.b.x, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), ~(vec3<u32>(1u, 8524u, 4294967295u) >> (vec3<u32>(41945u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)))), _wgslsmith_sub_u32(~(u_input.b.x >> (1u % 32u)), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x >> (u_input.b.x % 32u))) | _wgslsmith_add_u32(u_input.b.x, u_input.b.x), !(!global0[_wgslsmith_index_u32(1u, 25u)]), global1.x);
    global2 = 27441u;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, var_0.e) - vec2<f32>(var_0.e, var_0.e)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1234f, var_0.e) - vec2<f32>(var_0.a, var_0.e))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2331f, global1.x) * vec2<f32>(var_0.e, var_0.a)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.e, var_0.a), vec2<f32>(var_0.a, var_0.a), vec2<bool>(false, false))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(822f, -1236f), vec2<f32>(var_0.e, var_0.e))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, global1.x)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, var_0.a) * vec2<f32>(global1.x, -1274f)) - vec2<f32>(var_0.a, var_0.a)), vec2<f32>(_wgslsmith_f_op_f32(func_4(vec4<bool>(var_0.d.x, false, true, false), vec2<bool>(var_0.d.x, var_0.d.x), vec3<bool>(var_0.d.x, var_0.d.x, false), Struct_1(global1.x, var_0.b, 14076u, var_0.d, global1.x))), _wgslsmith_f_op_f32(max(var_0.a, var_0.a)))))));
    global0 = array<vec4<bool>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(59552i, _wgslsmith_mult_i32(2147483647i, -global3[_wgslsmith_index_u32(abs(var_0.c), 7u)])), global1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1552f, global1.x, var_0.e, var_0.a) + vec4<f32>(-1120f, global1.x, 270f, var_0.e)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, -1208f, 577f, 150f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 517f, global1.x, var_0.e)))))), vec4<i32>(u_input.c, u_input.c, reverseBits(u_input.a.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, max(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global3[_wgslsmith_index_u32(0u, 7u)])), _wgslsmith_dot_vec3_i32(~u_input.a.xyz, vec3<i32>(2147483647i, u_input.c, 2147483647i)))), i32(-1i) * -2147483647i);
}

