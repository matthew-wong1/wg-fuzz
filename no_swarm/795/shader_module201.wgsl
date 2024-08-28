struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = firstTrailingBit(16678i);
    global0 = array<f32, 21>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global1.b.x, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)])))));
    var var_2 = vec4<bool>(!all(vec2<bool>(true, true)), true | !all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), true, true);
    var_2 = vec4<bool>(var_2.x, any(var_2.yy) & var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + -2765f)) != _wgslsmith_f_op_f32(trunc(655f)), !(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 6381u, 0u, u_input.a), vec4<u32>(u_input.a, 64222u, 0u, 51168u) << (vec4<u32>(global1.c, 7449u, 25965u, 1u) % vec4<u32>(32u))) >= (0u << (global1.b.x % 32u))));
    return 28953u;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(func_3(), 21u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(55968u, 21u)], 1052f))))), vec2<bool>(true, true), false);
    global0 = array<f32, 21>();
    var var_1 = ~(vec2<i32>(global1.a, select(global1.a, 1i, any(vec2<bool>(var_0.b.x, true)))) | ~vec2<i32>(0i, global1.a));
    var var_2 = ~_wgslsmith_clamp_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.a, 78351u, u_input.a, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global1.b.x, global1.c, 31737u) & vec4<u32>(614u, 23071u, 1u, 21106u), _wgslsmith_add_vec4_u32(~vec4<u32>(global1.c, u_input.a, global1.c, u_input.a), vec4<u32>(u_input.a, global1.b.x, 4294967295u, 4294967295u) | vec4<u32>(0u, global1.c, 1u, u_input.a))), vec4<u32>(_wgslsmith_clamp_u32(~19798u, global1.c & global1.b.x, reverseBits(10314u)), global1.b.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(41871u, 13699u), 0u), 88214u | global1.c));
    global0 = array<f32, 21>();
    return Struct_4(_wgslsmith_dot_vec2_i32(max(vec2<i32>(abs(global1.a), reverseBits(var_1.x)), vec2<i32>(firstLeadingBit(global1.a), ~global1.a)), vec2<i32>(-select(9015i, var_1.x, false), _wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.x, var_1.x), global1.a))), ~(~global1.b), select(~abs(~13417u), ~(~u_input.a) ^ global1.c, any(vec3<bool>(false, var_0.b.x & true, false))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    global0 = array<f32, 21>();
    let var_0 = func_2();
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1f)), -308f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1305f))), 1f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -695f, -1000f, global0[_wgslsmith_index_u32(var_0.c, 21u)]) + vec4<f32>(global0[_wgslsmith_index_u32(global1.b.x, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], -1628f, global0[_wgslsmith_index_u32(u_input.a, 21u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(14527u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], -1452f))) - vec4<f32>(global0[_wgslsmith_index_u32(var_0.c & var_0.b.x, 21u)], _wgslsmith_f_op_f32(min(-1021f, -655f)), global0[_wgslsmith_index_u32(global1.c ^ 4294967295u, 21u)], _wgslsmith_f_op_f32(f32(-1f) * -648f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(~u_input.a, 21u)], 1241f, _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(var_0.b.x, 21u)])), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(20329u, 21u)], global0[_wgslsmith_index_u32(global1.b.x, 21u)])))));
    return Struct_2(_wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(u_input.a, global1.c, 84129u, 11430u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 4294967295u, global1.b.x), max(vec4<u32>(1u, global1.b.x, global1.c, global1.b.x) >> (vec4<u32>(var_0.b.x, u_input.a, u_input.a, var_0.c) % vec4<u32>(32u)), ~vec4<u32>(29199u, 76069u, global1.b.x, var_0.c))), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.b.x, 54233u, 35983u, 84394u) | vec4<u32>(0u, global1.b.x, 98336u, u_input.a), abs(vec4<u32>(u_input.a, global1.b.x, var_0.c, var_0.b.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yz) - var_1.zw)), Struct_1(var_1.ww));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    let var_0 = func_1(~(~abs(vec4<i32>(global1.a, -28947i, 64304i, 0i) << (vec4<u32>(0u, u_input.a, 1u, u_input.a) % vec4<u32>(32u)))));
    let var_1 = reverseBits(-max(vec3<i32>(global1.a, -58353i, -global1.a), vec3<i32>(firstTrailingBit(global1.a), -2147483647i, global1.a)));
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1435f)));
}

