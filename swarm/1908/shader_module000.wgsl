struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: Struct_1 = Struct_1(-1008f, true);

var<private> global2: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(563f, 1133f, -268f), vec3<f32>(1697f, 697f, -1679f), vec3<f32>(-561f, -133f, -428f), vec3<f32>(1533f, 786f, -500f), vec3<f32>(-251f, -1484f, 650f), vec3<f32>(-1046f, -699f, -360f), vec3<f32>(-1767f, -1701f, 948f), vec3<f32>(-809f, 303f, 932f), vec3<f32>(-866f, -291f, 223f), vec3<f32>(685f, 552f, 204f), vec3<f32>(376f, -564f, 108f), vec3<f32>(-1178f, 1001f, 1466f), vec3<f32>(435f, 713f, -1000f), vec3<f32>(-2149f, -1530f, -103f), vec3<f32>(-3212f, -1149f, 265f), vec3<f32>(-214f, 402f, -1157f), vec3<f32>(819f, -659f, -1000f), vec3<f32>(395f, 125f, -1413f), vec3<f32>(1238f, 850f, -816f), vec3<f32>(749f, 543f, 676f), vec3<f32>(-1168f, 667f, 1703f), vec3<f32>(-1700f, 162f, 377f));

var<private> global3: vec4<u32>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global3 = u_input.c;
    global2 = array<vec3<f32>, 22>();
    var var_0 = Struct_2(40601i, abs(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(15068u, global3.x), u_input.a.x)), Struct_1(arg_0, !any(!vec3<bool>(global1.b, false, true))));
    let var_1 = !vec4<bool>(var_0.c.b, !(!any(vec3<bool>(global4.b, true, global1.b))), true, any(vec4<bool>(any(vec3<bool>(global1.b, true, true)), !global1.b, true, all(vec2<bool>(true, false)))));
    let var_2 = var_0.c;
    return Struct_1(_wgslsmith_f_op_f32(165f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a + arg_0)), -985f))), global1.b);
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<bool>(global1.b, all(select(select(vec3<bool>(false, global1.b, global4.b), vec3<bool>(false, global4.b, false), vec3<bool>(true, global4.b, false)), vec3<bool>(true, true, true), !vec3<bool>(false, global4.b, global1.b))) != true, global1.b);
    var var_1 = Struct_2(u_input.d, ~(~_wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(43382u, global3.x, u_input.b.x, 0u)))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-415f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1237f * global1.a) + _wgslsmith_f_op_f32(-global1.a)))), var_0.x));
    global2 = array<vec3<f32>, 22>();
    var var_2 = u_input.b.x >> (8674u % 32u);
    global2 = array<vec3<f32>, 22>();
    return u_input.c;
}

fn func_1() -> bool {
    let var_0 = vec4<i32>(min(-u_input.d, _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.d, u_input.d << (global3.x % 32u)), ~u_input.d)), _wgslsmith_mod_i32(-21270i, countOneBits(~(~(-1i)))), 2147483647i, countOneBits(-1i) >> (u_input.b.x % 32u));
    var var_1 = func_2(global1.a);
    let var_2 = 1i;
    global3 = _wgslsmith_mult_vec4_u32(vec4<u32>(min(_wgslsmith_add_u32(u_input.c.x, 1u), ~3136u) & (67365u << (global3.x % 32u)), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4582u, 78485u), vec3<u32>(u_input.e.x, 92648u, 85489u)), 0u), 6049u, ~(~u_input.b.x)), u_input.c);
    global3 = func_3() & ~(~u_input.c);
    return global4.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_3(global4.b, ~_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_sub_u32(firstTrailingBit(107057u), 1u)), true);
    global0 = array<i32, 21>();
    let var_1 = Struct_2(-33384i, ~u_input.e.x ^ 32943u, Struct_1(-1000f, !(any(vec4<bool>(global1.b, arg_1.x, false, false)) && all(arg_1))));
    global1 = var_1.c;
    var var_2 = select(select(!vec4<bool>(all(arg_1), arg_1.x && false, global1.b, true), vec4<bool>(global1.b, true, any(!vec2<bool>(true, var_0.a)), var_1.c.b), select(vec4<bool>(true, true, true | global4.b, func_1()), vec4<bool>(!var_1.c.b, true, all(vec2<bool>(arg_1.x, true)), true & var_0.a), any(vec3<bool>(false, global1.b, true)))), select(select(!select(vec4<bool>(true, var_0.c, arg_1.x, global4.b), vec4<bool>(false, var_0.a, false, global4.b), true), vec4<bool>(global1.b, !global4.b, global4.b, all(vec3<bool>(true, false, var_1.c.b))), vec4<bool>(true, all(vec2<bool>(false, global1.b)), true, global4.b && true)), !select(!vec4<bool>(arg_1.x, true, global1.b, true), vec4<bool>(true, true, global4.b, arg_1.x), any(vec4<bool>(true, var_0.c, global4.b, false))), !var_0.c), select(!(!select(vec4<bool>(arg_1.x, global1.b, false, false), vec4<bool>(true, true, global1.b, global4.b), true)), vec4<bool>(arg_1.x && (u_input.b.x >= 26970u), true, var_1.c.a != _wgslsmith_div_f32(global1.a, 900f), true), any(vec2<bool>(var_0.c & true, false))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global3.ww, select(vec2<bool>(!func_1(), any(vec3<bool>(global1.b, true, global4.b))), !(!vec2<bool>(global4.b, false)), global1.b));
    var var_1 = func_2(global4.a);
    var_0 = func_4(max(global3.xw, global3.ww), !select(!select(vec2<bool>(true, var_1.b), vec2<bool>(true, var_0.a), vec2<bool>(false, global4.b)), !(!vec2<bool>(var_0.c, var_1.b)), true));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(-1i, -_wgslsmith_div_i32(-1i, 1i), u_input.d), reverseBits(_wgslsmith_div_i32(0i, (-24423i >> (0u % 32u)) ^ max(global0[_wgslsmith_index_u32(global3.x, 21u)], -1i))), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(~(-vec2<i32>(-42216i, u_input.d)), vec2<i32>(1i, 1i), -vec2<i32>(u_input.d, u_input.d)), vec2<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 21u)], 2147483647i, -2147483647i), vec3<i32>(3515i, -8349i, -1i)), ~global0[_wgslsmith_index_u32(1505u, 21u)], true | var_0.a), ~u_input.d | global0[_wgslsmith_index_u32(global3.x, 21u)])), ~(~_wgslsmith_mult_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(global3.x, 21u)], u_input.d), vec2<i32>(u_input.d, -1802i) | vec2<i32>(global0[_wgslsmith_index_u32(var_0.b, 21u)], u_input.d))));
}

