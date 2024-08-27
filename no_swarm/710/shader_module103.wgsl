struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(true, true, true, true, false, false, false, true, false, true, false, false, true, false, true, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global0 = array<bool, 17>();
    let var_0 = -1000f;
    global0 = array<bool, 17>();
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)) * var_0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) * var_0)))));
    var var_2 = Struct_5(Struct_3(Struct_2(~_wgslsmith_mod_u32(u_input.a.x, 4294967295u), vec2<bool>(var_1 > var_1, true), Struct_1(true)), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, -185f, any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(20882u, 17u)]))))), u_input.b), Struct_2(u_input.a.x, vec2<bool>(true, false), Struct_1(true)), vec4<f32>(-102f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)) - _wgslsmith_f_op_f32(f32(-1f) * -1623f)), var_0, var_1), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(var_0, -180f)) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_1), vec2<f32>(-302f, 1812f))))))), !(!select(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 17u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true, global0[_wgslsmith_index_u32(1u, 17u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 17u)], true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(28284u, 17u)], false, global0[_wgslsmith_index_u32(0u, 17u)]), true))));
    return _wgslsmith_f_op_f32(ceil(var_1));
}

fn func_2(arg_0: f32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -946f)));
    let var_1 = u_input.a.x;
    return Struct_5(Struct_3(Struct_2(~min(var_1, var_1), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(29894u, 17u)], false)), select(vec2<bool>(global0[_wgslsmith_index_u32(var_1, 17u)], false), vec2<bool>(global0[_wgslsmith_index_u32(55655u, 17u)], global0[_wgslsmith_index_u32(99263u, 17u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 17u)]))), Struct_1(any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 17u)], true)))), ~(~(-3882i)), arg_0, 2147483647i & u_input.b), Struct_2(u_input.a.x, vec2<bool>(global0[_wgslsmith_index_u32(~(~74105u), 17u)], !global0[_wgslsmith_index_u32(var_1, 17u)]), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, u_input.c, u_input.b), vec4<i32>(u_input.b, -32350i, -88274i, u_input.b)) == 1i)), vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(-var_0), var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 1944f))))), select(vec4<bool>(global0[_wgslsmith_index_u32(var_1, 17u)], global0[_wgslsmith_index_u32(~1u, 17u)], false, true), vec4<bool>(true, false, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, u_input.a.x, 0u, var_1), vec4<u32>(0u, 30476u, 4294967295u, u_input.a.x)), 17u)], true), vec4<bool>(false, true, any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 17u)], true, false)) | false, true)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: Struct_5) -> Struct_2 {
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    return arg_3.b;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5) -> Struct_4 {
    let var_0 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b.a, ~21263u, ~arg_0.a.a), vec3<u32>(arg_0.a.a, arg_0.a.a, arg_0.a.a) >> (abs(vec3<u32>(arg_1.a.a.a, u_input.a.x, 4294967295u)) % vec3<u32>(32u))));
    var var_1 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + arg_0.c)))).a.a;
    var var_2 = Struct_5(arg_0, func_2(_wgslsmith_f_op_f32(-arg_1.a.c)).b, arg_1.c, _wgslsmith_div_vec2_f32(arg_1.c.xx, arg_1.c.zz), select(vec4<bool>(true, any(func_2(arg_1.d.x).e), true, false), vec4<bool>(!(64962u <= u_input.a.x), true, true, func_2(454f).a.a.c.a), arg_1.e));
    let var_3 = var_2.a.c;
    var_1 = var_2.a.a;
    return Struct_4(Struct_3(Struct_2(arg_1.a.a.a, var_2.b.b, Struct_1(arg_1.e.x != true)), var_2.a.d, _wgslsmith_f_op_f32(floor(arg_1.a.c)), 1i), 4294967295u);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4, arg_3: Struct_5) -> Struct_4 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_div_vec4_f32(arg_3.c, arg_3.c);
    let var_2 = ~arg_0.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.c)), _wgslsmith_f_op_vec4_f32(arg_3.c - _wgslsmith_f_op_vec4_f32(vec4<f32>(1117f, -965f, -1684f, 237f) * vec4<f32>(arg_1, var_1.x, arg_1, arg_3.d.x))))));
    global0 = array<bool, 17>();
    return func_5(var_0.a, Struct_5(arg_2.a, func_4(9589u, arg_3.b.c.a, all(!arg_2.a.a.b), func_2(-415f)), _wgslsmith_f_op_vec4_f32(round(func_2(_wgslsmith_f_op_f32(var_0.a.c * arg_1)).c)), func_2(_wgslsmith_f_op_f32(-807f * _wgslsmith_f_op_f32(var_0.a.c * arg_1))).c.xx, !vec4<bool>(var_2 < 0u, arg_2.a.a.c.a || global0[_wgslsmith_index_u32(arg_2.b, 17u)], false, var_0.a.d > u_input.b)));
}

