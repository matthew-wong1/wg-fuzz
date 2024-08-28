struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(35953i, -1i, i32(-2147483648), 2147483647i, i32(-2147483648), 90377i, 24660i, 0i, 1i, 0i, 2147483647i, -1i, 85969i, 2147483647i, 1i, 0i, i32(-2147483648), i32(-2147483648), 0i, 3176i, -13043i, -35552i, 0i, -72395i, -1i, 13275i);

var<private> global1: Struct_5 = Struct_5(vec4<u32>(0u, 0u, 65941u, 4442u), vec2<u32>(17532u, 1u), vec2<f32>(-602f, -1270f), 11598u, vec3<bool>(false, false, true));

var<private> global2: u32 = 8558u;

var<private> global3: array<u32, 27>;

var<private> global4: vec4<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> bool {
    return global4.x;
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: vec2<u32>) -> f32 {
    global1 = Struct_5(reverseBits(_wgslsmith_mod_vec4_u32(select(vec4<u32>(global3[_wgslsmith_index_u32(global1.b.x, 27u)], 23277u, 4294967295u, 1u) ^ vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], 17114u, 1u, 1u), global1.a, !global4.x), ~(~global1.a))), countOneBits(~vec2<u32>(global1.a.x, global3[_wgslsmith_index_u32(~arg_2.x, 27u)])), global1.c, ~(~_wgslsmith_add_u32(arg_2.x ^ 46952u, ~57565u)), vec3<bool>(global1.e.x, true, arg_0));
    return arg_1.b;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(func_3(arg_0, Struct_4(Struct_2(u_input.a), 1000f), countOneBits(~(_wgslsmith_div_vec2_u32(global1.b, vec2<u32>(0u, global3[_wgslsmith_index_u32(37437u, 27u)])) & vec2<u32>(global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.b.x, 27u)], 27u)])))));
    let var_1 = global1.b;
    let var_2 = _wgslsmith_div_u32(var_1.x, _wgslsmith_div_u32(firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(74639u, global3[_wgslsmith_index_u32(45030u, 27u)], 71271u), 27u)], 27u)]), ~(~1u)));
    let var_3 = min(-firstLeadingBit(abs(-1i)), select(firstTrailingBit(-(u_input.b.x | -31255i)), _wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_div_i32(u_input.a.x & 2147483647i, -2147483647i), global0[_wgslsmith_index_u32(global1.d, 26u)]), !func_1()));
    var_0 = arg_2.x;
    return Struct_4(Struct_2(vec3<i32>(-1i) * -max(u_input.a, vec3<i32>(var_3, global0[_wgslsmith_index_u32(34083u, 26u)], u_input.b.x))), -132f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.xxz;
    var var_1 = func_2(all(vec4<bool>(global1.e.x, true, global1.e.x, func_1())), 442f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1027f, global1.c.x, global1.c.x, -549f) - vec4<f32>(global1.c.x, -181f, 350f, global1.c.x)))));
    global3 = array<u32, 27>();
    let var_2 = Struct_1(global1.c.x);
    var var_3 = func_2(false, _wgslsmith_f_op_f32(565f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * var_2.a) - _wgslsmith_f_op_f32(sign(-1428f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -829f, var_2.a, var_1.b) - vec4<f32>(global1.c.x, -877f, var_2.a, 366f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c.x, var_2.a, var_2.a, 679f), vec4<f32>(var_2.a, global1.c.x, 457f, var_2.a), vec4<bool>(false, false, true, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1538f, var_1.b, 452f, 874f))))));
    global3 = array<u32, 27>();
    let var_4 = firstTrailingBit(~firstTrailingBit(vec3<u32>(8985u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 27u)], 27u)]) | ~global1.a.xxy));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(0u, 27u)], 22270u));
}

