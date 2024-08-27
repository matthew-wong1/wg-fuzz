struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>) -> vec2<u32> {
    var var_0 = -_wgslsmith_add_i32(-25075i, 1i);
    var_0 = 79112i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 326f, 1000f))) + vec3<f32>(191f, -702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(257f - 1757f)))), false != (_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(-670f))) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-254f, -921f) * _wgslsmith_f_op_f32(sign(1000f)))), arg_0.x, vec2<bool>(true & (arg_0.x >= 1u), !(_wgslsmith_dot_vec3_i32(u_input.a.wxx, u_input.a.wyx) <= u_input.a.x)), u_input.b.zy);
    var_0 = -2147483647i;
    var_0 = -6227i;
    return ~_wgslsmith_div_vec2_u32(u_input.b.xw, _wgslsmith_sub_vec2_u32(select(~vec2<u32>(1u, var_1.e.x), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, var_1.e.x), vec2<u32>(1u, 0u)), select(var_1.d, vec2<bool>(false, false), vec2<bool>(false, true))), vec2<u32>(~7713u, ~var_1.e.x)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: i32, arg_3: bool) -> u32 {
    let var_0 = ~(_wgslsmith_dot_vec3_u32(u_input.b.wxw, ~(~vec3<u32>(arg_1, 46222u, 48046u))) >> (_wgslsmith_sub_u32(~arg_1, ~27327u << (~u_input.b.x % 32u)) % 32u));
    let var_1 = u_input.c;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(202f, -869f, true)), _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1248f * -715f))))), false, arg_1, select(vec2<bool>(arg_3, arg_3), !(!select(vec2<bool>(false, arg_3), vec2<bool>(false, arg_3), vec2<bool>(arg_3, true))), select(select(select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, false), vec2<bool>(true, arg_3)), !vec2<bool>(arg_3, false), !vec2<bool>(arg_3, true)), select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, true), vec2<bool>(false, arg_3)), vec2<bool>(true, all(vec3<bool>(arg_3, true, false))))), _wgslsmith_mod_vec2_u32(func_3(vec2<u32>(arg_1, 21227u)), vec2<u32>(~func_3(arg_0.zy).x, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(12808u, u_input.b.x), u_input.b.yz)))));
    let var_3 = Struct_1(var_2.a, any(!select(!vec3<bool>(arg_3, var_2.d.x, arg_3), vec3<bool>(true, false, var_2.b), var_2.b)), ~arg_1, var_2.d, vec2<u32>(u_input.b.x, ~4150u));
    var var_4 = _wgslsmith_dot_vec4_u32(~abs(u_input.b), vec4<u32>(57875u, 1u, _wgslsmith_mod_u32(54518u, 49510u) & var_3.e.x, ~23377u)) | (_wgslsmith_div_u32(31642u, 4294967295u) | var_2.e.x);
    return var_2.c;
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1247f, 250f, arg_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 1674f, arg_1) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-537f, -1000f, 1563f)))), select(vec3<bool>(true, any(vec4<bool>(false, true, false, false)), true), vec3<bool>(any(vec4<bool>(false, false, true, false)), true, arg_0 == -40075i), true))), ~(~min(u_input.b.x, 57252u)) >= u_input.b.x, _wgslsmith_mult_u32(func_2(max(~vec3<u32>(28264u, u_input.b.x, u_input.b.x), firstLeadingBit(u_input.b.xyx)), u_input.b.x, _wgslsmith_mod_i32(~u_input.a.x, select(17074i, arg_0, true)), any(vec3<bool>(true, true, true))), 63298u), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), ~_wgslsmith_mod_vec2_u32(u_input.b.zw, u_input.b.zw));
    var var_1 = arg_0;
    let var_2 = vec3<bool>(true, false, var_0.d.x);
    var var_3 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.a.x, -669f), -905f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1017f + 252f)))), var_0.a), var_2.x, ~var_0.c, vec2<bool>(true, true), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_0.c, 1u & var_0.e.x), abs(1u) << (var_0.c % 32u)), vec2<u32>(36508u, 4294967295u) ^ ~min(u_input.b.zx, u_input.b.zw)));
    var_1 = 0i;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) - var_3.a) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(var_0.a)))), var_0.a)), all(!(!(!vec2<bool>(var_3.d.x, false)))), _wgslsmith_mult_u32(_wgslsmith_div_u32(78692u, ~u_input.b.x | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 19567u), vec3<u32>(5132u, u_input.b.x, var_0.c))), ~firstLeadingBit(~15181u)), !var_2.yx, u_input.b.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 33604i;
    var var_1 = func_1(var_0, -935f);
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(-var_1.a.x))), 1121f, -817f), var_1.b, ~_wgslsmith_mult_u32(func_2(vec3<u32>(1u, 12276u, var_1.c), u_input.b.x, ~var_0, any(vec2<bool>(false, var_1.d.x))), ~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), var_1.d, func_1(var_0 & -u_input.c, var_1.a.x).e);
    var_1 = Struct_1(var_1.a, true, u_input.b.x, !select(var_1.d, var_1.d, select(!var_1.d, !vec2<bool>(true, var_1.b), var_1.b)), vec2<u32>(var_1.c, ~var_1.e.x));
    let var_2 = _wgslsmith_add_vec4_u32(~reverseBits(~vec4<u32>(u_input.b.x, u_input.b.x, 99824u, 4294967295u)), abs(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(973f, 155f, var_1.a.x, var_1.a.x)))))))), 900f);
}