fn func_6(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(arg_2.a);
    global0 = array<bool, 17>();
    let var_1 = arg_0;
    global0 = array<bool, 17>();
    var var_2 = var_1.a.a.a;
    return arg_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(func_6(func_1(Struct_2(37941u, vec2<bool>(false, global0[_wgslsmith_index_u32(11961u, 17u)]), Struct_1(true)), _wgslsmith_f_op_f32(1388f - -681f), Struct_4(Struct_3(Struct_2(521u, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), Struct_1(false)), u_input.b, 293f, u_input.c), u_input.a.x), Struct_5(Struct_3(Struct_2(1u, vec2<bool>(true, global0[_wgslsmith_index_u32(36682u, 17u)]), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 17u)])), u_input.c, 206f, u_input.b), Struct_2(57147u, vec2<bool>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), Struct_1(false)), vec4<f32>(-1000f, 677f, -1217f, -175f), vec2<f32>(-2438f, -1328f), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], false, false, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2044f, 1147f, -325f, -677f)), vec4<f32>(-403f, 1123f, -166f, 590f), any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], false)))), Struct_1(u_input.a.x != u_input.a.x)), ~_wgslsmith_sub_i32(abs(u_input.c), u_input.b), _wgslsmith_f_op_f32(trunc(func_2(_wgslsmith_f_op_f32(select(1000f, -2901f, true))).d.x)), abs(1i & u_input.b)), abs(_wgslsmith_mod_u32(4294967295u | u_input.a.x, ~_wgslsmith_mult_u32(31400u, u_input.a.x))));
    global0 = array<bool, 17>();
    var var_1 = var_0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(-(~(vec2<i32>(2147483647i, 0i) << (vec2<u32>(94066u, u_input.a.x) % vec2<u32>(32u)))), -vec2<i32>(max(-16763i, 2147483647i), var_0.a.d ^ u_input.c)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 1i, 1i, u_input.b) & -vec4<i32>(-2147483647i, 10207i, var_0.a.d, 0i), ~(~vec4<i32>(-2147483647i, var_0.a.b, 2147483647i, var_0.a.d)), max(vec4<i32>(-14865i, var_0.a.b, u_input.c, -2147483647i), vec4<i32>(var_0.a.b, var_0.a.b, 42417i, -1i)) & firstTrailingBit(vec4<i32>(u_input.b, u_input.b, -12350i, -6714i))), _wgslsmith_f_op_f32(min(-376f, _wgslsmith_f_op_f32(f32(-1f) * -1001f))), _wgslsmith_add_i32(func_1(func_2(_wgslsmith_f_op_f32(1480f + 1352f)).b, func_2(-248f).d.x, func_1(func_2(var_0.a.c).a.a, var_0.a.c, Struct_4(var_0.a, 72266u), func_2(var_0.a.c)), Struct_5(var_0.a, func_5(Struct_3(Struct_2(var_1.a, var_1.b, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 17u)])), var_0.a.d, var_0.a.c, var_0.a.d), Struct_5(var_0.a, Struct_2(4294967295u, vec2<bool>(var_0.a.a.b.x, false), Struct_1(var_0.a.a.b.x)), vec4<f32>(-371f, 846f, var_0.a.c, var_0.a.c), vec2<f32>(var_0.a.c, 508f), vec4<bool>(var_1.b.x, true, true, true))).a.a, vec4<f32>(var_0.a.c, var_0.a.c, -870f, var_0.a.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-486f, -464f)), func_2(var_0.a.c).e)).a.b, var_0.a.b), 34858i);
}

