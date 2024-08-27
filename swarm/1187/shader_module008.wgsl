struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 22> = array<i32, 22>(10442i, i32(-2147483648), -1i, i32(-2147483648), -14282i, 3140i, -23041i, -80616i, 1i, 1i, 21416i, 4361i, -3835i, 1i, 44351i, -17637i, -1i, 14245i, 1320i, 1i, 7501i, -24409i);

var<private> global2: array<f32, 28> = array<f32, 28>(-1285f, -240f, 1982f, -1474f, -1000f, -392f, -858f, -167f, 211f, 1841f, 1041f, -1021f, 1272f, -796f, -1353f, -1136f, 677f, 488f, -1448f, 1217f, 912f, 303f, 262f, -1343f, -103f, -1000f, 981f, 421f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = 0u;
    let var_1 = arg_1;
    let var_2 = arg_2;
    global1 = array<i32, 22>();
    let var_3 = var_2;
    return arg_0;
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> bool {
    global1 = array<i32, 22>();
    var var_0 = firstTrailingBit(0i);
    var_0 = _wgslsmith_mult_i32(i32(-1i) * -(-global1[_wgslsmith_index_u32(arg_0, 22u)] ^ global1[_wgslsmith_index_u32(global0.a.x & 4294967295u, 22u)]), countOneBits(-23280i));
    var_0 = arg_1.x << (~82917u % 32u);
    return false;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<f32> {
    global1 = array<i32, 22>();
    var var_0 = Struct_1(vec4<u32>(arg_3.a.x, ~_wgslsmith_mult_u32(abs(arg_3.a.x), 4294967295u), ~_wgslsmith_mult_u32(~4294967295u, u_input.a.x), 1u));
    var var_1 = arg_3;
    var var_2 = false;
    var var_3 = vec2<bool>(true, true);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_1.a.x, 28u)], 103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1291f))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = false;
    var var_1 = vec4<bool>(true, all(func_2(!(!vec4<bool>(var_0, var_0, var_0, var_0)), arg_0, arg_0)), all(vec2<bool>(var_0, false)), all(!vec4<bool>(global0.a.x >= arg_0.a.x, true, false, true)));
    global2 = array<f32, 28>();
    var var_2 = _wgslsmith_f_op_vec3_f32(func_4(!(0i == (global1[_wgslsmith_index_u32(58031u, 22u)] | global1[_wgslsmith_index_u32(u_input.a.x, 22u)])), func_3(13153u, ~vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_0.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)]) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(9701u, 4294967295u, u_input.a.x), u_input.a) % vec3<u32>(32u))), var_1.zww, Struct_1(global0.a)));
    var var_3 = arg_0;
    return all(!vec2<bool>(var_1.x, false));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<i32>) -> vec4<u32> {
    return reverseBits(_wgslsmith_sub_vec4_u32(global0.a ^ firstTrailingBit(global0.a & vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)), global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_5(vec4<bool>(false, false, all(vec3<bool>(true, true, true)), func_1(Struct_1(global0.a), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(101141u, 28u)]))), max(~vec2<i32>(global1[_wgslsmith_index_u32(0u, 22u)], -38923i), ~vec2<i32>(0i, -1i)) ^ vec2<i32>(firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(67598u, 22u)], -28190i))));
    global2 = array<f32, 28>();
    var var_1 = vec4<bool>(false, !(global2[_wgslsmith_index_u32(1u, 28u)] != global2[_wgslsmith_index_u32(u_input.a.x, 28u)]), true, true);
    var var_2 = reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x >> (1u % 32u), reverseBits(4294967295u), reverseBits(u_input.a.x)), ~u_input.a));
    let var_3 = vec3<bool>(var_1.x, var_1.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec3_u32(abs(u_input.a | vec3<u32>(global0.a.x, 4294967295u, u_input.a.x)), ~firstTrailingBit(global0.a.www)), var_0.a.x, _wgslsmith_dot_vec3_u32((global0.a.yzx ^ u_input.a) & ~var_0.a.zxw, u_input.a)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 28u)])), -2906f), global2[_wgslsmith_index_u32(~1u, 28u)]), 33249i, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.a.x, (~22724u >> (abs(var_0.a.x) % 32u)) << (1u % 32u)), 28u)]);
}

