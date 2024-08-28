struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_3,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
    c: Struct_4,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: bool) -> vec3<i32> {
    var var_0 = vec2<i32>(arg_0.x ^ ~(~abs(-2147483647i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(abs(-17542i), -2147483647i, ~(-1i), firstTrailingBit(2147483647i))), arg_0.x));
    var_0 = arg_0.wz;
    let var_1 = Struct_3(any(select(!vec2<bool>(arg_2, arg_2), select(!vec2<bool>(arg_1, true), select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_1), arg_2), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, true), arg_1)), vec2<bool>(arg_0.x > arg_0.x, arg_1 & true))));
    var_0 = abs(~(~arg_0.xw));
    var var_2 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1413f)), true)), 194f), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, abs(~21932u)), ~_wgslsmith_mod_u32(~0u, 1u)), Struct_4(~_wgslsmith_add_u32(u_input.a.x, reverseBits(0u)), abs(abs(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x))), var_1, u_input.a.xx), Struct_1(countOneBits(~min(vec3<u32>(u_input.a.x, 32143u, 12149u), u_input.a))));
    return reverseBits(min(vec3<i32>(~(-2147483647i), _wgslsmith_mod_i32(firstLeadingBit(var_0.x), arg_0.x), 1i), -vec3<i32>(32918i, -13421i, countOneBits(arg_0.x))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-(~vec3<i32>(2429i, 0i, 1i)), func_3(max(vec4<i32>(-20803i, 0i, -16316i, 13662i), vec4<i32>(23564i, -6155i, 0i, -4071i)), true, select(false, false, true))) >> (abs(~abs(vec3<u32>(32079u, 73945u, u_input.a.x))) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(func_3(-(~vec4<i32>(-33676i, 1i, -1i, -1i)), all(vec2<bool>(true, true)), true), vec3<i32>(1i, 1i, 1i)));
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(196f + 1760f), _wgslsmith_f_op_f32(1005f - 1846f)) - vec2<f32>(1f, 1f)))), _wgslsmith_mod_u32(0u, ~_wgslsmith_mult_u32(abs(0u), firstLeadingBit(4165u))), Struct_4(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, 34337u, 1u, u_input.a.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u))), ~u_input.a.x, Struct_3(true), vec2<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)))), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, (0u | u_input.a.x) & 0u)));
    var var_2 = u_input.a.x;
    let var_3 = !vec3<bool>(var_1.c.c.a, all(!(!vec2<bool>(var_1.c.c.a, var_1.c.c.a))), any(vec2<bool>(true, true)));
    var var_4 = vec2<i32>(3119i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0, 2147483647i), min(countOneBits(-vec3<i32>(2147483647i, var_0, var_0)), -(vec3<i32>(-2147483647i, var_0, 1i) ^ vec3<i32>(2147483647i, 2147483647i, -18091i)))));
    return _wgslsmith_f_op_f32(-542f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1398f, -536f)))) + 493f));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    var var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, -2170f), -1861f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f)), var_1.x))), u_input.a.x, Struct_4(_wgslsmith_mult_u32(~u_input.a.x, 95953u), u_input.a.x, Struct_3(false), firstLeadingBit(vec2<u32>(~u_input.a.x, u_input.a.x >> (u_input.a.x % 32u)))), Struct_1(vec3<u32>(23285u, firstTrailingBit(u_input.a.x) << (select(0u, u_input.a.x, false) % 32u), _wgslsmith_sub_u32(~1u, _wgslsmith_clamp_u32(u_input.a.x, 56867u, 1088u)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_2.a))) * _wgslsmith_f_op_vec2_f32(var_2.a + vec2<f32>(var_2.a.x, var_2.a.x)))) * vec2<f32>(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(func_2()))))));
    var var_3 = arg_0.x;
    return !(true && (true & any(!vec3<bool>(true, var_2.c.c.a, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = vec4<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)) | false, true, func_1(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), any(vec2<bool>(true, false)), true)));
    var_1 = !(!(!(!(!vec4<bool>(var_1.x, true, var_1.x, true)))));
    let var_2 = var_1.yy;
    var_1 = select(select(!(!vec4<bool>(var_2.x, false, var_1.x, false)), vec4<bool>(any(select(vec2<bool>(false, var_1.x), vec2<bool>(true, false), var_1.yw)), true, true, any(var_1.wwx)), (reverseBits(0u) & u_input.a.x) <= (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 32324u), vec4<u32>(1u, u_input.a.x, 12782u, 16279u)) ^ (22738u << (0u % 32u)))), vec4<bool>(var_1.x, any(vec2<bool>(!var_2.x, !var_2.x)), true, all(vec2<bool>(all(vec4<bool>(true, var_2.x, true, var_1.x)), var_2.x))), var_1.x);
    var var_3 = max((u_input.a.x & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 90539u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 42664u))) ^ ~28590u, 78285u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-376f, -140f), vec2<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(37064i, 0i, -52395i, 28561i) >> (vec4<u32>(u_input.a.x, 12771u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), select(vec4<i32>(1i, -46877i, -1i, 7850i), vec4<i32>(19076i, -54391i, 0i, 0i), true))), ~abs(-19639i)), abs(58316u));
}

