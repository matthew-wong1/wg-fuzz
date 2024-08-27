struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(290f, i32(-2147483648), vec2<f32>(-491f, 905f));

var<private> global1: array<i32, 12> = array<i32, 12>(-9575i, 0i, -48542i, 28786i, 2147483647i, -12187i, -1i, 48637i, 4433i, -18600i, 15869i, -29333i);

var<private> global2: array<i32, 7>;

var<private> global3: array<u32, 31>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: u32) -> f32 {
    var var_0 = -2147483647i >> (countOneBits(0u) % 32u);
    var var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(-arg_1.yy >> (firstLeadingBit(vec2<u32>(global3[_wgslsmith_index_u32(28375u, 31u)], 4294967295u)) % vec2<u32>(32u)), vec2<i32>(select(~(-67653i), 4810i, true), (i32(-1i) * -20247i) & _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, arg_1.x, global1[_wgslsmith_index_u32(3761u, 12u)]), vec4<i32>(2147483647i, 15260i, u_input.c, -18184i)))), abs(vec2<i32>(-1i, _wgslsmith_add_i32(-1i, i32(-1i) * -54396i))));
    global3 = array<u32, 31>();
    var_0 = var_1.x;
    var var_2 = Struct_1(false, vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_2, 32711u)), ~vec2<u32>(u_input.b.x, 48672u)) ^ abs(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(2123u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 31u)], 31u)], 56844u))), _wgslsmith_dot_vec3_u32(u_input.a, (vec3<u32>(53435u, u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(56659u, 31u)], 31u)]) & u_input.b.xyw) | vec3<u32>(24068u, 63247u, global3[_wgslsmith_index_u32(arg_2, 31u)]))), -2205f);
    return 632f;
}

