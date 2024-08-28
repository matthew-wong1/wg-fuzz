struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
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

var<private> global0: Struct_2;

var<private> global1: array<u32, 6>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 30> = array<bool, 30>(true, false, false, true, true, false, true, false, true, true, false, true, true, false, true, true, false, false, false, false, false, true, true, true, false, true, true, true, true, false);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    global0 = Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.xy >> (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11501u, 6u)], 6u)], 113285u) % vec2<u32>(32u)), global0.b.a ^ vec2<i32>(global0.b.a.x, -47077i)), ~(-vec2<i32>(1i, global2.a.x)))), global0.b, abs(u_input.a));
    global3 = array<bool, 30>();
    var var_0 = Struct_1(vec2<i32>(-22537i, -3191i));
    var var_1 = u_input.b.zy;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(543f, 624f, 223f), vec3<f32>(432f, 2146f, 1463f), global3[_wgslsmith_index_u32(1u, 30u)]))))) * vec3<f32>(_wgslsmith_f_op_f32(-1510f * -766f), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(364f - -207f), _wgslsmith_f_op_f32(min(794f, -178f)))))));
    return _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(727f)), _wgslsmith_f_op_f32(-var_2.x)))))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    global3 = array<bool, 30>();
    var var_0 = global0.a;
    let var_1 = vec4<bool>(global3[_wgslsmith_index_u32(abs(0u) | global1[_wgslsmith_index_u32(0u, 6u)], 30u)] || (1830f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -888f) - _wgslsmith_f_op_f32(func_3()))), !arg_0.x, all(!select(!arg_0, select(arg_0, arg_0, global3[_wgslsmith_index_u32(u_input.b.x, 30u)]), arg_0.x)), abs(4294967295u) == _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), u_input.b.zx));
    global3 = array<bool, 30>();
    global1 = array<u32, 6>();
    return Struct_2(global0.a, Struct_1(~(~(-vec2<i32>(global0.a.a.x, -29131i)))), global0.c | reverseBits(global0.c));
}

fn func_1() -> vec4<bool> {
    global0 = func_2(vec3<bool>(true, true, true));
    global1 = array<u32, 6>();
    global2 = Struct_1(max(vec2<i32>(min(9772i, u_input.a.x) >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], 6u)] % 32u), i32(-1i) * -25830i), reverseBits(_wgslsmith_div_vec2_i32(global2.a ^ vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(global2.a.x, u_input.a.x)))));
    global0 = Struct_2(func_2(select(!(!vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 30u)], true, global3[_wgslsmith_index_u32(4294967295u, 30u)])), !select(vec3<bool>(global3[_wgslsmith_index_u32(24142u, 30u)], global3[_wgslsmith_index_u32(22504u, 30u)], global3[_wgslsmith_index_u32(1u, 30u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(19459u, 30u)], global3[_wgslsmith_index_u32(24244u, 30u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 30u)], false, false)), !global3[_wgslsmith_index_u32(50415u, 30u)] | true)).a, Struct_1(-u_input.a.ww), ~vec4<i32>(global2.a.x, -abs(26337i), 0i, _wgslsmith_div_i32(abs(-86190i), global2.a.x)));
    global3 = array<bool, 30>();
    return !(!(!select(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 30u)], true, global3[_wgslsmith_index_u32(21561u, 30u)], true), select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 30u)], false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 30u)], global3[_wgslsmith_index_u32(32946u, 30u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(26710u, 30u)], true, false), global3[_wgslsmith_index_u32(4294967295u, 30u)]), select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(u_input.b.x, 30u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 30u)]), vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12595u, 6u)], 30u)], false, true, global3[_wgslsmith_index_u32(1u, 30u)]), vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59299u, 6u)], 30u)], global3[_wgslsmith_index_u32(20350u, 30u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14066u, 6u)], 30u)], true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.a;
    let var_0 = 430f;
    let var_1 = global2.a;
    var var_2 = !func_1();
    var var_3 = Struct_2(Struct_1(abs(vec2<i32>(1i, ~var_1.x))), global0.a, vec4<i32>(~u_input.a.x, _wgslsmith_mod_i32(global0.a.a.x, global0.a.a.x), -1i, global2.a.x));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, var_0), vec2<f32>(1597f, var_0))) + vec2<f32>(var_0, -991f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, var_0)))))), !var_2.xx)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, -920f), vec2<f32>(var_0, var_0))), vec2<f32>(var_0, var_0), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0))))));
    let x = u_input.a;
    s_output = StorageBuffer(27450u);
}

