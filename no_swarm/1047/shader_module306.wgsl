struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    return arg_1.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_div_f32(var_0.a.x, -163f);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_1.x)), 683f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(min(arg_1.x, 1672f)))))));
    var var_3 = max(u_input.a.wwz, u_input.a.wyz);
    var_3 = u_input.a.xwz;
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(arg_1.a, vec4<bool>(!any(vec2<bool>(arg_1.b.x, arg_0)), arg_2.b.x, true, arg_0 && select(arg_0, arg_2.b.x || arg_0, any(vec2<bool>(arg_1.b.x, false)))));
    let var_1 = Struct_1(arg_1.a, var_0.b);
    let var_2 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(round(arg_1.a.x))))), vec4<bool>(any(!var_0.b), arg_1.b.x, true, arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.a.x, 1159f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-921f, arg_2.a.x) * var_1.a))) * var_0.a), u_input.b ^ u_input.b);
    var var_3 = abs(firstLeadingBit(vec4<i32>(1i, u_input.c.x, 20689i, firstLeadingBit(-2147483647i))) | (-countOneBits(vec4<i32>(1i, 45114i, 24933i, u_input.c.x)) & _wgslsmith_div_vec4_i32(-vec4<i32>(-26235i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-13786i, 7273i, 2147483647i, u_input.c.x))));
    let var_4 = !select(arg_2.b, select(vec4<bool>(true, func_2(var_2, arg_1.a, u_input.a.x).b.x, all(var_1.b.zxx), !arg_1.b.x), arg_1.b, !(var_0.b.x | true)), !func_1(var_3.wwx, func_2(Struct_1(vec2<f32>(var_2.a.x, var_1.a.x), vec4<bool>(var_2.b.x, true, var_0.b.x, false)), var_1.a, u_input.b), arg_1.b));
    return !var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-1i) * -vec2<i32>(-(~11029i), u_input.c.x);
    let var_1 = 1u;
    let var_2 = Struct_1(vec2<f32>(-2031f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-686f * 744f), _wgslsmith_f_op_f32(f32(-1f) * -110f))), -185f)), vec4<bool>(true, func_1(vec3<i32>(~u_input.c.x, abs(1i), var_0.x), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-796f, 854f))), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)), func_3((0i << (0u % 32u)) < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, var_0.x), vec3<i32>(-2147483647i, 1i, var_0.x)), func_2(Struct_1(vec2<f32>(-1102f, -217f), vec4<bool>(false, true, true, false)), vec2<f32>(1552f, -1016f), _wgslsmith_mod_u32(4294967295u, var_1)), func_2(Struct_1(vec2<f32>(801f, -1834f), vec4<bool>(false, true, true, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-732f, -121f)), 34420u)), all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))));
    let var_3 = func_2(var_2, _wgslsmith_f_op_vec2_f32(var_2.a - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a) * _wgslsmith_f_op_vec2_f32(var_2.a * _wgslsmith_f_op_vec2_f32(abs(var_2.a))))), 45338u);
    let var_4 = select(!vec4<bool>((1u <= u_input.b) | var_2.b.x, var_2.b.x, 4294967295u <= _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.b, 39328u, 1u, u_input.d)), true || all(var_2.b.ww)), var_2.b, !(_wgslsmith_clamp_i32(_wgslsmith_div_i32(2147483647i, 33065i), var_0.x << (7281u % 32u), -var_0.x) != -2147483647i));
    var var_5 = func_2(var_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(352f, var_3.a.x, false))), _wgslsmith_f_op_f32(f32(-1f) * -552f))), ~_wgslsmith_clamp_u32(min(u_input.d >> (u_input.b % 32u), _wgslsmith_div_u32(39944u, u_input.a.x)), ~u_input.a.x, min(u_input.b, var_1)));
    var var_6 = var_0.x;
    let var_7 = false;
    let var_8 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, var_5.a.x) - var_2.a) * _wgslsmith_f_op_vec2_f32(var_3.a - vec2<f32>(var_2.a.x, var_3.a.x))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1202f, var_2.a.x))), false))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(405f, 344f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.a.x, var_5.a.x) - var_5.a) - vec2<f32>(var_2.a.x, var_3.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a * _wgslsmith_f_op_vec2_f32(var_5.a - var_2.a)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, -945f) + var_2.a)))), var_3.b.wy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_0.x ^ u_input.c.x, _wgslsmith_mult_i32(-35726i, u_input.c.x)), select(2147483647i, var_0.x, false)), vec2<i32>(0i, countOneBits(_wgslsmith_mod_i32(-13809i, var_0.x)))), _wgslsmith_clamp_vec2_u32(u_input.a.zy, vec2<u32>(max(_wgslsmith_mult_u32(var_1, 22330u), reverseBits(u_input.b)), 0u), vec2<u32>(var_1, abs(17245u))));
}

