struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<bool, 13>;

var<private> global1: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(!(!vec4<bool>(all(vec3<bool>(true, false, true)), global0[_wgslsmith_index_u32(~4294967295u, 13u)], any(vec3<bool>(global0[_wgslsmith_index_u32(18770u, 13u)], true, global0[_wgslsmith_index_u32(7129u, 13u)])), true)), ~vec2<u32>(1u, 1u), -902f);
    let var_1 = _wgslsmith_f_op_f32(-var_0.c);
    let var_2 = var_0.a.x;
    global0 = array<bool, 13>();
    let var_3 = -u_input.a.x;
    return Struct_2(!vec4<bool>(true, true, !(var_1 <= var_0.c), !select(var_2, false, true)), abs(~(~vec2<u32>(var_0.b.x, 41570u))), 1f);
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    global0 = array<bool, 13>();
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(-869f, 1222f), _wgslsmith_f_op_f32(round(652f)), -1195f, _wgslsmith_f_op_f32(ceil(966f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1816f + -195f), 1000f, -1035f, _wgslsmith_f_op_f32(-645f + 377f)) + vec4<f32>(-3417f, 182f, _wgslsmith_div_f32(1664f, 789f), _wgslsmith_f_op_f32(f32(-1f) * -374f))))));
    global0 = array<bool, 13>();
    let var_1 = func_2();
    var var_2 = _wgslsmith_div_i32(12481i, u_input.a.x) | -1i;
    return firstLeadingBit(_wgslsmith_mod_u32(0u, ~1u));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>) -> vec4<i32> {
    global1 = global0[_wgslsmith_index_u32(arg_0.x, 13u)];
    var var_0 = 1000f;
    global1 = any(!func_2().a);
    var var_1 = ~(~_wgslsmith_add_u32(_wgslsmith_mod_u32(~114420u, reverseBits(1u)), 1u));
    var_1 = 1u;
    return ~(-(~countOneBits(u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global0[_wgslsmith_index_u32(func_1(~countOneBits(~vec4<u32>(9700u, 4294967295u, 7469u, 21000u))), 13u)];
    var var_1 = Struct_1(vec4<bool>(all(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 13u)], false)) | true, var_0, true, any(vec3<bool>(var_0, !var_0, any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(27211u, 13u)], true, false))))), func_3(vec2<u32>(min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(17371u, 6460u, 1u), vec3<u32>(0u, 80757u, 4294967295u))), 1u << (1u % 32u)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-1i, u_input.a.x, 21377i) >> (vec3<u32>(22487u, 1u, 4294967295u) % vec3<u32>(32u))), u_input.a.xwz ^ select(vec3<i32>(0i, 2147483647i, 17320i), u_input.a.zzy, true))), select(~firstTrailingBit(vec2<u32>(61204u, 45751u)), ~vec2<u32>(1u, 1u), vec2<bool>(var_0, false)), select(!(!vec4<bool>(var_0, global0[_wgslsmith_index_u32(36612u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], var_0)), !(!select(vec4<bool>(var_0, global0[_wgslsmith_index_u32(19737u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], false), vec4<bool>(global0[_wgslsmith_index_u32(117317u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], true), global0[_wgslsmith_index_u32(0u, 13u)])), true));
    var var_2 = func_2();
    var var_3 = Struct_1(select(!func_2().a, var_2.a, vec4<bool>(true, !var_1.d.x, all(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(0u, 13u)])), !var_1.d.x)), vec4<i32>(~(~var_1.b.x), reverseBits(abs(_wgslsmith_mod_i32(var_1.b.x, -19100i))), _wgslsmith_add_i32(u_input.a.x, u_input.a.x), -1i), _wgslsmith_clamp_vec2_u32(firstTrailingBit(firstTrailingBit(var_2.b)) ^ vec2<u32>(var_1.c.x, var_2.b.x), abs(~select(vec2<u32>(var_2.b.x, var_2.b.x), vec2<u32>(var_2.b.x, var_2.b.x), vec2<bool>(global0[_wgslsmith_index_u32(var_2.b.x, 13u)], var_2.a.x))), ~_wgslsmith_mod_vec2_u32(var_1.c, vec2<u32>(var_2.b.x, 1u))), var_1.a);
    var_1 = Struct_1(var_2.a, ~var_1.b, vec2<u32>(var_1.c.x, 4294967295u), func_2().a);
    var var_4 = func_2();
    var var_5 = 7469u;
    let var_6 = _wgslsmith_f_op_f32(select(1698f, _wgslsmith_f_op_f32(-var_4.c), !(_wgslsmith_mod_i32(-2147483647i, -var_3.b.x) < ~firstLeadingBit(75259i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_6)))));
}

