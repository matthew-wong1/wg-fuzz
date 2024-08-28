struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(1140f), vec2<u32>(1u, 0u), -489f), Struct_2(Struct_1(2067f), vec2<u32>(1u, 1u), 956f), Struct_2(Struct_1(-723f), vec2<u32>(18922u, 31560u), 1377f), Struct_2(Struct_1(-1000f), vec2<u32>(4294967295u, 569u), -903f), Struct_2(Struct_1(-1521f), vec2<u32>(1u, 55297u), 1160f), Struct_2(Struct_1(-332f), vec2<u32>(18012u, 1u), 144f), Struct_2(Struct_1(502f), vec2<u32>(36468u, 16521u), 1165f), Struct_2(Struct_1(224f), vec2<u32>(1u, 16763u), -124f), Struct_2(Struct_1(849f), vec2<u32>(93931u, 67432u), -1000f), Struct_2(Struct_1(-311f), vec2<u32>(4294967295u, 57967u), -374f));

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec2<bool>) -> Struct_3 {
    global1 = array<Struct_2, 10>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.a.a * _wgslsmith_div_f32(1017f, -539f)) - _wgslsmith_div_f32(arg_0.b.c, _wgslsmith_f_op_f32(-arg_0.b.c))))));
    var var_1 = arg_0.b;
    let var_2 = arg_2.x & arg_0.c.x;
    var var_3 = -1000f;
    return arg_0;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    global1 = array<Struct_2, 10>();
    global1 = array<Struct_2, 10>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0, _wgslsmith_div_vec2_f32(arg_0, arg_0))))) * arg_0);
    let var_1 = Struct_3(arg_1.a, arg_2, arg_1.c);
    global2 = func_1(arg_1, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.b.x, arg_1.b.b.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(79210u, 1u, 4294967295u, 14903u), vec4<u32>(arg_1.a.x, arg_1.a.x, arg_2.b.x, arg_2.b.x), false), select(vec4<u32>(arg_1.b.b.x, 1u, 4294967295u, var_1.a.x), vec4<u32>(arg_1.a.x, arg_2.b.x, var_1.b.b.x, arg_2.b.x), true))), var_1.a.wwx), !(!(!vec2<bool>(false, var_1.c.x)))).b.a;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_1(func_1(Struct_3(var_1.a, arg_1.b, vec2<bool>(var_1.c.x, true)), vec3<u32>(var_1.b.b.x, 1u, 1u), global0[_wgslsmith_index_u32(0u | var_1.b.b.x, 20u)]), vec3<u32>(~u_input.a, _wgslsmith_clamp_u32(72280u, 0u, 6544u), ~arg_2.b.x), vec2<bool>(all(vec3<bool>(var_1.c.x, false, false)), arg_1.c.x)).b.c)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    let var_0 = vec4<f32>(arg_1.b.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(arg_0, vec3<u32>(arg_0.a.x, 3808u, 4294967295u), vec2<bool>(arg_1.c.x, arg_1.c.x)).b.c + -2104f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1147f)) + _wgslsmith_f_op_f32(floor(942f))))) + _wgslsmith_f_op_f32(-arg_3.a)), 415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(719f * _wgslsmith_f_op_f32(func_3(vec2<f32>(572f, arg_3.a), arg_0, global1[_wgslsmith_index_u32(0u, 10u)]))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1030f) * _wgslsmith_f_op_f32(-global2.a)))));
    let var_1 = arg_0.b;
    global0 = array<vec2<bool>, 20>();
    return arg_1.c.x;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    global0 = array<vec2<bool>, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(648f, -2354f, 1927f, global2.a), vec4<f32>(-1000f, -935f, global2.a, global2.a)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.a, global2.a)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-474f, 352f, global2.a, global2.a), vec4<f32>(-349f, global2.a, 1427f, 891f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.a, global2.a, global2.a, global2.a), vec4<f32>(-438f, global2.a, -212f, global2.a)))))));
    var var_1 = func_1(Struct_3(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.c.x, arg_2, u_input.c.x, 76953u)), abs(select(vec4<u32>(64056u, u_input.a, 64003u, u_input.a), vec4<u32>(1u, 0u, u_input.c.x, 0u), arg_1))), func_1(Struct_3(vec4<u32>(4294967295u, 419u, u_input.a, 1u) ^ vec4<u32>(arg_2, 32715u, 11624u, 0u), Struct_2(Struct_1(-292f), vec2<u32>(4294967295u, 1154u), global2.a), select(vec2<bool>(arg_0, true), vec2<bool>(true, true), vec2<bool>(arg_1.x, true))), ~vec3<u32>(0u, arg_2, 13775u) & ~vec3<u32>(arg_2, u_input.a, 2561u), !func_1(Struct_3(vec4<u32>(20880u, 4294967295u, 40111u, 1u), Struct_2(Struct_1(234f), u_input.c, 948f), vec2<bool>(arg_0, arg_1.x)), vec3<u32>(1u, 1u, 35031u), vec2<bool>(true, false)).c).b, vec2<bool>(arg_1.x || (arg_0 & arg_1.x), arg_0)), _wgslsmith_clamp_vec3_u32(vec3<u32>(select(abs(19275u), 4294967295u, u_input.a <= 29740u), ~abs(arg_2), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c, u_input.c), vec2<u32>(u_input.c.x, arg_2))), abs(firstLeadingBit(vec3<u32>(arg_2, arg_2, u_input.a) & vec3<u32>(1u, 8274u, 1u))), ~vec3<u32>(u_input.c.x, ~0u, select(1u, u_input.c.x, false))), vec2<bool>(false, !all(select(arg_1.wyy, vec3<bool>(arg_0, arg_1.x, arg_1.x), arg_0)))).b.a;
    let var_2 = select(~(~select(vec4<u32>(20598u, 1u, 55426u, arg_2), select(vec4<u32>(0u, 49445u, u_input.a, 11363u), vec4<u32>(arg_2, 1u, u_input.c.x, u_input.c.x), arg_0), vec4<bool>(false, arg_0, true, arg_1.x))), ~func_1(Struct_3(~vec4<u32>(96780u, 7132u, arg_2, 49894u), Struct_2(Struct_1(global2.a), vec2<u32>(17505u, 98764u), var_1.a), global0[_wgslsmith_index_u32(arg_2, 20u)]), vec3<u32>(68282u, arg_2, u_input.c.x) << (_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, arg_2), vec3<u32>(1u, arg_2, u_input.a)) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(35752u, 20u)]).a, !(!(!vec4<bool>(arg_0, arg_0, false, true))));
    global2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -123f));
    return Struct_1(_wgslsmith_f_op_f32(sign(713f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.a == u_input.a, u_input.a != u_input.a, true), select(true, true, true))), vec4<bool>(true & func_2(Struct_3(vec4<u32>(4294967295u, 1u, 16462u, 76647u), Struct_2(Struct_1(-1000f), u_input.c, 1591f), vec2<bool>(false, false)), func_1(Struct_3(vec4<u32>(u_input.a, 1u, u_input.a, u_input.c.x), Struct_2(Struct_1(2639f), vec2<u32>(4294967295u, 4294967295u), -735f), global0[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec3<u32>(u_input.c.x, 4294967295u, u_input.a), vec2<bool>(true, false)), ~vec4<u32>(0u, 4294967295u, u_input.c.x, 27581u), Struct_1(global2.a)), !func_1(func_1(Struct_3(vec4<u32>(9953u, 1u, 0u, 4294967295u), global1[_wgslsmith_index_u32(u_input.a, 10u)], vec2<bool>(true, false)), vec3<u32>(4294967295u, 1u, 4294967295u), global0[_wgslsmith_index_u32(15695u, 20u)]), vec3<u32>(u_input.c.x, 4294967295u, 1u) ^ vec3<u32>(u_input.c.x, u_input.c.x, 76547u), vec2<bool>(true, true)).c.x, true, true), u_input.c.x);
    let var_0 = !func_1(func_1(func_1(Struct_3(vec4<u32>(u_input.c.x, 29556u, 1u, u_input.c.x), Struct_2(Struct_1(467f), u_input.c, 1092f), global0[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 7566u, u_input.a), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(u_input.a, 39551u, u_input.c.x)), select(vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.c.x, 20u)], false)), reverseBits(vec3<u32>(40698u, 47290u, u_input.c.x)), vec2<bool>(all(vec3<bool>(true, true, false)), true)), firstLeadingBit(firstTrailingBit(vec3<u32>(25816u, u_input.c.x, u_input.c.x))), global0[_wgslsmith_index_u32(u_input.a, 20u)]).c;
    global1 = array<Struct_2, 10>();
    var var_1 = func_1(func_1(func_1(Struct_3(vec4<u32>(u_input.a, 116914u, u_input.a, u_input.c.x), Struct_2(Struct_1(global2.a), u_input.c, global2.a), global0[_wgslsmith_index_u32(u_input.a | 12617u, 20u)]), vec3<u32>(~34008u, countOneBits(40748u), reverseBits(32109u)), global0[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec3<u32>(abs(~u_input.a), u_input.c.x, 4294967295u), !(!vec2<bool>(var_0.x, true))), _wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(~u_input.c.x), _wgslsmith_mult_u32(u_input.c.x | 41521u, ~u_input.c.x), 0u), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, 57342u), ~vec3<u32>(67864u, 14466u, 66644u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 24936u), vec3<u32>(u_input.c.x, 52770u, 0u) << (vec3<u32>(1u, u_input.c.x, 39702u) % vec3<u32>(32u))), !(!vec3<bool>(true, false, var_0.x)))), vec2<bool>(!(u_input.b.x > 1282i), any(!select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, false, var_0.x, false), var_0.x)))).b.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-584f, 1621f) - vec2<f32>(var_1.a, global2.a)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.a, 475f))))))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1233f * -844f))), global2.a));
    var var_3 = ~countOneBits(u_input.a);
    let var_4 = ~(~(~(reverseBits(vec3<u32>(60385u, u_input.a, u_input.c.x)) << (~vec3<u32>(0u, 1u, 19224u) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32((vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -48698i) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x))) ^ countOneBits(vec4<i32>(1i, u_input.b.x, -1i, u_input.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), u_input.b.xx), -13741i, firstTrailingBit(u_input.b.x), u_input.b.x | u_input.b.x), -(vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x) >> (vec4<u32>(0u, 11484u, 4294967295u, u_input.a) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -1i, -9091i), vec4<i32>(u_input.b.x, -50837i, -39758i, u_input.b.x)), _wgslsmith_div_i32(1i, u_input.b.x), 0i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-633f, var_1.a))) + _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(644f - 930f)))), ~var_4.x);
}

