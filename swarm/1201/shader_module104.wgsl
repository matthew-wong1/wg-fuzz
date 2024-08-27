struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(3303u, 98698u, 4294967295u, 71488u, 4294967295u, 58564u, 68861u, 4294967295u, 4294967295u, 1u, 0u, 0u, 1u, 36387u, 4294967295u);

var<private> global1: array<u32, 1> = array<u32, 1>(0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> bool {
    let var_0 = select(select(!select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, false), vec2<bool>(true, arg_1), vec2<bool>(arg_1, false)), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, false), vec2<bool>(arg_1, arg_1))), select(vec2<bool>(arg_1, all(vec3<bool>(false, false, arg_1))), vec2<bool>(-1001f <= arg_2, !arg_1), select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), false), vec2<bool>(true, false), vec2<bool>(arg_1, arg_1))), arg_1), !vec2<bool>(arg_1, !(arg_0.a <= u_input.a)), vec2<bool>(all(select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(true, true, arg_1, false), !arg_1)), false && (arg_0.a < arg_0.a)));
    let var_1 = ~vec2<u32>(39179u, u_input.b);
    global0 = array<u32, 15>();
    let var_2 = !select(vec3<bool>(!arg_1 || false, true, false), !vec3<bool>(var_0.x, 4294967295u < var_1.x, arg_1), global1[_wgslsmith_index_u32(1u, 1u)] <= (~0u | abs(var_1.x)));
    global1 = array<u32, 1>();
    return 2194i > u_input.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<u32> {
    var var_0 = 4294967295u;
    var var_1 = -1219f;
    var var_2 = !select(all(vec2<bool>(true, false)) | func_3(arg_0, 18459i > arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -469f)), !select(all(vec4<bool>(false, false, false, false)), u_input.a > 2147483647i, func_3(Struct_1(0i), false, arg_1.x)), true);
    let var_3 = !(!select(vec4<bool>(all(vec3<bool>(false, true, true)), true, select(false, false, false), true), vec4<bool>(true, all(vec4<bool>(false, false, false, true)), true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false), true)));
    let var_4 = Struct_2(arg_0);
    return _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~(u_input.b & u_input.b), _wgslsmith_sub_u32(u_input.b & u_input.b, 9539u)), reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 1u)], 1u))), max(~vec2<u32>(global0[_wgslsmith_index_u32(24077u, 15u)], 4606u) ^ ~vec2<u32>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(55475u, 1u)]), ~vec2<u32>(global0[_wgslsmith_index_u32(64939u, 15u)], _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52758u, 1u)], 1u)], 0u, 33000u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)], 15u)], 15u)], 15u)], 1u)], 1u)])))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -705f);
    global0 = array<u32, 15>();
    let var_1 = countOneBits(select(4294967295u, global0[_wgslsmith_index_u32(12518u, 15u)], arg_2));
    let var_2 = arg_2;
    let var_3 = _wgslsmith_div_i32(u_input.c.x, (_wgslsmith_mod_i32(-8785i, 1i) & _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_1.a, 0i), -46986i, u_input.a)) | u_input.a);
    return Struct_1(~(i32(-1i) * -40704i));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(max(4294967295u, global0[_wgslsmith_index_u32(u_input.b, 15u)]) ^ global1[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(0u, 15u)]), 1u)], abs(~global1[_wgslsmith_index_u32(arg_2, 1u)]), 4294967295u), ~vec3<u32>(_wgslsmith_mult_u32(4294967295u, 1u), 1u, arg_2)), arg_3);
    global1 = array<u32, 1>();
    global0 = array<u32, 15>();
    var var_1 = Struct_2(Struct_1(~12755i));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f + 508f), _wgslsmith_f_op_f32(-2761f * -2619f), _wgslsmith_f_op_f32(-1672f * 103f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, 1966f) + vec3<f32>(-1426f, -1004f, -1171f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(477f, 477f, 900f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-938f, 1884f, 1028f), vec3<f32>(1473f, 297f, 1000f)), vec3<f32>(1f, 1f, 1f), select(true, true, true))))), vec3<bool>(true, all(vec2<bool>(false, false)), true))));
    return 4294967295u;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(5316i));
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(27992u, func_5(_wgslsmith_div_u32(max(arg_0.x, 28526u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25925u, 15u)], 15u)], 15u)], 15u)]), func_4(func_2(var_0.a, vec4<f32>(-1561f, -566f, 1000f, 290f)), var_0.a, true), arg_0.x, ~global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 1u)], 15u)])), global1[_wgslsmith_index_u32(40992u, 1u)], ~_wgslsmith_mod_u32(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(u_input.b, 15u)], _wgslsmith_mod_u32(4693u, 4294967295u)), 15u)], 15u)]), 1u);
    var var_2 = Struct_2(Struct_1(-abs(_wgslsmith_div_i32(2147483647i, 2147483647i))));
    global1 = array<u32, 1>();
    let var_3 = vec2<i32>(firstLeadingBit(var_2.a.a), u_input.a);
    return Struct_1(~(~var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 20520u, global0[_wgslsmith_index_u32(26397u, 15u)], 1u) << (vec4<u32>(4294967295u, 19282u, global0[_wgslsmith_index_u32(29218u, 15u)], 1u) % vec4<u32>(32u)), countOneBits(vec4<u32>(0u, u_input.b, 0u, global1[_wgslsmith_index_u32(87323u, 1u)]))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(296f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-787f + 188f) * _wgslsmith_f_op_f32(select(-843f, 565f, false))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(215f, -379f)) * -322f))));
    var var_2 = func_4(~firstTrailingBit(max(vec2<u32>(global1[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(96571u, 15u)]), vec2<u32>(29449u, 0u))), var_0.a, !all(vec3<bool>(true, true, true)) | !any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))));
    var var_3 = (i32(-1i) * -99i) & var_0.a.a;
    let var_4 = -332f;
    var var_5 = !vec4<bool>(false, all(vec4<bool>(true, true, true, true)), true, func_3(Struct_1(_wgslsmith_mult_i32(0i, u_input.a)), all(vec2<bool>(true, false)) || true, _wgslsmith_f_op_f32(abs(var_4))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(-2147483647i, i32(-1i) * -26704i, -18704i) >> (select(countOneBits(vec3<u32>(79722u, 95328u, u_input.b)), ~vec3<u32>(1u, global0[_wgslsmith_index_u32(30584u, 15u)], 1u), var_5.zzy) % vec3<u32>(32u))), u_input.a & ~_wgslsmith_mod_i32(9055i, -44200i), 2147483647i, ~(vec3<u32>(0u & u_input.b, global0[_wgslsmith_index_u32(4294967295u, 15u)] | 58330u, _wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 1u)], 15u)])) ^ (~vec3<u32>(u_input.b, 1u, 47985u) & ~vec3<u32>(global0[_wgslsmith_index_u32(1u, 15u)], 4294967295u, u_input.b))));
}

