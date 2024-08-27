struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    return u_input.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> bool {
    var var_0 = Struct_1(false, countOneBits(func_3()));
    let var_1 = Struct_1(global0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~u_input.c), vec4<u32>(130384u, 19024u, _wgslsmith_sub_u32(11943u, u_input.c.x), 62139u)), ~(~(vec4<u32>(0u, var_0.b, arg_1, var_0.b) & vec4<u32>(arg_1, var_0.b, 1u, u_input.a)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, -1542f, _wgslsmith_f_op_f32(trunc(906f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, -1000f, 606f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1893f, 1552f, -1123f), vec3<f32>(1866f, -1000f, -836f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1495f), _wgslsmith_f_op_f32(f32(-1f) * -1653f), -608f))));
    var_0 = var_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1989f, var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x))))), var_2.x, -219f, 755f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(807f, var_2.x, 1000f, var_2.x), vec4<f32>(-102f, -584f, var_2.x, 105f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -1398f, 789f, var_2.x), vec4<f32>(var_2.x, 316f, var_2.x, -1000f))))));
    return !(((_wgslsmith_add_i32(-47953i, u_input.d) & 1i) > -firstLeadingBit(u_input.d)) || !(u_input.d < -1i));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = ~(~arg_0.b) >> (1u % 32u);
    global0 = !select(!vec4<bool>(!arg_0.a, global0.x, true, false), !vec4<bool>(any(global0.zxy), arg_0.a, all(global0.zww), func_2(global0.wx, 0u)), select(vec4<bool>(21880u != u_input.b, arg_0.a || true, all(vec4<bool>(global0.x, false, true, false)), true), vec4<bool>(!global0.x, global0.x, any(vec4<bool>(false, true, true, arg_0.a)), all(vec3<bool>(true, arg_0.a, global0.x))), true != all(vec4<bool>(arg_0.a, arg_0.a, false, global0.x))));
    let var_1 = vec4<bool>(global0.x, !(true && arg_0.a), false, global0.x);
    let var_2 = reverseBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.d, u_input.d, 0i, u_input.d), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<i32>(u_input.d, 18968i, -16850i, u_input.d))) & (min(vec4<i32>(u_input.d, u_input.d, u_input.d, 58953i), vec4<i32>(u_input.d, 4394i, -2728i, u_input.d)) & _wgslsmith_div_vec4_i32(vec4<i32>(0i, 0i, u_input.d, -2147483647i), vec4<i32>(0i, 35731i, u_input.d, u_input.d)))) >> (vec4<u32>(max(4294967295u, 1u), u_input.b, ~_wgslsmith_dot_vec3_u32(u_input.c.wyx, ~vec3<u32>(arg_0.b, 60093u, arg_0.b)), max(~countOneBits(11168u), ~reverseBits(arg_0.b))) % vec4<u32>(32u));
    var var_3 = _wgslsmith_add_u32(1u, u_input.b);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec4<bool>(true, global0.x, any(select(select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, false, global0.x)), vec4<bool>(true, false, true, true), vec4<bool>(global0.x, global0.x, global0.x, true))), !any(global0.zwy));
    var var_0 = _wgslsmith_mod_u32(abs(u_input.a), func_1(Struct_1(global0.x, 32933u)));
    var var_1 = Struct_1(all(!select(global0.yw, !vec2<bool>(false, global0.x), !vec2<bool>(global0.x, global0.x))), _wgslsmith_sub_u32(u_input.a, func_3() | _wgslsmith_sub_u32(~0u, 1u)));
    var_1 = Struct_1(true, var_1.b);
    var_1 = Struct_1(global0.x, 1u);
    var_1 = Struct_1(true, ~u_input.b);
    var var_2 = Struct_1(true, _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_1.b, _wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(var_1.b, var_1.b) ^ vec2<u32>(u_input.c.x, 25563u))), min(4294967295u, _wgslsmith_dot_vec4_u32(min(u_input.c, vec4<u32>(u_input.b, 4294967295u, 19869u, 4294967295u)), _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(var_1.b, var_1.b, var_1.b, 46047u)))), 20520u << ((max(1u, 4294967295u) << (firstTrailingBit(2509u) % 32u)) % 32u)));
    var var_3 = Struct_1(!all(!vec2<bool>(var_1.a, false)), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(62362u, ~(~0u)), _wgslsmith_dot_vec2_u32(abs(u_input.c.zw), ~_wgslsmith_add_vec2_u32(~vec2<u32>(0u, var_1.b), u_input.c.yw)));
}

