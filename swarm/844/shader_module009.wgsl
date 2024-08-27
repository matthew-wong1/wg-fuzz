struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec3<i32>(-2147483647i, u_input.a, ~2147483647i | u_input.a);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-648f, 1773f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1018f - -862f) + _wgslsmith_f_op_f32(min(arg_0.x, -172f))))), -349f, arg_0.x), arg_0);
    var_0 = vec3<i32>(countOneBits(select(-2147483647i, -1i, _wgslsmith_f_op_f32(1347f + arg_0.x) >= -694f)), -19000i | (((i32(-1i) * -1i) ^ abs(arg_2.x)) | arg_1), var_0.x);
    let var_2 = !any(!vec2<bool>(any(vec2<bool>(true, true)), true));
    var var_3 = arg_2.x;
    return Struct_2(!all(vec2<bool>(false, false)), min(u_input.b, u_input.b), arg_3);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(-_wgslsmith_add_i32(-30475i, 22670i) ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 0i, 0i), vec4<i32>(-1i, u_input.a, arg_0.c.a, -15027i)) ^ 1i), -42514i), 13181i);
    var var_1 = vec3<f32>(_wgslsmith_div_f32(560f, _wgslsmith_div_f32(589f, _wgslsmith_f_op_f32(-1f))), -219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-535f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1900f, -193f, false)) * -175f))));
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, var_1.x)))))), 0i, vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(~arg_2.a >> (_wgslsmith_mod_u32(arg_1, arg_1) % 32u), -9394i), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-551f, var_1.x, var_1.x, 1409f) * vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), abs(arg_0.c.a << (0u % 32u)), vec3<i32>(~0i, _wgslsmith_mod_i32(6136i, arg_2.a), ~arg_2.a), func_1(vec4<f32>(1690f, 398f, -930f, var_1.x), 1i, vec3<i32>(arg_2.a, 28438i, 24933i) ^ vec3<i32>(arg_3, arg_3, 2147483647i), arg_2).c).c.a), arg_2).c;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x - -1999f)), _wgslsmith_f_op_vec2_f32(-var_1.yx)), var_1.xz, select(select(!vec2<bool>(arg_0.a, arg_0.a), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), true), arg_0.a), vec2<bool>(arg_0.a, !arg_0.a), arg_0.a == false))) - _wgslsmith_f_op_vec2_f32(max(var_1.zy, _wgslsmith_f_op_vec2_f32(-var_1.zx))));
    var var_4 = arg_1;
    return -1193f;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<bool>) -> vec2<f32> {
    var var_0 = 435f;
    var var_1 = vec3<bool>(!any(select(arg_3.yz, vec2<bool>(true, arg_2.a), arg_3.xw)) || arg_2.a, arg_2.a, arg_3.x);
    let var_2 = 4294967295u;
    var_1 = arg_3.yzx;
    let var_3 = !select(vec3<bool>(!all(vec4<bool>(true, false, false, true)), arg_1.a, 1i > (0i | u_input.a)), arg_3.zxz, vec3<bool>(var_1.x, true, true));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1, ~arg_1.b, func_1(vec4<f32>(-214f, -536f, -733f, 292f), arg_0.x ^ arg_0.x, -vec3<i32>(arg_0.x, u_input.a, arg_1.c.a), Struct_1(2147483647i)).c, _wgslsmith_div_i32(0i, arg_1.c.a << (var_2 % 32u)))) + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_2(var_3.x, var_2, Struct_1(-23346i)), 10094u, Struct_1(arg_1.c.a), arg_0.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-335f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(vec4<i32>(-33136i, u_input.a, u_input.a, 1i), func_1(vec4<f32>(-972f, 2022f, 189f, 2120f), u_input.a, vec3<i32>(u_input.a, u_input.a, 56940i), Struct_1(33893i)), Struct_2(false, 74628u, Struct_1(u_input.a)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1045f, -784f)), vec2<bool>(any(vec3<bool>(true, true, true)), true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(920f, -646f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-962f, 990f), vec2<f32>(525f, 582f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f + 290f), _wgslsmith_f_op_f32(ceil(199f)))))));
    let var_1 = ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(105325u, 20961u), ~vec2<u32>(u_input.b, 0u))));
    var var_2 = (var_0.x <= _wgslsmith_f_op_f32(ceil(516f))) != true;
    let var_3 = false;
    var_2 = !((u_input.a << (~firstLeadingBit(0u) % 32u)) >= 7541i);
    let var_4 = (max(~(vec2<u32>(var_1, 0u) & vec2<u32>(36944u, 1u)), firstTrailingBit(~vec2<u32>(u_input.b, 4294967295u))) << ((~(~vec2<u32>(var_1, 4294967295u)) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, var_1) << (vec2<u32>(u_input.b, var_1) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1, 4294967295u), vec2<u32>(var_1, 1u)))) % vec2<u32>(32u))) << (~firstTrailingBit(firstTrailingBit(vec2<u32>(u_input.b, var_1))) % vec2<u32>(32u));
    var var_5 = Struct_2(false, ~0u, Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-44345i, 1i, u_input.a), -(vec3<i32>(-2147483647i, u_input.a, 13027i) & vec3<i32>(u_input.a, u_input.a, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.a, min(_wgslsmith_sub_i32(5293i, var_5.c.a), ~(~func_1(vec4<f32>(623f, 1371f, -1052f, var_0.x), var_5.c.a, vec3<i32>(-22093i, -61594i, u_input.a), var_5.c).c.a)));
}

