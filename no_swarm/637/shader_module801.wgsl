struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
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

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(1u), Struct_3(8400u), Struct_3(0u), Struct_3(73542u), Struct_3(34962u), Struct_3(21047u), Struct_3(11387u), Struct_3(48031u), Struct_3(42098u), Struct_3(4294967295u), Struct_3(5442u), Struct_3(0u), Struct_3(28947u), Struct_3(177623u), Struct_3(27228u));

var<private> global2: array<vec3<bool>, 18>;

var<private> global3: array<i32, 31> = array<i32, 31>(-44202i, 0i, -1i, 0i, 2147483647i, -7686i, 1i, -27253i, -63347i, -1i, i32(-2147483648), 51923i, 14949i, 1i, -22727i, i32(-2147483648), 0i, 12670i, -31017i, 3536i, -20934i, i32(-2147483648), -1i, 7479i, i32(-2147483648), i32(-2147483648), 27736i, -16235i, 33554i, 2147483647i, 1i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(max(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, global3[_wgslsmith_index_u32(4294967295u, 31u)], 2147483647i, global3[_wgslsmith_index_u32(u_input.a, 31u)]) & vec4<i32>(0i, global3[_wgslsmith_index_u32(u_input.e, 31u)], global3[_wgslsmith_index_u32(global0.a, 31u)], u_input.d.x), max(vec4<i32>(global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(u_input.a, 31u)], u_input.d.x, u_input.d.x), vec4<i32>(-9285i, -1i, u_input.d.x, global3[_wgslsmith_index_u32(55009u, 31u)]))), _wgslsmith_clamp_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(9182u, 31u)], u_input.d.x, global3[_wgslsmith_index_u32(global0.a, 31u)], u_input.d.x), vec4<i32>(global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(53399u, 31u)], global3[_wgslsmith_index_u32(u_input.e, 31u)], 22886i)), -vec4<i32>(2147483647i, 2147483647i, 2147483647i, 1i), ~(~vec4<i32>(-1i, 0i, global3[_wgslsmith_index_u32(4294967295u, 31u)], 44185i)))));
    global2 = array<vec3<bool>, 18>();
    let var_1 = var_0.a;
    let var_2 = abs(~(~(~(u_input.a & global0.a))));
    let var_3 = global1[_wgslsmith_index_u32(~global0.a, 15u)];
    return var_0;
}

fn func_3(arg_0: bool) -> u32 {
    global1 = array<Struct_3, 15>();
    global0 = Struct_3(_wgslsmith_mod_u32(4916u, _wgslsmith_dot_vec4_u32(vec4<u32>(27399u, 4294967295u, global0.a, 0u) << (vec4<u32>(4294967295u, global0.a, 1u, u_input.e) % vec4<u32>(32u)), vec4<u32>(0u, global0.a, global0.a, 42759u))) ^ global0.a);
    var var_0 = global1[_wgslsmith_index_u32(global0.a, 15u)];
    var var_1 = vec3<bool>(false, any(vec2<bool>(arg_0, true)), _wgslsmith_f_op_f32(select(369f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1056f + 1219f), 1f)), any(!vec4<bool>(arg_0, false, false, false)))) != 1f);
    let var_2 = func_1();
    return (countOneBits(min(1u, _wgslsmith_sub_u32(58190u, 0u))) ^ global0.a) ^ var_0.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: f32) -> vec3<u32> {
    var var_0 = Struct_3(~_wgslsmith_mult_u32(abs(u_input.a), func_3(true)));
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(f32(-1f) * -308f));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1251f * _wgslsmith_f_op_f32(trunc(682f))) - _wgslsmith_f_op_f32(-arg_1)))));
    let var_3 = vec2<bool>(true, all(!vec4<bool>(false, false, arg_2 == 524f, true)));
    return ~(~max(~(~vec3<u32>(39606u, 109289u, global0.a)), vec3<u32>(countOneBits(1u), min(83281u, 4294967295u), var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(4294967295u);
    var var_0 = global3[_wgslsmith_index_u32(select(~firstLeadingBit(1u), 1u, u_input.d.x <= _wgslsmith_add_i32(global3[_wgslsmith_index_u32(4294967295u, 31u)], countOneBits(~(-2147483647i)))), 31u)];
    var_0 = 21793i;
    var var_1 = Struct_1(firstLeadingBit(max(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, 1i, 2147483647i, global3[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<i32>(44803i, 35742i, u_input.d.x, u_input.d.x)), -vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(1u, 31u)], 0i, -2147483647i))));
    global2 = array<vec3<bool>, 18>();
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~min(var_1.a, _wgslsmith_add_vec4_i32(vec4<i32>(21085i, u_input.d.x, u_input.d.x, global3[_wgslsmith_index_u32(4596u, 31u)]), select(var_1.a, vec4<i32>(var_1.a.x, var_1.a.x, -2147483647i, -1i), false))), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(func_2(vec2<u32>(u_input.a, global0.a), -1132f, 526f) & (vec3<u32>(global0.a, global0.a, global0.a) & vec3<u32>(10823u, u_input.a, 0u)), vec3<u32>(20246u, u_input.c, global0.a)), vec3<u32>(global0.a, abs(global0.a ^ 98682u), ~u_input.e)));
}

