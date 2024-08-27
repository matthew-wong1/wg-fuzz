struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: array<Struct_2, 20>;

var<private> global2: f32;

var<private> global3: array<f32, 19> = array<f32, 19>(3202f, 1000f, -1440f, 1000f, 1131f, 692f, 485f, -1000f, 1812f, 905f, 542f, -602f, 452f, 1554f, -1546f, -827f, -634f, -890f, 1866f);

var<private> global4: array<i32, 24> = array<i32, 24>(1i, -1i, 1i, 36441i, -17058i, i32(-2147483648), i32(-2147483648), -1i, -35667i, i32(-2147483648), -1i, -1557i, 1i, 14188i, -1i, 96182i, 1i, 24311i, -85774i, 26822i, 8970i, -43659i, 6548i, -1i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(930f + global3[_wgslsmith_index_u32(arg_1.x, 19u)])) - _wgslsmith_f_op_f32(min(-510f, 577f))), global3[_wgslsmith_index_u32(~42646u, 19u)]));
    let var_1 = -(~(-39749i));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1.x, 19u)] - var_0), -1000f, var_0, var_0) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -769f), 467f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-221f + var_0))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1240f), global3[_wgslsmith_index_u32(arg_3.a.x, 19u)], -427f, _wgslsmith_f_op_f32(f32(-1f) * -582f)))), select(vec4<bool>(true, true, _wgslsmith_sub_i32(var_1, global4[_wgslsmith_index_u32(arg_1.x, 24u)]) >= 3482i, true), !vec4<bool>(true, true, all(vec3<bool>(false, true, false)), true), false), -(~2147483647i), arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 44455u, ~0u, _wgslsmith_mod_u32(~arg_3.a.x, 0u)), ~abs(~arg_1)));
    var var_3 = var_0;
    var var_4 = -arg_2 | -(vec3<i32>(2147483647i, -u_input.a, _wgslsmith_sub_i32(-1i, 0i)) & vec3<i32>(var_1, var_2.c, ~arg_3.c));
    return max(~(~2147483647i), _wgslsmith_mod_i32(global4[_wgslsmith_index_u32(countOneBits(1u), 24u)], arg_2.x));
}

