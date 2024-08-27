struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
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

var<private> global0: vec4<i32> = vec4<i32>(5001i, 0i, 2147483647i, 0i);

var<private> global1: Struct_1 = Struct_1(1i, vec4<i32>(i32(-2147483648), i32(-2147483648), 2030i, -38006i));

var<private> global2: array<f32, 26>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    global2 = array<f32, 26>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1793f, -685f, global2[_wgslsmith_index_u32(~u_input.b, 26u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 1u), 26u)] + 1148f)));
    global2 = array<f32, 26>();
    global0 = min(global1.b, vec4<i32>(_wgslsmith_div_i32(global0.x, global1.a), global1.b.x, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(-56549i, 1i, max(-2147483647i, 0i))), -(global1.b.x | -1i)));
    let var_1 = u_input.c.x;
    return Struct_1(i32(-1i) * -2147483647i, -vec4<i32>(global1.a, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -1i), global1.b.wz), -24416i));
}

fn func_3() -> vec4<bool> {
    global1 = Struct_1(-(_wgslsmith_div_i32(global0.x, 1i) >> (_wgslsmith_div_u32(u_input.a, 0u) % 32u)) >> (~0u % 32u), global1.b);
    let var_0 = vec3<bool>(false, !(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))) && true), select(!any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false))), true, true));
    let var_1 = Struct_1(abs(~_wgslsmith_div_i32(countOneBits(0i), ~u_input.c.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, -11246i, abs(-3860i), global0.x), _wgslsmith_sub_vec4_i32(~vec4<i32>(-9635i, global1.a, -169i, -18695i), ~global1.b)));
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, u_input.c.x) | -vec2<i32>(1i, 76750i), vec2<i32>(global1.b.x, u_input.c.x), select(-firstLeadingBit(firstTrailingBit(global1.b.wz)), vec2<i32>(global1.b.x, firstLeadingBit(40251i)), var_0.x));
    var var_3 = ~u_input.b;
    return !(!select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !vec4<bool>(false, var_0.x, var_0.x, var_0.x), false));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    let var_0 = global0.yyx;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(10849u, 26u)], global2[_wgslsmith_index_u32(289u, 26u)])), -188f, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 16134u), 26u)], -789f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(0u, 26u)], 791f, -561f, global2[_wgslsmith_index_u32(arg_3.x, 26u)]) * vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 26u)], -1000f, global2[_wgslsmith_index_u32(arg_3.x, 26u)], -285f)) * vec4<f32>(-2356f, global2[_wgslsmith_index_u32(4294967295u, 26u)], -2346f, 443f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(arg_3.x, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)], 1169f, 457f) * vec4<f32>(global2[_wgslsmith_index_u32(52420u, 26u)], 958f, -303f, -206f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(527f, global2[_wgslsmith_index_u32(0u, 26u)], 1046f, 828f) + vec4<f32>(1000f, 242f, -426f, 103f)))))));
    global2 = array<f32, 26>();
    global1 = func_2();
    var var_2 = all(func_3()) | arg_1;
    return _wgslsmith_clamp_i32(-2147483647i, 2147483647i, ~u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -21745i;
    let var_1 = (!any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))) || any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))) && true;
    let var_2 = !(!vec2<bool>(var_1, true | (u_input.c.x > 0i)));
    let var_3 = u_input.c;
    global0 = -select(vec4<i32>(firstTrailingBit(50612i), func_1(min(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, u_input.b)), true, Struct_1(-2147483647i, vec4<i32>(u_input.c.x, global1.b.x, -2147483647i, global1.a)), ~vec3<u32>(8854u, 4294967295u, 4294967295u)), u_input.c.x ^ -global1.b.x, i32(-1i) * -2147483647i), firstLeadingBit(-vec4<i32>(var_3.x, 16311i, -23352i, -2147483647i)), !select(vec4<bool>(false, false, true, var_2.x), func_3(), select(vec4<bool>(false, true, var_1, var_1), vec4<bool>(false, true, var_1, true), vec4<bool>(false, var_2.x, true, false))));
    let var_4 = Struct_1(28342i, global1.b);
    global0 = vec4<i32>(global0.x, u_input.c.x, global1.a, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 26u)] - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 26u)]), 216f, 4294967295u < u_input.a)))));
}