fn func_2(arg_0: vec3<i32>) -> vec3<bool> {
    let var_0 = ~4294967295u;
    global0 = Struct_2(_wgslsmith_f_op_f32(func_3(vec2<i32>(-2340i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, global1[_wgslsmith_index_u32(32535u, 12u)]), -vec2<i32>(1i, 0i))), ~(u_input.d ^ _wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0, 31u)], 12u)], arg_0.x, global2[_wgslsmith_index_u32(69981u, 7u)]), vec3<i32>(-2147483647i, 29259i, arg_0.x))), ~reverseBits(global3[_wgslsmith_index_u32(~28248u, 31u)]))), _wgslsmith_mult_i32(~_wgslsmith_div_i32(_wgslsmith_div_i32(arg_0.x, 43537i), _wgslsmith_div_i32(2147483647i, global0.b)), 24911i ^ -_wgslsmith_clamp_i32(1i, 8550i, 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(614f, 212f), global0.c))) - _wgslsmith_f_op_vec2_f32(-global0.c))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1716f)), _wgslsmith_f_op_f32(-global0.c.x), global0.a, 1f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(239f, 1239f, global0.c.x, global0.c.x) - vec4<f32>(362f, -439f, -882f, 186f))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1225f, -357f, _wgslsmith_f_op_f32(ceil(global0.c.x)), _wgslsmith_f_op_f32(select(global0.c.x, -868f, false)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1061f, 470f, global0.a, 119f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-236f, global0.c.x, global0.c.x, 310f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-372f, global0.a, global0.a, -414f), vec4<f32>(1115f, global0.c.x, -148f, -162f))), vec4<f32>(-1541f, 190f, -1438f, global0.a))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1795f, global0.c.x, global0.a, global0.c.x) - vec4<f32>(1190f, global0.c.x, global0.a, global0.a)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1387f, -1000f, -291f, 553f)))))));
    let var_2 = vec2<u32>(0u, u_input.a.x);
    global1 = array<i32, 12>();
    return !select(!vec3<bool>(false, all(vec3<bool>(false, true, false)), true), vec3<bool>(!select(true, true, false), true, true), !select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), true));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_4, arg_3: Struct_4) -> u32 {
    let var_0 = arg_3.d;
    global3 = array<u32, 31>();
    global3 = array<u32, 31>();
    var var_1 = arg_2.d.b;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, arg_0) * var_0.a);
    return select(firstTrailingBit(~54394u), u_input.a.x, all(func_2(u_input.d)) & all(vec3<bool>(arg_1, !arg_1, global3[_wgslsmith_index_u32(54591u, 31u)] == 21239u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = Struct_2(1000f, -(~_wgslsmith_clamp_i32(abs(-1i), ~34524i, i32(-1i) * -1i)), global0.c);
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(~1u, 31u)], _wgslsmith_dot_vec2_u32(min(abs(vec2<u32>(0u, 0u)), _wgslsmith_mult_vec2_u32(u_input.b.zy, arg_1.b.zy)), ~arg_0.xw)), arg_0.x);
    let var_2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -159f), var_0.a) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(641f, 547f)))), var_0, firstLeadingBit(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, u_input.b.x), u_input.a), countOneBits(vec3<u32>(0u, u_input.b.x, 4294967295u)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-308f * _wgslsmith_f_op_f32(global0.c.x * global0.a)) * _wgslsmith_div_f32(717f, _wgslsmith_f_op_f32(select(250f, global0.c.x, true)))), -2147483647i, global0.c));
    var var_3 = abs(-16148i);
    global2 = array<i32, 7>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(617f, 1715f, -831f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, 882f) + vec3<f32>(-1125f, 897f, -1016f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1222f, global0.c.x) + vec3<f32>(2031f, global0.a, 227f)), vec3<bool>(false, false, true)))) + vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-global0.c.x))) + vec3<f32>(-1153f, global0.a, global0.a));
    var var_1 = !(0u == (22802u << (~u_input.a.x % 32u)));
    global0 = func_4(vec4<u32>(~max(u_input.b.x, 12289u), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(92258u, 31u)], 31u)], func_1(var_0.x, true, Struct_4(var_0.x, Struct_2(-779f, global0.b, global0.c), vec3<u32>(0u, 601u, u_input.b.x), Struct_2(809f, -1i, vec2<f32>(123f, global0.a))), Struct_4(-1368f, Struct_2(1000f, 13242i, var_0.yy), u_input.a, Struct_2(169f, global1[_wgslsmith_index_u32(1u, 12u)], var_0.yy)))), 31u)], 0u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, global3[_wgslsmith_index_u32(55282u, 31u)], u_input.b.x, global3[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<u32>(u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 31u)], 31u)], u_input.a.x, u_input.a.x)) ^ u_input.b, max(u_input.b, vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6750u, 31u)], 31u)], u_input.b.x, 8732u)) >> (u_input.b % vec4<u32>(32u))), countOneBits(~(~45304u))), Struct_3(~u_input.b.x, ~vec3<u32>(1u, min(20633u, 17402u), 46841u), reverseBits(u_input.c << (1u % 32u))));
    var var_2 = global1[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(select(-1368f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(723f - -1756f))) + _wgslsmith_f_op_f32(step(673f, global0.a))), true & (all(vec3<bool>(false, true, false)) & all(vec2<bool>(false, true))))), func_2(-abs(max(u_input.d, u_input.d))).x, Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1494f, _wgslsmith_div_f32(401f, -206f)) - _wgslsmith_f_op_f32(func_4(u_input.b, Struct_3(global3[_wgslsmith_index_u32(38679u, 31u)], vec3<u32>(u_input.a.x, 71630u, 53267u), u_input.c)).a - _wgslsmith_f_op_f32(ceil(-267f)))), func_4(vec4<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11127u, 31u)], 31u)], 31u)], ~38535u, global3[_wgslsmith_index_u32(reverseBits(u_input.a.x), 31u)], ~54909u), Struct_3(~u_input.b.x, u_input.a, _wgslsmith_add_i32(1i, global0.b))), ~u_input.a, Struct_2(var_0.x, 2147483647i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global0.c))))), Struct_4(-1585f, Struct_2(_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(floor(var_0.x))), ~_wgslsmith_clamp_i32(39041i, 0i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(64652u, 31u)], 12u)]), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global0.c.x))))), u_input.b.zxy, Struct_2(_wgslsmith_f_op_f32(select(var_0.x, 560f, true)), 12645i, vec2<f32>(1000f, 1000f)))), 12u)];
    global2 = array<i32, 7>();
    var var_3 = _wgslsmith_div_u32(u_input.b.x, countOneBits(global3[_wgslsmith_index_u32(32694u, 31u)] | global3[_wgslsmith_index_u32(0u, 31u)]) & u_input.a.x) == 1330u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, -199f, firstLeadingBit(firstTrailingBit(-1i)));
}

