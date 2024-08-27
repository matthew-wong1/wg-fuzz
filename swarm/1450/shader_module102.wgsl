struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: array<f32, 1>;

var<private> global3: array<bool, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    global2 = array<f32, 1>();
    global2 = array<f32, 1>();
    var var_0 = arg_3;
    let var_1 = !(false && !((var_0.a & global1.a) && any(vec3<bool>(false, var_0.a, global3[_wgslsmith_index_u32(16397u, 4u)]))));
    global3 = array<bool, 4>();
    return Struct_2(true);
}

fn func_1() -> Struct_2 {
    global3 = array<bool, 4>();
    return func_2(~(~(~59605u)), select(countOneBits(vec3<i32>(~global1.b, _wgslsmith_div_i32(0i, 28680i), -global1.b)), vec3<i32>(14441i, global1.b, -1i), vec3<bool>(true, true, false)), 0u, Struct_1(false, 2147483647i, global1.a, 26204u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.d, 4294967295u, global1.e, global1.e), vec4<u32>(0u, u_input.a, u_input.b, 0u) >> (vec4<u32>(60304u, 4294967295u, u_input.b, global1.d) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(~vec4<u32>(20857u, u_input.a, u_input.a, 0u), firstLeadingBit(vec4<u32>(global1.e, 53264u, 1u, 74428u))))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: vec3<i32>) -> u32 {
    var var_0 = func_2(30269u, -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(58779i, -2147483647i, 1i, 0i), vec4<i32>(arg_3.x, -26855i, arg_3.x, arg_3.x)) & -20486i, -6342i, countOneBits(abs(arg_3.x))), global1.e, Struct_1(true, -1467i, true, countOneBits(firstLeadingBit(1u)), ~(~70565u << ((1u & u_input.a) % 32u))));
    return ~(~(u_input.b ^ (_wgslsmith_mult_u32(4294967295u, u_input.b) << (_wgslsmith_div_u32(arg_1, global1.d) % 32u))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(317f + 814f)))) <= _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(select(arg_1, ~36814u, global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 4u)]), 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(272f + -234f)))));
    return Struct_1(func_1().a, firstLeadingBit(global1.b) ^ -abs(_wgslsmith_clamp_i32(global1.b, global1.b, 6093i)), all(!(!(!vec2<bool>(arg_0.a, global1.a)))), 63669u, 97329u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    var var_1 = func_4(func_1(), u_input.b, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~reverseBits(vec2<u32>(4294967295u, 78633u)), vec2<u32>(func_3(Struct_2(global1.a), 48639u, global1.c, vec3<i32>(-28864i, 0i, global1.b)), abs(global1.d))), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, u_input.b), firstTrailingBit(vec2<u32>(u_input.a, global1.d))), ~(~vec2<u32>(30120u, 32603u))), ~(~(~vec2<u32>(u_input.b, u_input.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-991f * 487f) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 1u)] + -1000f)), 481f)));
    var var_2 = ~(0u | var_1.e);
    global0 = !(var_1.b >= abs(0i));
    var var_3 = Struct_2(all(!(!(!vec4<bool>(var_1.a, global3[_wgslsmith_index_u32(40397u, 4u)], global3[_wgslsmith_index_u32(var_1.d, 4u)], false)))));
    var_3 = func_1();
    var var_4 = true == (_wgslsmith_f_op_f32(-617f + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 1u)] + _wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 1u)], -633f))) == _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.d, 1u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 1u)]) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 1u)]))));
    let var_5 = 0u;
    let var_6 = Struct_1(true, ((global1.b & _wgslsmith_add_i32(-1i, 18128i)) & (11505i | global1.b)) & select(select(global1.b, _wgslsmith_add_i32(var_1.b, global1.b), any(vec2<bool>(false, false))), var_1.b, true), global2[_wgslsmith_index_u32(~abs(max(54099u, 1u)), 1u)] >= -310f, _wgslsmith_sub_u32(firstLeadingBit(u_input.a), u_input.a), var_5);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(var_6.b, global1.b), ~(-1i), firstLeadingBit(1i) & firstTrailingBit(var_6.b), -1i), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~var_6.e, 0u), ~u_input.a));
}

