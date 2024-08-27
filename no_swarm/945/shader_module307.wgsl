struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(1000f, -387f, -1330f, 1000f, -2348f, 639f, -795f, -118f, 358f, 431f);

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<i32, 16> = array<i32, 16>(-1i, -1i, 0i, 0i, 2147483647i, 51456i, 1i, i32(-2147483648), -11016i, 13934i, 1i, -1i, -41654i, 1i, 18326i, 1i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<i32> {
    var var_0 = ~u_input.c.x;
    var var_1 = arg_0;
    var var_2 = ~var_1.a;
    global2 = array<i32, 16>();
    let var_3 = vec3<f32>(305f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.b.x, 10u)]))), 713f), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(44247u), u_input.a) | 77427u, 10u)]);
    return -vec2<i32>(abs(global2[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_clamp_i32(-arg_1, -global2[_wgslsmith_index_u32(var_1.b.x, 16u)], 1i)) ^ countOneBits(vec2<i32>(-23786i, ~u_input.c.x));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = array<f32, 10>();
    let var_0 = Struct_1(27614u, (vec3<u32>(u_input.d.x, ~7640u, 4294967295u) << ((vec3<u32>(u_input.d.x, u_input.d.x, 0u) & u_input.d.yzw) % vec3<u32>(32u))) >> (~_wgslsmith_mult_vec3_u32(u_input.d.xzz, vec3<u32>(u_input.d.x, u_input.a, u_input.d.x)) % vec3<u32>(32u)));
    let var_1 = any(vec4<bool>(!any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false)), !select(false, true, false) | any(vec2<bool>(true, true)), true, true));
    global2 = array<i32, 16>();
    global1 = array<Struct_1, 23>();
    return global0[_wgslsmith_index_u32(~4294967295u, 10u)];
}

fn func_2() -> vec2<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_3(~abs(~u_input.c.x))), global0[_wgslsmith_index_u32(max(~_wgslsmith_mod_u32(u_input.d.x, firstLeadingBit(u_input.a)), abs(~_wgslsmith_mult_u32(u_input.a, 31023u))), 10u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(2566u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]) * -220f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(1u, 16u)])))));
    return ~abs(_wgslsmith_mod_vec2_i32(vec2<i32>(~2806i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.yyy, u_input.d.wyx), 16u)]), _wgslsmith_clamp_vec2_i32(u_input.b, _wgslsmith_sub_vec2_i32(u_input.c.yx, u_input.c.yx), select(vec2<i32>(-49231i, -4045i), u_input.c.xx, vec2<bool>(true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 16>();
    global0 = array<f32, 10>();
    var var_0 = (vec2<i32>(-1i) * -u_input.b) ^ _wgslsmith_sub_vec2_i32(-func_1(Struct_1(97793u, u_input.d.wzz), ~global2[_wgslsmith_index_u32(u_input.d.x, 16u)]), abs(min(func_2(), vec2<i32>(2147483647i, u_input.c.x))));
    var var_1 = global1[_wgslsmith_index_u32(~u_input.a, 23u)];
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, 2147483647i), 30967i, firstTrailingBit(54465i)), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 16u)], 58020i, abs(var_0.x), 2147483647i)), ~(~58270i)) & _wgslsmith_mod_vec2_i32(u_input.c.yx, -(~(~vec2<i32>(-2147483647i, 44030i))));
    global2 = array<i32, 16>();
    global0 = array<f32, 10>();
    global0 = array<f32, 10>();
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(24729u, 10u)] - global0[_wgslsmith_index_u32(65116u, 10u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(233f, global0[_wgslsmith_index_u32(u_input.a, 10u)], -167f, -1537f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(356f, var_3, global0[_wgslsmith_index_u32(40477u, 10u)], -141f), vec4<f32>(global0[_wgslsmith_index_u32(62781u, 10u)], global0[_wgslsmith_index_u32(57590u, 10u)], -461f, global0[_wgslsmith_index_u32(4294967295u, 10u)])))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-348f, -781f, var_3, 389f))))))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u | var_1.a, u_input.a), u_input.a), (21801u | var_1.b.x) << (50969u % 32u), _wgslsmith_sub_i32(u_input.c.x, global2[_wgslsmith_index_u32(1u << ((10446u | ~var_1.a) % 32u), 16u)]));
}

