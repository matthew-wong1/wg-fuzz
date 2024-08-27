struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-867i, Struct_1(0i), vec4<f32>(-238f, -1761f, 788f, -1260f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec2<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.x - global0.c.x), -1529f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -990f) * global0.c.x), 1436f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(global0.c.wz)))));
    let var_1 = global0.c;
    global0 = Struct_2(reverseBits(-u_input.c), Struct_1(max(global0.b.a, -arg_3.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(ceil(-669f)), _wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = select(!vec2<bool>(any(!vec2<bool>(false, arg_2)), arg_2), select(!(!select(vec2<bool>(false, false), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true))), select(select(!vec2<bool>(true, arg_2), select(vec2<bool>(true, false), vec2<bool>(arg_2, false), false), vec2<bool>(false, true)), select(select(vec2<bool>(arg_2, true), vec2<bool>(false, arg_2), false), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false), vec2<bool>(true, false)), arg_2), arg_2), any(!select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, false, arg_2), arg_2))), !arg_2);
    var var_3 = ~abs(-(~vec4<i32>(u_input.c, global0.a, global0.b.a, global0.b.a)));
    return var_2;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global0 = Struct_2(0i, Struct_1(-1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1060f, -1000f, -747f, -616f) * global0.c), global0.c, true)))));
    var var_0 = Struct_3(abs(~(~(u_input.d << (u_input.a % 32u)))), true);
    let var_1 = 1861f;
    global0 = Struct_2(-1i, Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(-19314i, -1i, 14942i), arg_0.wwy), abs(vec3<i32>(1i, 8934i, arg_0.x)))), _wgslsmith_f_op_vec4_f32(-global0.c));
    let var_2 = Struct_3(~(~27438u), !select(true, var_0.b, all(func_3(var_0.a, 8213u, true, arg_0.yy))));
    return Struct_1(~(-24010i));
}

fn func_1() -> vec4<f32> {
    global0 = Struct_2(-1i, func_2(~vec4<i32>(max(0i, global0.b.a), u_input.b.x | global0.a, global0.a << (u_input.d % 32u), 18731i)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(global0.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global0.c)), global0.c))))));
    var var_0 = func_2(countOneBits(~abs(-vec4<i32>(-4262i, -38509i, -70187i, -2147483647i))));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + -397f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(global0.c.x)), _wgslsmith_f_op_f32(global0.c.x - _wgslsmith_div_f32(-256f, global0.c.x)))));
    let var_2 = vec3<u32>(0u, _wgslsmith_clamp_u32(abs(u_input.d), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d) & max(vec2<u32>(4294967295u, 71481u), vec2<u32>(u_input.d, u_input.d)), vec2<u32>(~u_input.a, firstLeadingBit(12669u)))), u_input.a);
    global0 = Struct_2(-27658i, Struct_1(i32(-1i) * -u_input.b.x), _wgslsmith_f_op_vec4_f32(global0.c + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(global0.c, global0.c))))));
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.d), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 23244u), vec2<u32>(u_input.a, 5539u))) | vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 38438u, u_input.a), vec4<u32>(u_input.d, 4294967295u, 1u, u_input.a))), ~37626u));
    global0 = Struct_2(abs(max(global0.b.a, -16062i)), Struct_1(_wgslsmith_add_i32(countOneBits(2147483647i), u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * vec4<f32>(global0.c.x, -1517f, _wgslsmith_f_op_f32(round(1f)), global0.c.x)));
    let var_1 = _wgslsmith_mult_vec4_i32(-abs(vec4<i32>(-u_input.b.x, firstTrailingBit(1i), u_input.b.x, 1i)), firstTrailingBit(-firstLeadingBit(abs(vec4<i32>(1852i, -15487i, u_input.c, u_input.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.x, vec2<u32>(_wgslsmith_mult_u32(reverseBits(1u), abs(_wgslsmith_mod_u32(u_input.a, 4294967295u))), 3727u), _wgslsmith_f_op_vec2_f32(-global0.c.xx));
}

