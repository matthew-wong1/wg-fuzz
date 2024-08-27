struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> i32 {
    let var_0 = Struct_1(!(_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(1u, arg_1.b, 5406u, 4294967295u)) > _wgslsmith_dot_vec3_u32(u_input.a.wwy, ~vec3<u32>(15976u, u_input.a.x, 81478u))), max(4294967295u, u_input.c), true, false, -((u_input.b >> (u_input.a.x % 32u)) ^ 0i) >> (abs(~_wgslsmith_clamp_u32(0u, arg_0.b, 1u)) % 32u));
    let var_1 = Struct_1(all(vec4<bool>(-var_0.e < ~arg_0.e, _wgslsmith_div_f32(arg_2, -1000f) > _wgslsmith_f_op_f32(f32(-1f) * -874f), true, true)), 38439u, arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) * _wgslsmith_f_op_f32(-arg_2)) <= _wgslsmith_f_op_f32(arg_2 * arg_2), select(2147483647i, u_input.b, true));
    return _wgslsmith_mult_i32(18527i, -_wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(arg_0.e, u_input.b) << (u_input.c % 32u)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))), _wgslsmith_f_op_f32(select(-770f, _wgslsmith_f_op_f32(1f + 800f), !all(vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_f32(sign(1341f)));
    var var_1 = ~vec4<i32>(_wgslsmith_add_i32(0i, -14927i), func_3(Struct_1(false, 4294967295u, false, true, 0i), Struct_1(true, 62111u, false, true, -1i), 1612f) >> (_wgslsmith_sub_u32(arg_0, 73660u) % 32u), abs(u_input.b), abs(max(u_input.b, 1i))) | -_wgslsmith_sub_vec4_i32(~(-vec4<i32>(u_input.b, -30831i, u_input.b, u_input.b)), firstTrailingBit(vec4<i32>(-38648i, 2147483647i, u_input.b, u_input.b)) | vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b));
    var var_2 = !select(vec4<bool>(true, true, !all(vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false))), !all(vec2<bool>(true, false)), 32375u < _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, arg_0, arg_0, u_input.a.x)), true));
    var var_3 = Struct_1(false == all(vec3<bool>(true, var_2.x & false, !var_2.x)), 1u, all(!select(vec2<bool>(var_2.x, var_2.x), !vec2<bool>(var_2.x, var_2.x), var_2.yw)), !(~0i != u_input.b), 2147483647i);
    let var_4 = Struct_1(false, arg_0, false, !((var_3.c | var_3.c) | false) && !var_3.a, var_3.e);
    return var_4;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(2245u);
    var var_1 = var_0;
    var_1 = func_2(u_input.c);
    var var_2 = Struct_1(true, u_input.a.x, true, !(func_2(_wgslsmith_mod_u32(4294967295u, u_input.d)).d | true), 0i);
    var var_3 = _wgslsmith_f_op_f32(abs(-526f));
    return func_2(~(~var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_mod_i32(-2147483647i, 1i);
    let var_2 = var_1;
    var var_3 = -1281f;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(717f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1574f)) - _wgslsmith_f_op_f32(648f - -540f))), -274f));
    let var_4 = -1268f;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(1i << (_wgslsmith_dot_vec3_u32(vec3<u32>(69323u, 20771u, 0u), vec3<u32>(1u, u_input.c, var_0.b)) % 32u))), -min(-vec3<i32>(-1i, u_input.b, var_0.e) & -vec3<i32>(u_input.b, -36255i, 8124i), _wgslsmith_mod_vec3_i32(~vec3<i32>(var_0.e, 2147483647i, -16116i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1, var_1, var_2), vec3<i32>(u_input.b, var_1, -1i), vec3<i32>(8645i, var_1, 24102i)))), vec2<i32>(var_1, u_input.b) ^ vec2<i32>(i32(-1i) * -u_input.b, _wgslsmith_mod_i32(var_2 & 8655i, var_1)), _wgslsmith_f_op_f32(-908f * -1383f), select(vec3<u32>(97699u, 47244u, 0u), firstTrailingBit(u_input.a.xzx), var_0.d));
}

