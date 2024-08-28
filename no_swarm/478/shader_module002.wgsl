struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = arg_1;
    global2 = array<vec4<u32>, 2>();
    var var_1 = arg_3.xww;
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(-arg_2, arg_2), _wgslsmith_f_op_f32(max(-1484f, _wgslsmith_f_op_f32(-global1.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1302f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-251f + global0.c), global1.c)))), 640f), global0.d | (_wgslsmith_f_op_f32(trunc(-871f)) != arg_1.b));
    var var_3 = max(abs(abs(select(vec3<u32>(u_input.d, u_input.a.x, u_input.d), vec3<u32>(u_input.d, 1u, 4294967295u) ^ vec3<u32>(u_input.a.x, 0u, 0u), arg_3.x))), max(abs(countOneBits(vec3<u32>(20824u, u_input.d, u_input.d) << (vec3<u32>(u_input.d, 22487u, 1980u) % vec3<u32>(32u)))), (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.d, 55960u), vec3<u32>(u_input.a.x, 0u, 14797u), vec3<u32>(u_input.a.x, 83067u, 148u)) | reverseBits(vec3<u32>(u_input.a.x, 86256u, 4294967295u))) & abs(_wgslsmith_sub_vec3_u32(vec3<u32>(36312u, 1101u, 0u), vec3<u32>(0u, 5591u, u_input.a.x)))));
    return ~var_3.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> u32 {
    let var_0 = vec4<i32>(-2147483647i, -(~abs(arg_1)), firstLeadingBit(u_input.b), 1i);
    var var_1 = (vec3<u32>(74781u, func_3(vec2<bool>(global1.d, arg_0.d), arg_0, vec4<i32>(arg_0.a, 2147483647i, arg_1, 2147483647i), vec4<bool>(global1.d, global0.d, global0.d, arg_0.d)) << ((1u << (arg_2 % 32u)) % 32u), reverseBits(~arg_2)) ^ select(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, 32322u, 1u) ^ vec3<u32>(arg_2, arg_2, 13147u), countOneBits(vec3<u32>(16281u, arg_2, u_input.d))), vec3<u32>(countOneBits(arg_2), ~u_input.a.x, 3326u), vec3<bool>(arg_0.c == global0.c, true, arg_0.d && true))) | vec3<u32>(1u, countOneBits(arg_2), ~(~(~4294967295u)));
    var var_2 = arg_0;
    var var_3 = vec3<bool>(!select(var_2.d, var_2.d, global0.d), any(!select(vec4<bool>(false, global0.d, true, global0.d), vec4<bool>(false, true, arg_0.d, arg_0.d), false)) == (any(!vec2<bool>(true, var_2.d)) & global0.d), any(vec2<bool>(false, global1.a < _wgslsmith_dot_vec3_i32(var_0.zyx, vec3<i32>(arg_0.a, arg_0.a, 2147483647i)))));
    var var_4 = 2147483647i;
    return arg_2;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    global2 = array<vec4<u32>, 2>();
    global0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, global0.a, global0.a), -60706i), -1615f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2 + global1.b), _wgslsmith_f_op_f32(-240f - global0.c))) + global1.b))), arg_3.x);
    let var_0 = ~1u;
    let var_1 = -_wgslsmith_add_vec4_i32(min(reverseBits(-vec4<i32>(global0.a, u_input.e, u_input.c, -43413i)), ~min(vec4<i32>(global1.a, 0i, global1.a, -50723i), vec4<i32>(global1.a, global0.a, 24883i, 21728i))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, min(49694i, global1.a), u_input.c, ~u_input.b), vec4<i32>(global1.a, 2147483647i, -26398i, global1.a) >> (firstTrailingBit(vec4<u32>(0u, 10650u, 0u, 24185u)) % vec4<u32>(32u))));
    var var_2 = -1i;
    return Struct_1(max(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 13257i), vec2<i32>(var_1.x, 23968i)), ~global1.a), max(reverseBits(global1.a), u_input.b)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_1.wx, vec2<i32>(0i, 0i)) >> (_wgslsmith_add_u32(var_0, arg_1.x) % 32u), i32(-1i) * -348i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(957f)), _wgslsmith_f_op_f32(trunc(-1416f)))))), arg_2, !global0.d);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: vec2<f32>) -> vec4<i32> {
    global1 = func_4(u_input.d, u_input.a, _wgslsmith_f_op_f32(-global0.c), vec2<bool>(false, max(func_2(arg_0, u_input.c, arg_1), arg_1) != abs(arg_1)));
    global1 = func_4(~30890u, ~abs(_wgslsmith_mult_vec2_u32(~u_input.a, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a))), func_4(_wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_1, arg_1), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, u_input.a.x, u_input.a.x) << (vec3<u32>(arg_1, 4294967295u, u_input.d) % vec3<u32>(32u)), abs(vec3<u32>(9116u, 63749u, 4294967295u)))), _wgslsmith_div_vec2_u32(vec2<u32>(~arg_1, u_input.d >> (34742u % 32u)), select(u_input.a, ~vec2<u32>(37830u, u_input.d), !global1.d)), global1.b, vec2<bool>(arg_0.d, ~arg_1 >= countOneBits(arg_1))).b, !(!select(vec2<bool>(global1.d, false), select(vec2<bool>(false, arg_0.d), vec2<bool>(false, false), true), global0.d)));
    let var_0 = arg_0;
    let var_1 = arg_1;
    global2 = array<vec4<u32>, 2>();
    return reverseBits(vec4<i32>(var_0.a, ~var_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-32508i, 1i, var_0.a, -17032i) << (vec4<u32>(2484u, var_1, 4294967295u, 19935u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(2268i, var_0.a, arg_0.a, u_input.e), vec4<i32>(global1.a, 18172i, 22295i, -2147483647i))), global0.a)) ^ _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-1i, -23769i, 28662i, -20834i)), vec4<i32>(global1.a, _wgslsmith_div_i32(arg_0.a, 1i), _wgslsmith_mod_i32(1i, 27277i), 6771i & u_input.b)), vec4<i32>(_wgslsmith_mod_i32(2147483647i, ~(-9244i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.a, -1663i, -2147483647i, -3133i), reverseBits(vec4<i32>(6601i, -2147483647i, arg_0.a, var_0.a))), -(var_0.a & global0.a), arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(min(53224i, 10517i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(794f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-946f)), _wgslsmith_div_f32(1841f, 517f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b * -567f), -1000f)))), 1415f, !all(vec2<bool>(false, true)));
    var var_0 = _wgslsmith_dot_vec4_i32(countOneBits(-_wgslsmith_mult_vec4_i32(~vec4<i32>(global0.a, u_input.b, global0.a, 46743i), func_1(Struct_1(0i, 701f, 1304f, global1.d), u_input.d, vec4<f32>(global0.c, global1.c, 1003f, -224f), vec2<f32>(274f, -497f)))), -firstTrailingBit(vec4<i32>(-2147483647i, u_input.c, _wgslsmith_add_i32(global0.a, u_input.c), ~(-44439i))));
    var_0 = global0.a;
    let var_1 = ~abs(~vec3<u32>(~35542u, ~u_input.d, _wgslsmith_div_u32(13318u, 65061u)));
    let var_2 = Struct_1(reverseBits(func_1(func_4(~var_1.x, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_1.x), var_1.xx), -802f, vec2<bool>(global1.d, true)), u_input.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(1843f, global0.b, global1.c, global0.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-381f, global0.c, global1.c, global0.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1563f, global1.b) + vec2<f32>(-1245f, -1644f)) - vec2<f32>(global0.b, global1.b))).x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-196f))), _wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))), select(~17384u > ~countOneBits(var_1.x), 183f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - 1470f) - _wgslsmith_f_op_f32(ceil(244f))), !(_wgslsmith_clamp_u32(66736u, u_input.d, u_input.d) == firstLeadingBit(57100u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2320f, 690f, var_2.b), vec3<f32>(var_2.c, 1295f, global1.b))))))), firstLeadingBit(_wgslsmith_div_u32(~20952u, 1u)) | u_input.d, global2[_wgslsmith_index_u32(~var_1.x & _wgslsmith_dot_vec4_u32(countOneBits(global2[_wgslsmith_index_u32(~3597u, 2u)]), ~reverseBits(global2[_wgslsmith_index_u32(var_1.x, 2u)])), 2u)], global1.a);
}

