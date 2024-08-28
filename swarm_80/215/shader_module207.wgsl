struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i);

var<private> global1: array<i32, 28>;

var<private> global2: Struct_1;

var<private> global3: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(470f, -1222f, 227f, 901f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(28186i);
    let var_1 = -1228f;
    global1 = array<i32, 28>();
    let var_2 = any(select(!vec3<bool>(true, true, var_1 < arg_0), !vec3<bool>(true, select(true, false, true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1933f, arg_0)) + -1147f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    global3 = array<vec4<f32>, 1>();
    return var_0;
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: bool) -> bool {
    global2 = Struct_1(~global1[_wgslsmith_index_u32(1u, 28u)] ^ (_wgslsmith_mod_i32(1i, ~global0.a) << (u_input.a % 32u)));
    var var_0 = true;
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f)), _wgslsmith_div_u32(~_wgslsmith_sub_u32(4294967295u, u_input.a), ~(~(u_input.a >> (u_input.a % 32u)))), _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(26247i, global2.a, -6471i, arg_0), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], global1[_wgslsmith_index_u32(0u, 28u)], global2.a, global1[_wgslsmith_index_u32(u_input.a, 28u)])), vec4<i32>(global0.a | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.a, u_input.c, u_input.b.x), vec4<i32>(1i, 5642i, 14742i, -1i)), ~global0.a, -firstTrailingBit(2147483647i), _wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(24246u, 28u)], arg_0, -2147483647i), vec4<i32>(global0.a, -31220i, 2147483647i, 1i)), select(vec4<i32>(2147483647i, -2147483647i, -40609i, global0.a), vec4<i32>(global2.a, 45554i, global2.a, -19553i), true)))), abs(~_wgslsmith_dot_vec4_u32(~vec4<u32>(59155u, u_input.a, u_input.a, 4294967295u), vec4<u32>(7373u, 4294967295u, u_input.a, 1u))));
    var_0 = all(arg_1.xy);
    global2 = Struct_1(arg_0);
    return arg_2;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>) -> u32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1387f), 38383u, 59806i, 18594u);
    global1 = array<i32, 28>();
    let var_1 = select(vec3<bool>(true, select(func_3(max(-1i, global0.a), vec4<bool>(true, false, true, true), any(vec4<bool>(true, true, true, true))), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true)), _wgslsmith_div_i32(var_0.a, global1[_wgslsmith_index_u32(u_input.a, 28u)]) <= ~var_0.a), all(vec4<bool>(true, false, arg_1.x < arg_1.x, arg_1.x >= -1517f))), select(vec3<bool>(true, select(true, true, false) != false, any(vec3<bool>(false, true, false))), vec3<bool>(!(u_input.b.x != 0i), any(vec3<bool>(true, false, false)), true), true), !vec3<bool>(false, false, true & all(vec3<bool>(false, false, true))));
    let var_2 = func_2(-362f, ~0u, 3357i, ~select(1u ^ _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(1u, u_input.a, 55008u, 55840u)), ~4294967295u, false && all(vec3<bool>(true, false, false))));
    let var_3 = func_2(546f, min(u_input.a, u_input.a), 1i, ~1u);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1781f);
    let var_2 = _wgslsmith_mult_i32(1i & _wgslsmith_clamp_i32(min(global1[_wgslsmith_index_u32(func_1(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec3<f32>(-1544f, -1410f, 1551f)), 28u)], firstLeadingBit(global1[_wgslsmith_index_u32(1u, 28u)])), global0.a, 8835i), global0.a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-198f * _wgslsmith_div_f32(-285f, -1306f)))));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~(~4294967295u) & _wgslsmith_add_u32(u_input.a, ~u_input.a), u_input.a), 1u, vec2<u32>(u_input.a, u_input.a));
}

