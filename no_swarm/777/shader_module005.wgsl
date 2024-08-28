struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(23069u, 10642u, 9204u, 0u, 0u, 36083u, 32711u, 1u, 4294967295u, 37717u, 4294967295u, 82596u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>) -> bool {
    global0 = array<u32, 12>();
    var var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(-19825i, firstTrailingBit(1i)), countOneBits(1i));
    var_0 = -25282i;
    let var_1 = Struct_1(select(select(vec4<bool>(true, any(vec2<bool>(false, false)), arg_0.x == 2025f, true), vec4<bool>(all(vec2<bool>(false, false)), true, all(vec2<bool>(true, false)), true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))), vec4<bool>(true, _wgslsmith_div_f32(783f, 1315f) >= _wgslsmith_f_op_f32(-arg_0.x), (u_input.b.x > global0[_wgslsmith_index_u32(u_input.a, 12u)]) & any(vec4<bool>(true, true, true, false)), true), true), -22193i, select(vec2<bool>(!any(vec2<bool>(false, true)), !any(vec3<bool>(false, true, true))), vec2<bool>(true, (global0[_wgslsmith_index_u32(71365u, 12u)] >> (1u % 32u)) > (u_input.b.x >> (arg_1.x % 32u))), true), _wgslsmith_mod_i32(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, 28733i) << (global0[_wgslsmith_index_u32(4294967295u, 12u)] % 32u), min(-2147483647i ^ (30415i >> (arg_1.x % 32u)), _wgslsmith_mod_i32(1i, i32(-1i) * -36037i))), ~(~77770u));
    var var_2 = select(var_1.b, var_1.b, var_1.c.x);
    return true;
}

fn func_3(arg_0: vec2<bool>) -> vec4<bool> {
    let var_0 = -1i;
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    let var_1 = all(select(!select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(true, true, true), select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x))), !select(!vec3<bool>(arg_0.x, false, arg_0.x), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x), any(vec3<bool>(true, false, true))), !arg_0.x));
    global0 = array<u32, 12>();
    return !select(!vec4<bool>(true, true, true, all(arg_0)), vec4<bool>(true, false, !(!arg_0.x), var_1), 1f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1000f)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> vec2<bool> {
    var var_0 = Struct_1(!(!select(arg_0, vec4<bool>(arg_0.x, arg_0.x, true, false), !arg_0)), ~(-(~0i) >> (~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(100534u, 12u)], u_input.a) % 32u)), vec2<bool>(false, !arg_0.x), abs(1i), u_input.b.x);
    var_0 = Struct_1(!select(var_0.a, func_3(arg_0.zy), arg_0), var_0.d, arg_0.xw, var_0.d, ~(~(~(~u_input.b.x))));
    var_0 = Struct_1(!select(vec4<bool>(var_0.e < var_0.e, true, any(vec2<bool>(false, true)), var_0.c.x & false), arg_0, var_0.c.x | false), firstLeadingBit(-(~_wgslsmith_div_i32(var_0.b, var_0.b))), arg_0.zw, var_0.d, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(96482u, select(u_input.a, 0u, var_0.c.x), ~4294967295u), vec3<u32>(25752u, 4294967295u, ~global0[_wgslsmith_index_u32(18735u, 12u)])), _wgslsmith_add_u32(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(56782u, 12u)], u_input.a), 68599u)));
    global0 = array<u32, 12>();
    var_0 = Struct_1(vec4<bool>(!arg_0.x, arg_0.x, var_0.c.x, any(select(arg_0.wy, arg_0.xw, var_0.c.x | false))), firstLeadingBit(min(_wgslsmith_mult_i32(-2147483647i, -var_0.d), var_0.d >> (u_input.b.x % 32u))), vec2<bool>(true, var_0.c.x), countOneBits(abs(var_0.d)) ^ ~var_0.d, _wgslsmith_div_u32(71816u, 1u));
    return var_0.a.wx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(~(~(0u >> ((u_input.b.x | 14456u) % 32u))), ~(global0[_wgslsmith_index_u32(~countOneBits(u_input.b.x), 12u)] | ~firstLeadingBit(14284u)));
    let var_1 = Struct_1(vec4<bool>(true, true, !all(vec2<bool>(true, true)), !func_1(vec3<f32>(645f, -325f, 604f), vec3<u32>(0u, u_input.a, 620u))), -_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -3984i, 1i, _wgslsmith_mod_i32(1195i, -33704i)), -_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -27975i, -1i), vec3<i32>(40884i, -17041i, -2147483647i))), func_2(vec4<bool>(!any(vec3<bool>(false, true, true)), false, all(vec4<bool>(false, true, false, false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-292f * _wgslsmith_f_op_f32(select(1125f, 1059f, true))))), -1i, global0[_wgslsmith_index_u32(max(~1u, _wgslsmith_add_u32(0u, 36845u)) & u_input.b.x, 12u)] & ~(~1u));
    let var_2 = Struct_1(func_3(vec2<bool>(false, false)), -(~var_1.d), var_1.c, _wgslsmith_add_i32(var_1.b, var_1.d), _wgslsmith_div_u32(95051u, ~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], 12u)] << (4294967295u % 32u)) >> (0u % 32u)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -307f);
    let var_4 = var_1.c;
    global0 = array<u32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e | u_input.b.x);
}

