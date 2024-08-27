struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_3,
    d: bool,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: u32,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(2346f, 127f, -570f, 854f, 258f, 1051f, -1000f, -725f, 989f, -1000f, -1202f, 467f, 241f, -534f, 1430f, 913f, 1000f, 1138f, -1841f, 453f, -1369f, -671f, -331f, 754f, -486f, -887f, 1292f, 394f, 106f, -478f, -455f);

var<private> global1: array<i32, 18> = array<i32, 18>(46652i, -43805i, i32(-2147483648), 1i, 2147483647i, -1i, 2147483647i, 0i, 2147483647i, -12742i, 0i, 15342i, 0i, 2147483647i, 38300i, -20323i, -1i, -1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    global0 = array<f32, 31>();
    var var_0 = ~arg_0.d;
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_1 = var_0.x;
    return arg_0.d.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(813f + global0[_wgslsmith_index_u32((~_wgslsmith_div_u32(0u, 4294967295u) ^ arg_0.x) << (~arg_0.x % 32u), 31u)]);
    let var_1 = vec4<i32>(~(-2147483647i), -u_input.a & -4063i, i32(-1i) * -u_input.a, (-1i & _wgslsmith_div_i32(-global1[_wgslsmith_index_u32(arg_0.x, 18u)], i32(-1i) * -13591i)) & 0i);
    let var_2 = vec2<f32>(-1020f, _wgslsmith_f_op_f32(sign(arg_1.a.a.b.x)));
    var var_3 = 1i;
    global0 = array<f32, 31>();
    return arg_1.a.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<bool>) -> u32 {
    var var_0 = !arg_2.x;
    global1 = array<i32, 18>();
    var var_1 = abs(16534u);
    var var_2 = false;
    global0 = array<f32, 31>();
    return _wgslsmith_mod_u32(arg_0.d.x, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(~4294967295u, abs(25746u)), _wgslsmith_clamp_u32(abs(~118228u), 0u, ~(1u >> (arg_1.a.a.d.x % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 18>();
    var var_0 = func_1(Struct_1(any(vec3<bool>(true, false, true)), vec2<f32>(global0[_wgslsmith_index_u32(~(~44221u), 31u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 31u)])), _wgslsmith_f_op_f32(211f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 31u)])), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(27026u, 4294967295u), vec2<u32>(99818u, 100941u)), abs(60974u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(14108u, 31u)], -111f, global0[_wgslsmith_index_u32(76279u, 31u)]) - vec4<f32>(911f, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(32586u, 31u)], 297f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(19160u, 31u)], -278f, global0[_wgslsmith_index_u32(1u, 31u)], 2124f), vec4<f32>(-186f, -1269f, -527f, global0[_wgslsmith_index_u32(4078u, 31u)])))))))));
    var var_1 = global0[_wgslsmith_index_u32(72910u, 31u)];
    var_0 = 10666u;
    global1 = array<i32, 18>();
    let var_2 = vec2<i32>(u_input.a, ~(firstLeadingBit(u_input.a) << (func_3(func_2(vec3<u32>(4294967295u, 0u, 1u), Struct_3(Struct_2(Struct_1(false, vec2<f32>(881f, -389f), global0[_wgslsmith_index_u32(56461u, 31u)], vec2<u32>(78403u, 42830u)), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], -444f, global0[_wgslsmith_index_u32(5815u, 31u)], -654f)))), Struct_3(Struct_2(Struct_1(true, vec2<f32>(global0[_wgslsmith_index_u32(27700u, 31u)], global0[_wgslsmith_index_u32(20510u, 31u)]), -724f, vec2<u32>(1u, 4294967295u)), vec4<f32>(1647f, 1632f, global0[_wgslsmith_index_u32(4294967295u, 31u)], -2605f))), vec2<bool>(true, true)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_sub_vec4_i32(vec4<i32>(-25766i, -2147483647i, var_2.x, u_input.a), ~vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(7757u, 18u)], u_input.a, var_2.x))), vec4<i32>(u_input.a, -global1[_wgslsmith_index_u32(~131110u, 18u)] ^ ~(u_input.a & 1i), 1i, reverseBits(var_2.x ^ u_input.a)), _wgslsmith_f_op_f32(1521f * global0[_wgslsmith_index_u32(51825u, 31u)]));
}

