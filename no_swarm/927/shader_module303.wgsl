struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(i32(-2147483648));

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(-31666i), Struct_2(7807i), Struct_2(16447i), Struct_2(38247i), Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(i32(-2147483648)), Struct_2(-46808i), Struct_2(36253i), Struct_2(-27102i), Struct_2(33229i), Struct_2(2147483647i), Struct_2(32382i), Struct_2(1i), Struct_2(1i), Struct_2(-3351i), Struct_2(-26621i), Struct_2(-12696i), Struct_2(-2268i), Struct_2(2147483647i), Struct_2(0i), Struct_2(1i), Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(0i), Struct_2(2147483647i));

var<private> global2: Struct_2 = Struct_2(i32(-2147483648));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    global1 = array<Struct_2, 26>();
    let var_0 = select(all(vec2<bool>(true, all(vec2<bool>(true, false)))), all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true)), all(vec4<bool>(true, false, true, true)));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-852f, -182f, -570f), vec3<f32>(-413f, 1000f, -886f)))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1053f, 437f, -1473f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(534f, 1156f, 1717f)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-842f, 1293f, 1203f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(1169f, 1000f, -307f), vec3<f32>(-1433f, -751f, 971f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-811f, 772f, 399f)) + vec3<f32>(-226f, -1017f, -184f)), u_input.c >= countOneBits(u_input.c))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(var_2.xx));
    return firstLeadingBit(2147483647i);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_sub_i32(i32(-1i) * -9233i, _wgslsmith_div_i32(-1i, func_3())));
    var var_1 = select((~vec3<u32>(9994u, 4294967295u, 4294967295u) & abs(vec3<u32>(4294967295u, u_input.c, u_input.c))) | (max(vec3<u32>(u_input.c, u_input.c, 0u), reverseBits(vec3<u32>(1u, u_input.c, 92435u))) | vec3<u32>(firstTrailingBit(4294967295u), ~u_input.c, abs(u_input.c))), min(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c) >> (vec3<u32>(1u, u_input.c, u_input.c) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, u_input.c, 38663u)), ~firstLeadingBit(vec3<u32>(u_input.c, 23392u, u_input.c))), any(vec2<bool>(true, true)));
    let var_2 = select(22814u, 3698u, true);
    var var_3 = Struct_2(global0.a);
    global2 = arg_0;
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: u32) -> bool {
    let var_0 = arg_1.x;
    global0 = Struct_2(_wgslsmith_sub_i32(global2.a, _wgslsmith_add_i32(i32(-1i) * -global2.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.a, u_input.b, global0.a, global2.a), vec4<i32>(-2147483647i, -6938i, -1i, u_input.b)))));
    var var_1 = func_2(global1[_wgslsmith_index_u32(11701u, 26u)]);
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.x)), -518f, _wgslsmith_f_op_f32(select(var_0, var_0, true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-644f))), 113f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1217f, 372f))))), _wgslsmith_mod_u32(arg_2, ~((arg_2 & 0u) >> (arg_2 % 32u))), arg_1.xy);
    var var_3 = !select(!select(vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, true), true), !select(!vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), global2.a >= 0i), vec2<bool>(arg_0 & !arg_0, !(arg_0 || arg_0)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, func_1(true, vec3<f32>(1008f, -240f, -1332f), u_input.c), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))), select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, u_input.c >= 36802u), true), vec3<bool>(true || (u_input.c != u_input.c), _wgslsmith_f_op_f32(-628f + 202f) != _wgslsmith_f_op_f32(select(538f, -382f, false)), true)), true);
    global0 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, ~u_input.c), 26u)];
    let var_1 = vec4<u32>(~min(~min(1u, u_input.c), u_input.c), _wgslsmith_clamp_u32(u_input.c, u_input.c, ~abs(max(u_input.c, u_input.c))), u_input.c, 9923u);
    global0 = func_2(global1[_wgslsmith_index_u32(1u, 26u)]);
    global0 = func_2(Struct_2(max(i32(-1i) * -57746i, 13299i)));
    global1 = array<Struct_2, 26>();
    let var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1024f)) * _wgslsmith_f_op_f32(trunc(-404f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1085f) - _wgslsmith_f_op_f32(max(-1358f, 858f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-998f, -234f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(731f * 1512f) - -1667f))), firstLeadingBit(~vec3<u32>(~9182u, select(0u, 33499u, var_0.x), abs(1u))));
}

