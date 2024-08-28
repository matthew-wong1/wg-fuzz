struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<u32, 27>;

var<private> global2: array<i32, 32> = array<i32, 32>(3865i, -1i, -27138i, i32(-2147483648), 2147483647i, -34394i, -1i, 2139i, i32(-2147483648), 1i, 1i, 10170i, -33515i, 1i, 30597i, 18977i, 1i, 0i, 20772i, i32(-2147483648), 1i, 496i, -2926i, 1i, i32(-2147483648), -10422i, 0i, i32(-2147483648), 1i, 2147483647i, -1i, -28555i);

var<private> global3: array<Struct_2, 19>;

var<private> global4: Struct_2 = Struct_2(Struct_1(0u, false), -410f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(global4.a, 1015f);
    let var_1 = var_0.a.a;
    var var_2 = var_0.a;
    var var_3 = Struct_4(Struct_1(firstTrailingBit(~u_input.c.x & ~var_0.a.a), true), ~4294967295u);
    global4 = global3[_wgslsmith_index_u32(min(u_input.b, ~_wgslsmith_mult_u32(var_3.b, 22607u)), 19u)];
    return Struct_2(global4.a, _wgslsmith_div_f32(-1174f, global4.b));
}

fn func_1() -> Struct_3 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(max(16865i, -19038i), u_input.a << (34472u % 32u), 2147483647i, 20311i), ~(-vec4<i32>(51323i, -2147483647i, 20714i, 1i))), -vec4<i32>(1i, 2147483647i, -25012i, _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(32114u, 32u)], 17315i))), -_wgslsmith_clamp_i32(0i, -16406i, reverseBits(18054i)));
    global2 = array<i32, 32>();
    let var_1 = _wgslsmith_mod_i32(-37469i, 1i);
    let var_2 = func_2();
    var var_3 = -vec3<i32>(1i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.a.a, ~global4.a.a), 27u)], 32u)], var_0.x);
    return Struct_3(false, false);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b) - _wgslsmith_f_op_f32(f32(-1f) * -678f)), _wgslsmith_f_op_f32(-global4.b)) * arg_0.xx), _wgslsmith_f_op_vec2_f32(-arg_0.zy), vec2<bool>(!any(!vec4<bool>(arg_1.a.b, false, global4.a.b, global4.a.b)), global4.a.b)));
    global3 = array<Struct_2, 19>();
    var var_1 = Struct_4(func_2().a, arg_1.a.a);
    var var_2 = Struct_4(arg_1.a, global1[_wgslsmith_index_u32(u_input.c.x, 27u)]);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-242f - global4.b)));
    return func_1();
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_2 {
    global0 = vec2<bool>(true, !all(vec3<bool>(true, func_1().b, all(vec3<bool>(arg_2.b, arg_3.x, arg_2.b)))));
    let var_0 = Struct_4(Struct_1(arg_1.x, false), firstTrailingBit(1u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1582f, 1871f) * _wgslsmith_div_vec2_f32(vec2<f32>(1179f, 1029f), vec2<f32>(1346f, global4.b))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-611f, -417f) + vec2<f32>(340f, -1570f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b, 168f)), vec2<f32>(-1948f, global4.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b, global4.b)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(464f, -1000f, 1569f, var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(565f, 995f, 1747f, var_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -977f, 1178f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-593f, var_1.x, global4.b, global4.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b, var_1.x, global4.b, -464f) + vec4<f32>(1572f, -130f, var_1.x, global4.b)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, global4.b, global4.b, global4.b)))))));
    let var_3 = Struct_5(arg_0, func_2(), Struct_1(_wgslsmith_sub_u32(abs(global1[_wgslsmith_index_u32(var_0.a.a, 27u)]) & global1[_wgslsmith_index_u32(4294967295u, 27u)], var_0.a.a), true), -u_input.d, var_2.x);
    return Struct_2(func_2().a, _wgslsmith_f_op_f32(max(func_2().b, _wgslsmith_f_op_f32(var_3.b.b * var_3.b.b))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<f32>) -> StorageBuffer {
    let var_0 = func_4(any(vec3<bool>(true, true, true)), vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(global1[_wgslsmith_index_u32(1u, 27u)], global4.a.a)) ^ ~arg_0.a.a, 27u)], abs(u_input.b), 1u ^ func_4(false || arg_0.a.b, abs(vec4<u32>(global1[_wgslsmith_index_u32(arg_0.a.a, 27u)], 1u, 15937u, arg_0.a.a)), Struct_3(false, global0.x), !vec2<bool>(arg_0.a.b, false)).a.a, _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(30591u, arg_0.a.a), vec2<u32>(global4.a.a, 85708u)), vec2<u32>(arg_0.a.a ^ 36697u, global4.a.a))), Struct_3(any(select(vec3<bool>(false, global0.x, true), select(vec3<bool>(true, global4.a.b, true), vec3<bool>(false, false, global0.x), vec3<bool>(false, global4.a.b, false)), !vec3<bool>(global0.x, global4.a.b, true))), !global4.a.b), !(!select(!vec2<bool>(global4.a.b, arg_0.a.b), select(vec2<bool>(false, false), vec2<bool>(false, global4.a.b), global0.x), !vec2<bool>(arg_0.a.b, global4.a.b)))).b;
    global1 = array<u32, 27>();
    global3 = array<Struct_2, 19>();
    var var_1 = arg_2.x;
    global3 = array<Struct_2, 19>();
    return StorageBuffer(func_4(!(global1[_wgslsmith_index_u32(~0u, 27u)] > global4.a.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(~global1[_wgslsmith_index_u32(0u, 27u)], _wgslsmith_div_u32(28959u, global4.a.a), global1[_wgslsmith_index_u32(~global4.a.a, 27u)], 45547u), ~select(vec4<u32>(global4.a.a, 5517u, 0u, arg_0.a.a), vec4<u32>(1u, arg_0.a.a, 4294967295u, global1[_wgslsmith_index_u32(18325u, 27u)]), global4.a.b), vec4<u32>(~25794u, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(arg_0.a.a, u_input.c.x)), ~13194u, u_input.c.x)), Struct_3(global0.x, global0.x), !(!select(vec2<bool>(true, true), vec2<bool>(false, global0.x), global4.a.b))).b, reverseBits(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.a.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3535u, 27u)], 27u)], global4.a.a, global1[_wgslsmith_index_u32(110277u, 27u)]), vec4<u32>(arg_0.a.a, 4294967295u, u_input.b, global4.a.a), vec4<u32>(global1[_wgslsmith_index_u32(1u, 27u)], 0u, global4.a.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)])))), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_mult_vec4_u32(~countOneBits(~vec4<u32>(0u, 51255u, 4294967295u, 48511u)), countOneBits(select(vec4<u32>(global4.a.a, global4.a.a, 42953u, 1534u), vec4<u32>(13341u, global4.a.a, u_input.c.x, global1[_wgslsmith_index_u32(global4.a.a, 27u)]), arg_0.a.b))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(select(vec2<bool>(global4.a.a <= global4.a.a, !global4.a.b), !vec2<bool>(global0.x, false), true), select(!(!vec2<bool>(global4.a.b, global0.x)), select(vec2<bool>(true, global4.a.b), vec2<bool>(global4.a.b, global0.x), global4.a.b), all(vec4<bool>(false, global0.x, global0.x, false))), global0.x);
    let var_0 = global3[_wgslsmith_index_u32(countOneBits(1u), 19u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b, 237f, global4.b, var_0.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-226f, var_0.b, var_0.b, global4.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -1390f, 1089f, 386f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1023f, -134f, global4.b, -868f) - vec4<f32>(var_0.b, 1615f, global4.b, -306f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b, 291f, 1425f, global4.b))))));
    let x = u_input.a;
    s_output = func_5(func_4(!var_0.a.b, ~abs(~vec4<u32>(var_0.a.a, 4294967295u, 24045u, 4294967295u)), func_3(var_1.zyy, global3[_wgslsmith_index_u32(global4.a.a, 19u)], func_1()), !select(vec2<bool>(false, var_0.a.b), select(vec2<bool>(var_0.a.b, global4.a.b), vec2<bool>(false, global0.x), vec2<bool>(false, false)), true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(105f, -275f, global4.b, var_1.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-971f, var_0.b, -1118f, var_0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, global4.b, var_1.x, var_1.x) + vec4<f32>(725f, var_0.b, var_1.x, 314f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(190f, var_0.b, var_0.b, global4.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b, global4.b, var_1.x, -478f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(var_1.wxy))))));
}

