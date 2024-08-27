struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(0u, -1i, vec2<bool>(true, true), vec2<u32>(34462u, 0u)), Struct_1(56100u, i32(-2147483648), vec2<bool>(false, false), vec2<u32>(4294967295u, 0u)), Struct_1(83086u, -1i, vec2<bool>(true, true), vec2<u32>(1u, 12135u)), Struct_1(8650u, 2147483647i, vec2<bool>(false, true), vec2<u32>(38215u, 13614u)), Struct_1(969u, 0i, vec2<bool>(false, true), vec2<u32>(46366u, 4294967295u)), Struct_1(4294967295u, 0i, vec2<bool>(false, true), vec2<u32>(0u, 8583u)), Struct_1(0u, -54571i, vec2<bool>(false, true), vec2<u32>(0u, 23495u)), Struct_1(88601u, 16280i, vec2<bool>(false, true), vec2<u32>(60747u, 48155u)), Struct_1(35593u, i32(-2147483648), vec2<bool>(false, false), vec2<u32>(4294967295u, 14643u)), Struct_1(1u, 0i, vec2<bool>(false, false), vec2<u32>(28864u, 75625u)), Struct_1(52311u, -12362i, vec2<bool>(true, true), vec2<u32>(1u, 35583u)), Struct_1(64679u, -1i, vec2<bool>(true, false), vec2<u32>(38002u, 32917u)), Struct_1(135551u, i32(-2147483648), vec2<bool>(true, false), vec2<u32>(0u, 47160u)), Struct_1(1805u, -1i, vec2<bool>(true, true), vec2<u32>(4294967295u, 4294967295u)), Struct_1(4294967295u, i32(-2147483648), vec2<bool>(false, false), vec2<u32>(65164u, 83253u)), Struct_1(0u, -11942i, vec2<bool>(true, true), vec2<u32>(4294967295u, 4294967295u)), Struct_1(33371u, 9276i, vec2<bool>(true, false), vec2<u32>(15698u, 0u)), Struct_1(0u, -6610i, vec2<bool>(false, true), vec2<u32>(4294967295u, 1u)), Struct_1(1u, 8269i, vec2<bool>(true, true), vec2<u32>(1u, 0u)), Struct_1(46652u, -19741i, vec2<bool>(false, true), vec2<u32>(30827u, 1u)), Struct_1(4294967295u, -63854i, vec2<bool>(true, true), vec2<u32>(1u, 23634u)), Struct_1(75369u, 6032i, vec2<bool>(true, true), vec2<u32>(19419u, 8165u)), Struct_1(4294967295u, 8648i, vec2<bool>(true, false), vec2<u32>(59200u, 80049u)), Struct_1(52914u, -4978i, vec2<bool>(false, false), vec2<u32>(1460u, 1u)), Struct_1(0u, 0i, vec2<bool>(true, true), vec2<u32>(0u, 4294967295u)), Struct_1(79234u, -55360i, vec2<bool>(false, true), vec2<u32>(61405u, 4294967295u)), Struct_1(42207u, 0i, vec2<bool>(true, false), vec2<u32>(1u, 4294967295u)), Struct_1(1u, -1i, vec2<bool>(true, true), vec2<u32>(67407u, 1u)), Struct_1(32896u, 0i, vec2<bool>(true, true), vec2<u32>(0u, 0u)), Struct_1(19044u, i32(-2147483648), vec2<bool>(false, true), vec2<u32>(4294967295u, 0u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = firstLeadingBit(arg_0.d);
    var var_1 = arg_0.b;
    var var_2 = ~4294967295u;
    var var_3 = 62553u;
    global2 = array<Struct_1, 30>();
    return -2511f;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec3<f32>) -> i32 {
    global2 = array<Struct_1, 30>();
    global2 = array<Struct_1, 30>();
    let var_0 = max(_wgslsmith_add_i32(1i, -_wgslsmith_dot_vec2_i32(abs(arg_0.zy), -arg_0.yz)), firstTrailingBit(arg_0.x));
    var var_1 = global2[_wgslsmith_index_u32(14953u, 30u)];
    let var_2 = Struct_1(global1.d.x, global1.b, var_1.c, ~var_1.d);
    return global1.b;
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(min(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)), global1.b, global1.c, _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(65567u, 4294967295u)), vec2<u32>(global1.d.x, 41649u) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), ~vec2<u32>(global1.a, 1u))), global2[_wgslsmith_index_u32(1u, 30u)], true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(252f, 331f, false)) + _wgslsmith_f_op_f32(1886f - 2832f)), 1f)));
    let var_1 = Struct_1(_wgslsmith_mult_u32(1u, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-(global1.b << (28216u % 32u)), 2147483647i, ~global1.b), vec3<i32>(-4799i, func_3(vec3<i32>(global1.b, global1.b, -2189i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-850f, -1419f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2425f, var_0.x, var_0.x) + vec3<f32>(-605f, var_0.x, -1883f))), firstTrailingBit(11199i))), global1.c, vec2<u32>(u_input.a, 1u));
    global1 = var_1;
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(236f, -1844f) + vec2<f32>(1000f, var_0.x)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(505f, _wgslsmith_f_op_f32(min(-1117f, var_0.x))) * vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -207f), -434f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, _wgslsmith_f_op_f32(389f + var_0.x)))), vec2<bool>(false, !(var_1.b >= (0i ^ var_1.b)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(~(vec3<u32>(82613u, var_1.a, 43859u) | vec3<u32>(var_1.a, 0u, var_1.a)), vec3<u32>(0u & var_1.a, u_input.a ^ 0u, _wgslsmith_sub_u32(7754u, global1.d.x))), max(var_1.b, 1i), vec2<bool>(false, true), vec2<u32>(~reverseBits(u_input.a), countOneBits(u_input.a))), !arg_0.xx);
    return Struct_2(Struct_1(0u, -select(var_2.a.b, 20974i, false) | global1.b, var_1.c, vec2<u32>(1u, global1.d.x)), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<bool>(global1.c.x, global1.c.x, !global1.c.x));
    var var_1 = var_0.a.a;
    var_1 = ~_wgslsmith_dot_vec2_u32(firstLeadingBit(firstTrailingBit(global1.d)) ^ var_0.a.d, ~vec2<u32>(1u, countOneBits(var_0.a.d.x)));
    var var_2 = func_1(!(!vec3<bool>(all(vec3<bool>(global1.c.x, true, true)), true, global1.c.x))).a;
    let var_3 = ~45398u;
    var var_4 = global2[_wgslsmith_index_u32(0u, 30u)];
    let var_5 = func_1(vec3<bool>(false, true != !var_0.b.x, true));
    let var_6 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(912f - 863f) - _wgslsmith_f_op_f32(min(1483f, 114f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f)), _wgslsmith_f_op_f32(f32(-1f) * -274f)))))));
    var_1 = ~var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_6, var_6), _wgslsmith_f_op_f32(var_6 + var_6), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_6))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_6 + -1120f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-661f)) + _wgslsmith_f_op_f32(func_2(var_5.a, var_0.a, var_0.a.c.x)))), _wgslsmith_f_op_f32(var_6 * -1107f), false)), min(-1406i, _wgslsmith_clamp_i32(1i, var_0.a.b, _wgslsmith_clamp_i32(-1i, var_4.b, var_4.b))));
}

