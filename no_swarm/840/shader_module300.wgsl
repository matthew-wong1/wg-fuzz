struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> vec4<f32> {
    var var_0 = abs(~reverseBits(~vec4<u32>(0u, 1u, u_input.c.x, 103281u)));
    var_0 = vec4<u32>(var_0.x, 4294967295u, _wgslsmith_mult_u32(~var_0.x, var_0.x), ~abs(30165u));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1363f);
    return vec4<f32>(_wgslsmith_f_op_f32(round(434f)), var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-780f + _wgslsmith_f_op_f32(round(var_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(806f + 945f) - -1000f));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(1u);
    let var_1 = var_0;
    var var_2 = Struct_1(var_1.a >> (10826u % 32u));
    var_2 = Struct_1(58958u);
    var var_3 = ~(~(~(~countOneBits(vec2<u32>(u_input.c.x, 22745u)))));
    return _wgslsmith_div_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.a, 56353u, 2886u), vec4<u32>(var_0.a, u_input.b, var_0.a, 4294967295u)) & ~u_input.c.x, ~10006u), _wgslsmith_mult_u32(u_input.b, var_3.x & var_0.a));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    let var_0 = 1000f;
    var var_1 = select(arg_0, arg_0, vec4<bool>(all(!(!vec2<bool>(arg_0.x, arg_0.x))), func_3() >= ((u_input.c.x << (0u % 32u)) | (617u ^ u_input.c.x)), all(vec2<bool>(arg_0.x, false)), arg_0.x));
    var_1 = select(select(select(arg_0, arg_0, arg_0.x), !vec4<bool>(false, select(arg_0.x, false, arg_0.x), var_1.x, !arg_0.x), arg_0.x), select(arg_0, vec4<bool>(true, var_1.x, true, any(var_1.wz)), vec4<bool>(!all(vec3<bool>(arg_0.x, true, arg_0.x)), arg_0.x, true, true | !var_1.x)), !arg_0);
    let var_2 = abs(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, 4556i, -1i), vec3<i32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.c.x, u_input.c.x, 6336u) % vec3<u32>(32u))), vec3<i32>(-21850i, 1i | u_input.a, -min(u_input.a, u_input.a))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2364f - _wgslsmith_div_f32(var_0, 1296f)) * var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-509f * var_0))), _wgslsmith_f_op_f32(trunc(var_0)), var_0));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1553f, -172f, 748f, -1000f))), vec4<f32>(-1727f, _wgslsmith_f_op_f32(trunc(-1703f)), _wgslsmith_f_op_f32(floor(-558f)), _wgslsmith_f_op_f32(-2037f + -410f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(-957f, _wgslsmith_f_op_f32(815f - -148f), _wgslsmith_f_op_f32(step(-1000f, -783f)), _wgslsmith_f_op_f32(f32(-1f) * -518f)), vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1142f, 1034f, -373f, 479f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -465f, 1042f, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(467f, -2236f, -1546f, -559f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 436f, _wgslsmith_f_op_f32(select(-437f, 1221f, false)), -1496f))));
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(max(var_0.x, 1157f)), var_0.x, _wgslsmith_div_f32(-1000f, var_0.x)))))));
    let var_1 = true;
    let var_2 = Struct_1(0u ^ ~(~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 10993u))));
    var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a | u_input.a, reverseBits(u_input.a)));
}

