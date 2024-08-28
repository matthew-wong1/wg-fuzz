struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(-1i, 35536i, 2147483647i, 1i, 0i, 1i, -51653i, 14838i, 26625i, 16387i, 11181i, 2147483647i, -17760i, -27026i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<bool>, arg_3: bool) -> vec3<bool> {
    let var_0 = Struct_3(Struct_2(i32(-1i) * -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.wyw, vec3<u32>(4294967295u, 21100u, u_input.c)), 14u)], Struct_1(select(vec3<bool>(arg_0.x, false, true), arg_0.zxz, !vec3<bool>(arg_3, arg_3, true))), Struct_1(vec3<bool>(true, !arg_2.x, false)), ~_wgslsmith_add_vec3_u32(abs(vec3<u32>(5907u, u_input.b, 95201u)), vec3<u32>(4363u, u_input.a.x, u_input.a.x))), vec2<f32>(-853f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_1))))));
    global0 = array<i32, 14>();
    let var_1 = Struct_4(28691i, !(!(_wgslsmith_f_op_f32(-var_0.b.x) >= _wgslsmith_f_op_f32(arg_1 - var_0.b.x))), _wgslsmith_mod_vec4_u32(~vec4<u32>(15559u, countOneBits(80383u), ~u_input.a.x, ~80894u), _wgslsmith_div_vec4_u32(u_input.a, ~vec4<u32>(u_input.a.x, var_0.a.d.x, var_0.a.d.x, 0u))), var_0.a.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -919f), arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, arg_1, -495f), vec3<f32>(-696f, arg_1, arg_1), false)) + vec3<f32>(2913f, var_0.b.x, -651f))))));
    var var_2 = var_0.a.b.a.x;
    let var_3 = abs(vec4<u32>(22549u, ~47636u, max(16915u, u_input.b), _wgslsmith_sub_u32(var_0.a.d.x, abs(1u | u_input.b))));
    return !select(vec3<bool>(true && arg_3, !(var_0.a.d.x < 1171u), !var_1.b), select(vec3<bool>(all(arg_0), true, !var_1.b), arg_0.xyx, var_3.x >= _wgslsmith_div_u32(var_1.c.x, 6928u)), arg_3);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = Struct_2(u_input.d, arg_2, arg_2, u_input.a.wwz);
    var_0 = Struct_2(-21675i, var_0.b, Struct_1(var_0.b.a), u_input.a.wzx);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-870f, -643f)) * vec2<f32>(1360f, arg_1)), vec2<f32>(1106f, _wgslsmith_f_op_f32(arg_1 * -1000f)), !arg_2.a.x)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -529f) + vec2<f32>(1232f, arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-326f, arg_1)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, arg_1))), vec2<f32>(arg_1, arg_1))))), arg_0.xz));
    let var_2 = _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 - var_1.x))));
    let var_3 = Struct_2(~u_input.e, arg_2, Struct_1(!select(vec3<bool>(arg_2.a.x, true, var_0.b.a.x), func_3(vec4<bool>(arg_2.a.x, var_0.b.a.x, false, arg_0.x), 774f, var_0.b.a.xx, true), false || arg_0.x)), vec3<u32>(~countOneBits(var_0.d.x | u_input.c), ~(~0u), 1u));
    return !(all(select(vec4<bool>(true, arg_2.a.x, var_0.b.a.x, arg_0.x), !vec4<bool>(var_3.c.a.x, var_0.b.a.x, var_3.c.a.x, arg_2.a.x), all(var_0.c.a))) | arg_0.x);
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    var var_0 = any(vec3<bool>(!(!func_2(vec3<bool>(true, true, false), 632f, Struct_1(vec3<bool>(true, false, true)))), func_3(vec4<bool>(any(vec2<bool>(false, true)), true, true, any(vec4<bool>(false, false, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1159f - -301f) * _wgslsmith_f_op_f32(round(-163f))), vec2<bool>(true, any(vec2<bool>(false, true))), !all(vec3<bool>(false, false, false))).x, -global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(7229u, arg_0.x), 14u)] != _wgslsmith_clamp_i32(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(18441u, 14u)], 21232i), select(-22983i, u_input.e, true), -u_input.e)));
    let var_1 = abs(-(vec2<i32>(2147483647i, -u_input.e) | vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(12u, 4420u), 14u)], ~0i)));
    var var_2 = u_input.a;
    var_2 = vec4<u32>(4294967295u, abs(u_input.c) | (var_2.x << (arg_0.x % 32u)), ~firstLeadingBit(57892u), countOneBits(var_2.x));
    var var_3 = 1082f;
    return StorageBuffer(~vec3<u32>(1u, 4294967295u, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    var var_0 = abs(-_wgslsmith_mod_vec4_i32(~(~vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.b, 14u)], u_input.e, global0[_wgslsmith_index_u32(24135u, 14u)])), max(vec4<i32>(u_input.d, -1i, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(5330u, 14u)]), min(vec4<i32>(u_input.e, -27147i, u_input.e, global0[_wgslsmith_index_u32(0u, 14u)]), vec4<i32>(global0[_wgslsmith_index_u32(26271u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], u_input.e, 21485i)))));
    let x = u_input.a;
    s_output = func_1(u_input.a.wxy);
}

