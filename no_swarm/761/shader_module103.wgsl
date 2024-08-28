struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
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

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: i32 = 11971i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec3<bool> {
    global1 = arg_0;
    global3 = u_input.c;
    global3 = u_input.c;
    let var_0 = !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true), any(vec2<bool>(true, true)));
    global0 = array<f32, 21>();
    return !(!select(select(vec3<bool>(var_0.x, false, var_0.x), !var_0, var_0), !var_0, vec3<bool>(true, true, false)));
}

fn func_2(arg_0: bool) -> f32 {
    global3 = 2147483647i;
    global2 = arg_0;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global1.a, 21u)], global0[_wgslsmith_index_u32(global1.a, 21u)], 333f) * vec3<f32>(global0[_wgslsmith_index_u32(11646u, 21u)], -273f, global0[_wgslsmith_index_u32(8995u, 21u)]))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.d, 21u)])), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global1.a, 21u)])), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global1.a, 21u)])))), vec3<f32>(global0[_wgslsmith_index_u32((global1.a >> (u_input.d % 32u)) >> (0u % 32u), 21u)], global0[_wgslsmith_index_u32(u_input.a.x ^ 4294967295u, 21u)], _wgslsmith_f_op_f32(round(898f))), arg_0)));
    global0 = array<f32, 21>();
    global2 = arg_0;
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(6803u & (22916u ^ u_input.a.x), u_input.a.x) >> (u_input.d % 32u), 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 10218u;
    let var_1 = _wgslsmith_mult_vec4_i32(~_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.b, -41630i), vec4<i32>(-46760i, 17835i, u_input.c, -13927i)), ~vec4<i32>(u_input.c, u_input.b, u_input.c, u_input.c)) >> (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(30133u, 0u, 0u, 0u), u_input.a)) % vec4<u32>(32u)), firstLeadingBit(~vec4<i32>(1i, 2147483647i, -42685i, 39572i) ^ vec4<i32>(u_input.c, u_input.b, u_input.b, -64762i)) >> (~u_input.a % vec4<u32>(32u)));
    let var_2 = Struct_1(77972u);
    let var_3 = 30639i;
    var var_4 = 1u;
    let var_5 = !select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_1(var_2, 242f));
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 21u)] * global0[_wgslsmith_index_u32(global1.a, 21u)]) + _wgslsmith_f_op_f32(func_2(var_5.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(43159u, 21u)]) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.a, 21u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(87244u, 21u)])))));
    let var_7 = vec4<i32>(var_3, -29373i, 44831i, ~var_3);
    var_0 = 47u;
    let x = u_input.a;
    s_output = StorageBuffer(var_6);
}