fn func_2() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~firstLeadingBit(~_wgslsmith_sub_u32(min(41591u, 24155u), _wgslsmith_clamp_u32(0u, 0u, 0u))), 7u)];
    global3 = array<f32, 19>();
    var var_1 = -_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(-vec3<i32>(global4[_wgslsmith_index_u32(var_0.a.x, 24u)], -8846i, var_0.c)), vec3<i32>(global4[_wgslsmith_index_u32(abs(var_0.a.x), 24u)], global4[_wgslsmith_index_u32(select(var_0.a.x, 1353u, false), 24u)], func_3(vec2<i32>(global4[_wgslsmith_index_u32(1u, 24u)], -1i), vec4<u32>(91695u, var_0.a.x, var_0.a.x, var_0.a.x), vec3<i32>(31900i, global4[_wgslsmith_index_u32(4294967295u, 24u)], -1i), global0[_wgslsmith_index_u32(14722u, 7u)]))), reverseBits(vec3<i32>(-1i, ~13248i, -u_input.a)));
    var_1 = min(func_3(abs(select(u_input.b, vec2<i32>(28964i, -1i), false)), ~vec4<u32>(var_0.a.x, 89063u, 0u, 24028u), -firstLeadingBit(vec3<i32>(var_0.c, 1i, 1i)), Struct_3(vec3<u32>(var_0.a.x, 28211u, 1u) << (var_0.a % vec3<u32>(32u)), firstTrailingBit(vec2<i32>(2147483647i, 62782i)), 1i)) ^ ~(~u_input.a), -global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_0.a.x, countOneBits(10220u)), 24u)]);
    global2 = global3[_wgslsmith_index_u32((firstLeadingBit(~(var_0.a.x & 2622u)) | ~var_0.a.x) | var_0.a.x, 19u)];
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(848f, -178f, global3[_wgslsmith_index_u32(var_0.a.x, 19u)], 623f) - vec4<f32>(global3[_wgslsmith_index_u32(var_0.a.x, 19u)], global3[_wgslsmith_index_u32(22233u, 19u)], -364f, global3[_wgslsmith_index_u32(68715u, 19u)])) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-607f, 370f, -213f, global3[_wgslsmith_index_u32(4294967295u, 19u)])))))), vec4<bool>(false, any(vec3<bool>(true, any(vec2<bool>(true, true)), all(vec3<bool>(false, false, false)))), !(~var_0.b.x > var_0.b.x), !(!select(false, false, false))), -2147483647i, select(u_input.b, u_input.b, !select(vec2<bool>(false, false), vec2<bool>(true, true), true)) >> (~var_0.a.yz % vec2<u32>(32u)), _wgslsmith_mult_u32(0u, var_0.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<u32>) -> u32 {
    global0 = array<Struct_3, 7>();
    global1 = array<Struct_2, 20>();
    global1 = array<Struct_2, 20>();
    var var_0 = func_2();
    let var_1 = func_2();
    return select(12744u, ~(~(~(~var_0.e))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 19u)])), global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(~(~0u), 19u)], _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(func_1(Struct_1(vec4<f32>(1297f, 140f, global3[_wgslsmith_index_u32(22373u, 19u)], -1356f), vec4<bool>(false, true, true, true), -52544i, vec2<i32>(-43892i, u_input.a), 1u), vec3<bool>(false, true, false), vec4<u32>(1u, 1u, 54394u, 9138u)), 19u)])))), vec4<bool>(select(~4294967295u, 1u, true) < _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 2092u, 47038u, 34029u), vec4<u32>(1u, 1u, 4294967295u, 65386u)), 35048u), !(u_input.b.x == -1i), false, _wgslsmith_f_op_f32(round(961f)) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-672f, global3[_wgslsmith_index_u32(36778u, 19u)])), _wgslsmith_f_op_f32(step(290f, 751f))))), max(_wgslsmith_dot_vec4_i32(vec4<i32>(27220i, 2147483647i, -2147483647i, global4[_wgslsmith_index_u32(0u, 24u)]) << (vec4<u32>(1u, 111276u, 2686u, 1u) % vec4<u32>(32u)), vec4<i32>(global4[_wgslsmith_index_u32(24218u, 24u)], global4[_wgslsmith_index_u32(1174u, 24u)], u_input.b.x, 50789i) >> (vec4<u32>(41248u, 0u, 1u, 0u) % vec4<u32>(32u))) & _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, -34322i), -global4[_wgslsmith_index_u32(37641u, 24u)]), global4[_wgslsmith_index_u32(abs(~1u), 24u)]), min(vec2<i32>(global4[_wgslsmith_index_u32(~110874u, 24u)], func_3(vec2<i32>(u_input.a, global4[_wgslsmith_index_u32(1748u, 24u)]), vec4<u32>(6104u, 4294967295u, 32903u, 30644u), vec3<i32>(global4[_wgslsmith_index_u32(1u, 24u)], global4[_wgslsmith_index_u32(1u, 24u)], 2147483647i), global0[_wgslsmith_index_u32(4294967295u, 7u)])) & select(min(u_input.b, u_input.b), _wgslsmith_add_vec2_i32(u_input.b, u_input.b), true), -(~abs(vec2<i32>(global4[_wgslsmith_index_u32(0u, 24u)], 1i)))), _wgslsmith_add_u32(69246u, 1u));
    var var_1 = ~((_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.e, var_0.e), vec2<u32>(47952u, var_0.e)), vec2<u32>(4294967295u, 4294967295u), reverseBits(vec2<u32>(89654u, var_0.e))) ^ select(vec2<u32>(var_0.e, 9998u) & vec2<u32>(17367u, 23496u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1853u, var_0.e), vec2<u32>(var_0.e, var_0.e), vec2<u32>(4294967295u, var_0.e)), !var_0.b.wz)) >> ((vec2<u32>(~var_0.e, 4294967295u) | (min(vec2<u32>(var_0.e, 0u), vec2<u32>(var_0.e, var_0.e)) >> ((vec2<u32>(var_0.e, 4294967295u) ^ vec2<u32>(0u, 61022u)) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    var var_2 = global1[_wgslsmith_index_u32(var_1.x, 20u)];
    var var_3 = !all(vec2<bool>(false, _wgslsmith_div_f32(var_0.a.x, global3[_wgslsmith_index_u32(23732u, 19u)]) < _wgslsmith_f_op_f32(step(-1066f, -1758f))));
    var var_4 = 22469u;
    let var_5 = vec4<f32>(global3[_wgslsmith_index_u32(var_0.e, 19u)], -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1.x, 19u)] * 1025f)))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.e, 19u)])));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.xxx, ~(~(u_input.a ^ ~u_input.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-421f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_5.x)), -1016f)))));
}

