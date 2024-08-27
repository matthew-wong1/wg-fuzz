struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(382f, -290f, 1033f, 726f, -1496f, -553f, 1344f, 2207f, 130f, 735f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(_wgslsmith_mult_u32(0u, arg_3.x) & arg_3.x), 0u), 10u)], -1322f);
    global0 = array<f32, 10>();
    var_0 = global0[_wgslsmith_index_u32(0u, 10u)];
    let var_1 = arg_2;
    let var_2 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(min(u_input.a, u_input.a), 2147483647i, 1i, reverseBits(u_input.a)) | vec4<i32>(u_input.a & -2147483647i, min(0i, 69936i), abs(25945i), _wgslsmith_sub_i32(55108i, 34327i)), -(vec4<i32>(-2147483647i, u_input.a, u_input.a, 1i) >> (vec4<u32>(arg_3.x, arg_3.x, 6066u, arg_3.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(87178u, 10u)], 485f), _wgslsmith_f_op_vec2_f32(min(arg_1.a, var_1.a)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(var_1.a))))))));
    return min(-23194i ^ select(u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 1i, 2147483647i, u_input.a), vec4<i32>(-13723i, -1i, u_input.a, u_input.a)), ~vec4<i32>(0i, -2147483647i, u_input.a, -2147483647i)), _wgslsmith_div_u32(4294967295u, arg_3.x) <= _wgslsmith_add_u32(74793u, arg_3.x)), countOneBits(firstTrailingBit(-7496i >> (1u % 32u))));
}

fn func_2(arg_0: vec2<f32>) -> vec2<i32> {
    global0 = array<f32, 10>();
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(179f)) * _wgslsmith_f_op_f32(ceil(arg_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(680f, arg_0.x), vec2<f32>(970f, 174f), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(exp2(arg_0))) + arg_0)));
    return vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(~u_input.a, func_3(-1285f, Struct_1(var_0.a), Struct_1(vec2<f32>(460f, 1340f)), vec2<u32>(1u, 28461u)))) >> (1u % 32u), u_input.a);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_2) -> vec4<bool> {
    global0 = array<f32, 10>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-248f, -518f, global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(57446u, 10u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(693f, global0[_wgslsmith_index_u32(10368u, 10u)], global0[_wgslsmith_index_u32(arg_1, 10u)], -1405f) - vec4<f32>(global0[_wgslsmith_index_u32(106335u, 10u)], -859f, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(arg_1, 10u)]))))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-520f * -1001f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_1, 10u)])))), global0[_wgslsmith_index_u32(arg_1, 10u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1029f) + -1000f)))));
    let var_1 = firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 21049u), vec2<u32>(0u, 17920u)), vec2<u32>(arg_1, arg_1)))) >= ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(arg_1, arg_1, arg_1)) | (arg_1 >> (12987u % 32u)), 44828u);
    let var_2 = !(!vec2<bool>(!(arg_3.b & var_1), false));
    global0 = array<f32, 10>();
    return select(vec4<bool>(false, true, all(var_2) && !select(arg_3.b, var_1, true), false), select(select(vec4<bool>(true, var_2.x, false, var_2.x), select(vec4<bool>(true, var_2.x, false, arg_3.b), vec4<bool>(false, var_2.x, false, true), var_2.x & var_2.x), var_2.x), !vec4<bool>(true && arg_3.b, any(vec3<bool>(var_2.x, true, arg_3.b)), arg_3.a.x < 2147483647i, var_1), !var_2.x), var_2.x);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    var var_0 = func_4(~arg_1, ~1u, _wgslsmith_add_vec2_i32(vec2<i32>(~u_input.a, arg_1) ^ (vec2<i32>(25727i, arg_1) << (min(vec2<u32>(79099u, 21917u), vec2<u32>(52774u, 4294967295u)) % vec2<u32>(32u))), ~(~func_2(arg_0.a))), Struct_2(firstTrailingBit(abs(~vec3<i32>(-1573i, -13716i, arg_1))), true));
    var_0 = vec4<bool>(false, var_0.x, select(var_0.x, false, !any(var_0.wx)), var_0.x);
    let var_1 = var_0.wz;
    let var_2 = arg_0;
    var var_3 = u_input.a;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1123f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-140f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 10u)] * 342f)) - global0[_wgslsmith_index_u32(abs(~4294967295u), 10u)]), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~4294967295u, 10u)] + global0[_wgslsmith_index_u32(~17705u, 10u)])))));
    let var_1 = Struct_3(_wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(-(i32(-1i) * -12105i), u_input.a ^ u_input.a)), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 10u)]), global0[_wgslsmith_index_u32(~14719u, 10u)])), 12104i)));
    let var_2 = max(~0i, ~(i32(-1i) * -var_1.a));
    global0 = array<f32, 10>();
    var var_3 = vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(~4294967295u, ~4294967295u), _wgslsmith_div_vec2_u32(~select(vec2<u32>(120u, 559u), vec2<u32>(50068u, 41734u), false), vec2<u32>(_wgslsmith_div_u32(4294967295u, 35759u), max(11263u, 0u)))), 10u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(12996u, 10u)] + var_1.b.x) + var_0))), _wgslsmith_f_op_f32(ceil(-1244f))));
    let var_4 = false;
    var var_5 = vec2<u32>(min(1u, max(~0u >> (firstTrailingBit(1u) % 32u), abs(~24617u))), firstLeadingBit(3937u));
    var var_6 = 962f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(firstTrailingBit(var_1.a) ^ ~(-21584i)), var_1.a, countOneBits(firstLeadingBit(var_2) & (0i ^ u_input.a))), -842f, firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(2147483647i, var_2), -1i) & (vec2<i32>(-1i, -1i) | _wgslsmith_div_vec2_i32(vec2<i32>(var_1.a, u_input.a), vec2<i32>(0i, 0i)))), vec2<i32>((countOneBits(var_2) >> (min(59539u, 4294967295u) % 32u)) & u_input.a, func_2(_wgslsmith_f_op_vec2_f32(-var_1.b)).x));
}

