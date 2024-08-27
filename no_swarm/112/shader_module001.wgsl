struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<f32>(-516f, 498f, 676f, 1459f)), Struct_1(vec4<f32>(535f, -528f, -114f, -988f)), Struct_1(vec4<f32>(-1070f, 169f, -335f, -1191f)), Struct_1(vec4<f32>(174f, -1294f, -461f, -343f)), Struct_1(vec4<f32>(247f, 182f, 422f, 1000f)), Struct_1(vec4<f32>(-665f, 1409f, -1772f, -613f)), Struct_1(vec4<f32>(-694f, -966f, -698f, -442f)), Struct_1(vec4<f32>(-497f, -815f, -703f, -819f)), Struct_1(vec4<f32>(478f, 1013f, 1358f, -500f)), Struct_1(vec4<f32>(-1019f, -274f, 976f, 591f)), Struct_1(vec4<f32>(702f, 1624f, 220f, -243f)), Struct_1(vec4<f32>(1000f, -661f, -1780f, 1641f)), Struct_1(vec4<f32>(-457f, -397f, -1641f, -120f)), Struct_1(vec4<f32>(-322f, -211f, 1633f, 429f)), Struct_1(vec4<f32>(-337f, 1000f, 1804f, -682f)), Struct_1(vec4<f32>(324f, -1568f, 2219f, -1788f)), Struct_1(vec4<f32>(-335f, -1580f, -252f, -177f)), Struct_1(vec4<f32>(1173f, 1957f, -208f, 245f)), Struct_1(vec4<f32>(-868f, 993f, -854f, 1172f)), Struct_1(vec4<f32>(-1000f, -621f, 212f, 1000f)), Struct_1(vec4<f32>(-370f, 1697f, -940f, -419f)), Struct_1(vec4<f32>(-1000f, -124f, -1088f, 812f)), Struct_1(vec4<f32>(204f, 518f, -408f, -564f)), Struct_1(vec4<f32>(1000f, 2554f, -1274f, 601f)), Struct_1(vec4<f32>(251f, -270f, 1842f, 113f)), Struct_1(vec4<f32>(-311f, -118f, -358f, 549f)), Struct_1(vec4<f32>(711f, 483f, 2312f, -1000f)), Struct_1(vec4<f32>(-852f, -1000f, 449f, -1000f)), Struct_1(vec4<f32>(-486f, 726f, 246f, -1142f)));

var<private> global1: i32;

var<private> global2: array<Struct_1, 2>;

var<private> global3: array<vec4<f32>, 21>;

var<private> global4: array<f32, 6>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> bool {
    var var_0 = u_input.c;
    var_0 = u_input.b.x;
    global1 = min(u_input.e, -1i);
    global1 = reverseBits(1i) ^ _wgslsmith_mult_i32(~(71843i >> (u_input.d % 32u)), -1i);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(~(u_input.a >> (u_input.b.x % 32u)) ^ 101u, firstLeadingBit(0u)), 1120u >> ((_wgslsmith_clamp_u32(~14856u, 41391u, ~4294967295u) & u_input.c) % 32u), ~u_input.d), 29u)];
    return true;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>) -> f32 {
    var var_0 = ~(-u_input.e);
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(~u_input.b.x, 21u)])), vec4<f32>(global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(1u, u_input.b.x, u_input.b.x)), 6u)], _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1214f, -1000f))), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, u_input.d), 6u)], _wgslsmith_div_f32(global4[_wgslsmith_index_u32(u_input.d, 6u)], _wgslsmith_f_op_f32(ceil(-1000f))))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(max(u_input.d << (~4294967295u % 32u), ~1u), ~abs(4294967295u)), u_input.d & u_input.d), 29u)];
    var var_3 = global2[_wgslsmith_index_u32(~u_input.a, 2u)];
    var_2 = global2[_wgslsmith_index_u32(81202u, 2u)];
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.a.x)) + _wgslsmith_f_op_f32(371f + var_1.a.x)))), -1627f));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(_wgslsmith_sub_u32(max(4294967295u, u_input.a), ~1u) >> (u_input.a % 32u), ~u_input.b.x, u_input.c));
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.e, 17698i, u_input.e) | vec4<i32>(-3716i, arg_2, 0i, 19488i), vec4<i32>(arg_2, u_input.e, u_input.e, 1i) ^ vec4<i32>(arg_2, u_input.e, u_input.e, arg_2)), u_input.e, firstLeadingBit(u_input.e)), ~(~vec3<i32>(arg_2 | -24552i, 1i, -u_input.e)));
    var var_2 = ~min(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-39913i, -60423i, -13756i, 2147483647i), vec4<i32>(u_input.e, 35563i, var_1.x, 0i)) | _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, var_1.x, u_input.e, 3246i), vec4<i32>(arg_2, u_input.e, -2147483647i, u_input.e)), _wgslsmith_sub_vec4_i32(-vec4<i32>(arg_2, arg_2, var_1.x, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, 2213i, -1682i, u_input.e), vec4<i32>(u_input.e, -1i, u_input.e, 0i)))), vec4<i32>(abs(0i), -2147483647i, var_1.x, select(1i, 8485i, false)) & (vec4<i32>(var_1.x, arg_2, 2147483647i, arg_2) ^ vec4<i32>(var_1.x, u_input.e, var_1.x, u_input.e)));
    global4 = array<f32, 6>();
    let var_3 = global0[_wgslsmith_index_u32(54073u, 29u)];
    return 1461f;
}

