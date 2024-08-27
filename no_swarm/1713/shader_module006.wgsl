struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, false, true, false, false, true, true, true, false);

var<private> global1: array<vec4<u32>, 10>;

var<private> global2: array<u32, 2> = array<u32, 2>(4294967295u, 0u);

var<private> global3: array<vec2<i32>, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<i32>) -> f32 {
    global0 = array<bool, 9>();
    var var_0 = arg_1.c.a;
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    let var_1 = _wgslsmith_f_op_f32(round(107f));
    return -279f;
}

fn func_2() -> Struct_3 {
    let var_0 = vec3<f32>(1172f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-472f + _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(4294967295u), Struct_1(19329u), 1410f, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], Struct_1(4294967295u)), Struct_3(vec4<f32>(-398f, 750f, 202f, 512f), vec4<i32>(26276i, -2147483647i, -1i, 42117i), Struct_2(Struct_1(u_input.a.x), Struct_1(u_input.a.x), -1999f, u_input.a.x, Struct_1(global2[_wgslsmith_index_u32(0u, 2u)])), 2147483647i), vec4<i32>(-1i, 0i, -1i, 21437i)))), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(18125u), Struct_1(37362u), -2157f, 51434u, Struct_1(u_input.a.x)), Struct_3(vec4<f32>(290f, -1343f, -1000f, 1054f), vec4<i32>(-1i, -1i, -52860i, 39491i), Struct_2(Struct_1(u_input.a.x), Struct_1(1u), -717f, global2[_wgslsmith_index_u32(4294967295u, 2u)], Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 2u)])), 46105i), max(vec4<i32>(2147483647i, -27597i, -2147483647i, 0i), vec4<i32>(-25857i, 4514i, -1i, 12906i)))), !any(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)])))), _wgslsmith_f_op_f32(sign(1513f)))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-438f - 699f))));
    let var_1 = firstLeadingBit(_wgslsmith_sub_vec2_u32(u_input.a.zw, vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), u_input.a.x, firstTrailingBit(global2[_wgslsmith_index_u32(10140u, 2u)])), 0u)));
    global1 = array<vec4<u32>, 10>();
    global3 = array<vec2<i32>, 30>();
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, var_0.x, 610f), vec4<f32>(-256f, var_0.x, -965f, 466f))))))), _wgslsmith_f_op_vec3_f32(select(var_0, _wgslsmith_f_op_vec3_f32(var_0 * _wgslsmith_f_op_vec3_f32(floor(var_0))), false)));
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(417f))), _wgslsmith_f_op_f32(f32(-1f) * -517f), 1374f), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 1i, 2147483647i << (global2[_wgslsmith_index_u32(var_1.x, 2u)] % 32u)), countOneBits(~vec4<i32>(5537i, 3288i, 11449i, 13578i)))), Struct_2(Struct_1(1u), Struct_1(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7642u, 2u)], 2u)], 4294967295u) & var_1.x), var_2.a.x, 1u, Struct_1(u_input.a.x)), -(~(-1i)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_5) -> bool {
    var var_0 = max(1u, arg_1.a);
    let var_1 = i32(-1i) * -_wgslsmith_div_i32(~reverseBits(arg_0), 64910i);
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.c, arg_2.b.x, arg_2.a.x, -2103f))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_2.a.x)), arg_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.c + var_2.c.c) + _wgslsmith_f_op_f32(-1828f * -899f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x - var_2.c.c)), -1087f), var_2.a));
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_3.x, var_3.x)))), 418f, arg_2.a.x))));
    return global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 7704u, 0u, _wgslsmith_add_u32(8398u, 25906u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.c.e.a), ~u_input.a.yw), 10u)]), vec4<u32>(~countOneBits(1u), 1u, var_2.c.a.a, _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(arg_1.a, 2u)]), vec2<u32>(u_input.a.x, 135939u))))), 9u)];
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_5) -> Struct_3 {
    global1 = array<vec4<u32>, 10>();
    var var_0 = arg_3;
    var var_1 = arg_3.a.xxy;
    global2 = array<u32, 2>();
    let var_2 = !all(!vec4<bool>(arg_0.x, arg_0.x && arg_0.x, !global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6438u, 2u)], 9u)], global0[_wgslsmith_index_u32(~12876u, 9u)]));
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-610f, -429f, var_1.x, arg_3.a.x), vec4<f32>(1000f, 1000f, -437f, arg_3.a.x))) * var_0.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1106f), var_0.a.x, _wgslsmith_f_op_f32(-var_1.x), -627f))), -_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 35511i << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24969u, 2u)], 2u)], 2u)], 2u)], 2u)] % 32u), i32(-1i) * -13077i, 23711i), min(vec4<i32>(-1i, 1i, -2147483647i, 2147483647i), vec4<i32>(0i, arg_2, 2147483647i, -56465i))), func_2().c, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!vec3<bool>(true, false, !func_1(-1i, Struct_1(u_input.a.x), Struct_5(vec4<f32>(-1137f, 769f, -1805f, 1874f), vec3<f32>(1598f, 115f, 738f)))), ~_wgslsmith_mod_vec4_u32(firstLeadingBit(u_input.a), u_input.a), _wgslsmith_add_i32(select(1i, func_2().d, false), 1i), Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(967f, -147f, 1516f, 156f), vec4<f32>(2292f, -1000f, 110f, -1336f), true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(376f, -631f, -1054f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(692f, 1000f, 406f)), true)))));
    let var_1 = var_0.c.c < var_0.a.x;
    global2 = array<u32, 2>();
    var var_2 = all(select(vec3<bool>(!(!global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), !(var_1 || false), all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 9u)], var_1))), select(select(!vec3<bool>(global0[_wgslsmith_index_u32(25878u, 9u)], global0[_wgslsmith_index_u32(var_0.c.d, 9u)], global0[_wgslsmith_index_u32(14449u, 9u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(73685u, 9u)]), vec3<bool>(var_1, false, false)), !(!vec3<bool>(true, false, var_1)), select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.c.d, 9u)], false, var_1), select(vec3<bool>(var_1, false, false), vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.c.b.a, 2u)], 9u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 9u)], true), true), true)), !(!(!vec3<bool>(var_1, true, false)))));
    let var_3 = func_4(select(vec3<bool>(-16119i <= -var_0.d, var_1, !(!global0[_wgslsmith_index_u32(0u, 9u)])), vec3<bool>(false, all(vec2<bool>(var_1, false)), true), global0[_wgslsmith_index_u32(~1u, 9u)]), ~(~u_input.a) << (global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_0.c.a.a, var_0.c.a.a), u_input.a.xwx), abs(~global2[_wgslsmith_index_u32(0u, 2u)])), 10u)] % vec4<u32>(32u)), -2147483647i, Struct_5(var_0.a, var_0.a.zxw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_0.c.b.a, ~var_3.c.a.a << (_wgslsmith_clamp_u32(2451u, global2[_wgslsmith_index_u32(38585u, 2u)], global2[_wgslsmith_index_u32(var_3.c.a.a, 2u)]) % 32u)) ^ _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, 0u), ~(~u_input.a.x)), global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~(~53778u), var_3.c.e.a), 30u)], var_0.c.d, abs(_wgslsmith_sub_i32(-2147483647i, var_0.b.x)));
}

