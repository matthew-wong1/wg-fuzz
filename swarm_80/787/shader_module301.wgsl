struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(1607f, -642f, 539f, 182f, -621f, -140f, -1720f, 1636f, -970f, -1008f, 1194f, -456f, 709f, 585f, 708f, -817f, 1436f, 1000f, -342f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> vec2<bool> {
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    let var_0 = Struct_2(select(!select(vec2<bool>(false, false), vec2<bool>(false, arg_0.x), !arg_0.x), !(!arg_0.zy), any(vec4<bool>(arg_0.x, arg_0.x, !arg_0.x, arg_0.x & arg_0.x))), select(arg_0.yw, !arg_0.yz, !any(arg_0.wy)), ~(~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(59050u, u_input.a))), Struct_1(_wgslsmith_f_op_f32(min(-1101f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(106732u, 19u)] - global0[_wgslsmith_index_u32(~u_input.a, 19u)]))), arg_0.x));
    return select(arg_0.xx, arg_0.xx, true);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(vec2<bool>(true, true), select(select(!select(vec2<bool>(false, true), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, arg_0.b)), select(vec2<bool>(arg_0.b, false), !vec2<bool>(arg_0.b, true), true), select(func_3(vec4<bool>(false, arg_0.b, arg_0.b, true), -60468i), !vec2<bool>(false, arg_0.b), arg_0.b)), select(func_3(!vec4<bool>(false, arg_0.b, true, true), -9530i), !select(vec2<bool>(false, arg_0.b), vec2<bool>(false, true), false), vec2<bool>(!arg_0.b, arg_0.b)), func_3(!select(vec4<bool>(true, true, arg_0.b, arg_0.b), vec4<bool>(true, false, arg_0.b, arg_0.b), vec4<bool>(true, arg_0.b, arg_0.b, true)), u_input.b).x), vec2<u32>(27373u, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, u_input.a) >> (u_input.a % 32u), _wgslsmith_div_u32(_wgslsmith_mult_u32(48148u, 1204u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 0u))))), arg_0);
    var var_1 = select(any(vec4<bool>(any(select(vec2<bool>(true, arg_0.b), var_0.b, vec2<bool>(var_0.b.x, var_0.b.x))), any(!vec4<bool>(arg_0.b, true, var_0.a.x, var_0.b.x)), true, (false & var_0.b.x) != false)), true, false);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(651f * _wgslsmith_f_op_f32(-var_0.d.a)), -350f, !(u_input.b != u_input.b))))), _wgslsmith_f_op_f32(trunc(arg_0.a)) <= var_0.d.a);
    let var_3 = var_0;
    global0 = array<f32, 19>();
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.d.a);
    let var_1 = select(reverseBits(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(0u, u_input.a, u_input.a, 4294967295u)) & ~vec4<u32>(arg_2.c.x, u_input.a, 9561u, u_input.a), _wgslsmith_div_vec4_u32(max(vec4<u32>(0u, 78924u, arg_2.c.x, 26102u), vec4<u32>(arg_2.c.x, arg_2.c.x, 3905u, 9979u)), ~vec4<u32>(arg_2.c.x, 4294967295u, 16956u, u_input.a)))), vec4<u32>(~arg_2.c.x | (u_input.a << ((u_input.a >> (arg_2.c.x % 32u)) % 32u)), countOneBits(select(~arg_2.c.x, arg_2.c.x, true)), abs(64272u) | ~abs(arg_2.c.x), 1u), !select(vec4<bool>(false, true, true, !arg_2.b.x), !select(vec4<bool>(false, arg_0.b, arg_1, false), vec4<bool>(arg_2.b.x, arg_1, arg_1, arg_0.b), vec4<bool>(arg_0.b, true, arg_1, arg_0.b)), select(vec4<bool>(arg_0.b, false, true, arg_1), !vec4<bool>(true, arg_1, arg_2.b.x, true), !vec4<bool>(false, true, arg_0.b, arg_0.b))));
    global0 = array<f32, 19>();
    let var_2 = func_2(func_2(Struct_1(var_0, _wgslsmith_f_op_f32(-1190f - var_0) == _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2.c.x, 19u)]))).d);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_2(var_2.d).d.a)) - _wgslsmith_f_op_f32(select(-1207f, _wgslsmith_f_op_f32(1404f - _wgslsmith_div_f32(252f, global0[_wgslsmith_index_u32(var_2.c.x, 19u)])), arg_0.b))), min(func_2(func_2(var_2.d).d).c.x, ~46267u) < _wgslsmith_mod_u32(~u_input.a, min(_wgslsmith_sub_u32(var_2.c.x, 0u), 21399u)));
    return func_2(func_2(Struct_1(arg_2.d.a, -u_input.b <= 1i)).d).d;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = func_4(arg_1, arg_1.b == (u_input.b != _wgslsmith_add_i32(u_input.b, _wgslsmith_add_i32(6340i, -1i))), func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -673f) + _wgslsmith_f_op_f32(trunc(-1397f))), !arg_1.b)));
    let var_1 = min(1i, u_input.b);
    return 1i;
}

fn func_5(arg_0: i32, arg_1: f32) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-361f, global0[_wgslsmith_index_u32(u_input.a, 19u)])))))), true);
    let var_1 = 59787u;
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    return StorageBuffer(reverseBits(~firstLeadingBit(4294967295u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(145f, -1303f) + vec2<f32>(arg_1, 899f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(997f * 227f), _wgslsmith_f_op_f32(var_0.a + 1000f)), vec2<f32>(var_0.a, -289f))), vec4<f32>(var_0.a, -730f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 19u)]) + var_0.a), -389f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~0u);
    let x = u_input.a;
    s_output = func_5(~_wgslsmith_sub_i32(u_input.b, func_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], 246f, global0[_wgslsmith_index_u32(3510u, 19u)]), Struct_1(1379f, false)) | (-1i & u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2347f) * 237f));
}