fn func_5(arg_0: f32, arg_1: vec2<f32>) -> f32 {
    global2 = array<Struct_1, 2>();
    global1 = u_input.e;
    global3 = array<vec4<f32>, 21>();
    global1 = u_input.e;
    global3 = array<vec4<f32>, 21>();
    return _wgslsmith_f_op_f32(ceil(264f));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: i32) -> u32 {
    var var_0 = u_input.e;
    let var_1 = vec4<bool>(arg_0, true, !(!func_2()), arg_0);
    let var_2 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(func_4(arg_0, Struct_1(vec4<f32>(global4[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 6u)] + global4[_wgslsmith_index_u32(u_input.c, 6u)]), _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(arg_2, 6u)])), _wgslsmith_f_op_f32(func_3(vec3<bool>(false, arg_0, true), var_1.zw)))), u_input.e)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4[_wgslsmith_index_u32(arg_2, 6u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~u_input.d, 6u)])), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_f_op_f32(1288f - -1477f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1693f, global4[_wgslsmith_index_u32(arg_2, 6u)])))), arg_0))))));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(~(vec4<u32>(15878u, arg_2, 1u, 29340u) ^ vec4<u32>(1u, 1545u, u_input.b.x, 42571u))), ~((vec4<u32>(u_input.c, 4294967295u, 72625u, 4294967295u) ^ vec4<u32>(arg_2, 0u, 1u, arg_2)) | ~vec4<u32>(u_input.d, 32619u, u_input.d, 115180u))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, arg_2, 1u, u_input.a), vec4<u32>(1u, arg_2, 1u, u_input.d)), ~select(_wgslsmith_add_vec4_u32(vec4<u32>(27907u, 46080u, arg_2, u_input.d), vec4<u32>(26290u, arg_2, u_input.c, 4294967295u)), min(vec4<u32>(arg_2, 7083u, 117183u, 0u), vec4<u32>(arg_2, 4294967295u, 1u, 56903u)), !var_1), vec4<u32>(0u, 0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 51359u), vec2<u32>(16987u, 12120u)), 66440u))), 2u)];
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1297f, -1127f, 241f, global4[_wgslsmith_index_u32(4294967295u, 6u)]))))), _wgslsmith_div_vec4_f32(var_3.a, _wgslsmith_f_op_vec4_f32(ceil(var_3.a))))));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(min(0u, func_1(global4[_wgslsmith_index_u32(u_input.a, 6u)] != global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yy), 6u)], 0i, 0u, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 35889i), firstTrailingBit(vec2<i32>(u_input.e, u_input.e))))), 0u), 29u)];
    global2 = array<Struct_1, 2>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 692f, -184f, global4[_wgslsmith_index_u32(0u << (u_input.d % 32u), 6u)])))));
    var var_2 = Struct_1(var_0.a);
    global1 = reverseBits(_wgslsmith_div_i32(1i, u_input.e));
    global4 = array<f32, 6>();
    global0 = array<Struct_1, 29>();
    var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(25083u, 1u, 41331u, u_input.a), abs(vec4<u32>(1u, u_input.a, u_input.c, 0u)))) >> (vec4<u32>(max(u_input.c | 28658u, countOneBits(u_input.c)), abs(~6551u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.xy), 4294967295u, 3814u & u_input.b.x), ~(~u_input.d)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.d, u_input.a, u_input.b.x, 70955u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(43643u, 55174u, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.d, 16002u, 65227u)), ~vec4<u32>(4294967295u, 0u, 24348u, 4294967295u), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)))), u_input.a, min(u_input.c, 67775u), u_input.b.x)), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~(u_input.c >> (~u_input.c % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, true), vec2<bool>(false, false))))), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 6u)] - var_1.a.x))));
}

