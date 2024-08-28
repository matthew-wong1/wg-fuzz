struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3) -> bool {
    let var_0 = max(vec4<u32>(4294967295u, arg_2.a, (countOneBits(u_input.d) ^ countOneBits(1u)) | u_input.d, 97815u), vec4<u32>(_wgslsmith_add_u32(1u, 1u) & ~_wgslsmith_mod_u32(u_input.d, arg_2.a), 1u, countOneBits(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 49556u), arg_2.a << (arg_2.a % 32u))), ~(~(~21552u))));
    let var_1 = Struct_3(4294967295u, -(~_wgslsmith_sub_vec2_i32(select(vec2<i32>(-3591i, 2147483647i), vec2<i32>(arg_2.b.x, u_input.a.x), vec2<bool>(true, true)), ~vec2<i32>(78971i, -1i))), u_input.b.x, arg_1, Struct_1(_wgslsmith_f_op_f32(select(arg_2.e.a, _wgslsmith_f_op_f32(arg_1.a.a + -1086f), !select(false, true, true)))));
    let var_2 = Struct_2(var_1.d.a);
    var var_3 = var_1.e;
    var var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(arg_0))));
    return false;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: u32) -> Struct_2 {
    let var_0 = vec2<bool>(true, func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -228f, -310f), vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, -711f)), _wgslsmith_f_op_f32(round(-396f)), _wgslsmith_div_f32(622f, 639f)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false))), Struct_2(Struct_1(-966f)), Struct_3(0u, _wgslsmith_add_vec2_i32(u_input.b.zy, u_input.b.xz), 0i, Struct_2(Struct_1(-532f)), Struct_1(_wgslsmith_f_op_f32(abs(-512f))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2020f)) - var_1), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1, 1151f), _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(round(var_1)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * -1080f))), var_1));
    let var_3 = u_input.b.x;
    var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(585f)), -1000f, -1273f, var_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, var_1, var_1, var_1), vec4<f32>(var_1, -254f, var_2.x, 268f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(375f, -180f, var_2.x, var_1)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-682f, -995f, 286f, -517f), vec4<f32>(838f, var_2.x, var_1, 1595f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-183f, 1065f, -825f, var_1)))), vec4<bool>(var_0.x | var_0.x, _wgslsmith_f_op_f32(select(-537f, 1357f, true)) == _wgslsmith_div_f32(-989f, 411f), false, all(vec2<bool>(var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_2.x, var_1, -814f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, var_2.x, -1362f, 878f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, 1000f, var_2.x, var_1)))))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(579f)) + 310f)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    var var_0 = u_input.d;
    var_0 = ~31625u;
    let var_1 = func_2(_wgslsmith_dot_vec2_u32(firstLeadingBit(reverseBits(~vec2<u32>(u_input.d, u_input.d))), ~countOneBits(vec2<u32>(u_input.d, u_input.d))), 4294967295u, _wgslsmith_sub_u32(4294967295u, 18457u));
    let var_2 = !(!vec4<bool>(all(select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), true)), !all(vec4<bool>(arg_1, arg_1, arg_1, true)), arg_1, all(!vec2<bool>(arg_1, false))));
    var var_3 = vec3<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, 0i), vec3<i32>(arg_0.x, u_input.b.x, u_input.b.x)), reverseBits(vec3<i32>(1i, 58666i, -4979i))), abs(-13716i)), arg_0.wy), 1i);
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, -8369i, u_input.c.x, u_input.a.x), u_input.a), true)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-380f, 1551f)))));
    var_0 = Struct_1(var_0.a);
    var var_1 = vec2<f32>(var_0.a, -712f);
    var_0 = Struct_1(var_1.x);
    var var_2 = func_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 20079u, u_input.d, u_input.d)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 1u, 15079u, 0u), vec4<u32>(u_input.d, u_input.d, u_input.d, 0u), vec4<u32>(4294967295u, u_input.d, u_input.d, 0u))), 4294967295u), u_input.d, u_input.d);
    var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -949f))));
    let var_3 = Struct_2(func_2(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.d, 34689u), reverseBits(4294967295u & u_input.d), ~(~78964u)), ~u_input.d, 4294967295u).a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1000f, -930f), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f)), reverseBits(~9756u));
}

