struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(1000f * arg_2.a.x);
    return ~(u_input.d ^ u_input.c.zw);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = u_input.d.x;
    var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c.yyz >> (vec3<u32>(1u, u_input.a, u_input.c.x) % vec3<u32>(32u)), u_input.c.xzw) >> (~u_input.c.x % 32u), _wgslsmith_clamp_u32(~u_input.a, 52333u, u_input.a));
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_2.a.x, -1161f, 155f)), _wgslsmith_f_op_vec4_f32(sign(arg_2.a)))))), -44639i, vec2<bool>(arg_1.d.x, arg_2.c.x), arg_1.d);
    let var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 33270u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x >> (8539u % 32u), u_input.a), ~func_3(reverseBits(u_input.e.wx), _wgslsmith_mult_vec4_i32(u_input.e, u_input.e), Struct_1(vec4<f32>(var_1.a.x, arg_0.a.x, arg_1.a.x, -2088f), var_1.b, arg_1.c, arg_0.c), ~u_input.e.zz)));
    return !select(arg_2.c, arg_2.c, false);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_add_u32(4294967295u, 1u | ~(~abs(u_input.a)));
    var var_1 = vec2<bool>(any(func_2(arg_0, arg_0, Struct_1(arg_0.a, 33647i, !vec2<bool>(true, arg_0.c.x), select(arg_0.c, arg_0.c, vec2<bool>(arg_0.d.x, arg_0.c.x))))), true);
    var_1 = select(vec2<bool>(false, !arg_0.d.x & select(var_1.x, true | var_1.x, true)), select(arg_0.d, vec2<bool>(select(true, true, false) != false, false), !arg_0.c), true);
    var_1 = vec2<bool>(!var_1.x, arg_0.c.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_0.a.wy);
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = 1u;
    var_1 = abs(_wgslsmith_mod_u32(4294967295u, func_1(Struct_1(vec4<f32>(107f, -300f, -503f, 1320f), u_input.b, vec2<bool>(false, false), vec2<bool>(false, false)), -56946i >> (1u % 32u), min(u_input.e.wy, u_input.e.yz)) ^ u_input.d.x));
    var_1 = u_input.a;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-951f * 387f))), -527f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1047f, -533f)) * -1347f), -1000f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-605f, -1619f, -532f, 614f))))), i32(-1i) * -14548i, vec2<bool>(true, all(vec4<bool>(all(vec3<bool>(true, false, true)), true, true, true))), select(!vec2<bool>(true, select(false, false, false)), vec2<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true))), true), vec2<bool>(!all(vec2<bool>(false, false)), select(any(vec4<bool>(true, false, false, true)), any(vec3<bool>(false, true, true)), true))));
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 547f, var_2.a.x, 120f), var_2.a) * var_2.a)))), 1i, func_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(var_2.a, vec4<f32>(var_2.a.x, 203f, -2009f, var_2.a.x)))), i32(-1i) * -4818i, var_2.c, select(vec2<bool>(false, var_2.d.x), func_2(Struct_1(var_2.a, u_input.b, var_2.c, vec2<bool>(var_2.c.x, true)), Struct_1(vec4<f32>(-1064f, -1053f, 352f, 1000f), -1i, vec2<bool>(var_2.c.x, false), var_2.d), Struct_1(var_2.a, -1i, vec2<bool>(false, var_2.d.x), var_2.d)), var_2.c)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.a.x)), var_2.a.x, _wgslsmith_f_op_f32(100f + var_2.a.x), var_2.a.x), -51042i, var_2.d, select(vec2<bool>(true, var_2.d.x), !vec2<bool>(true, var_2.d.x), !var_2.d.x)), Struct_1(_wgslsmith_f_op_vec4_f32(var_2.a - _wgslsmith_f_op_vec4_f32(-var_2.a)), 25180i, var_2.c, vec2<bool>(true, true))), func_2(Struct_1(var_2.a, ~min(var_2.b, u_input.e.x), !vec2<bool>(var_2.c.x, var_2.d.x), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(var_2.a + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(571f, 483f, var_2.a.x, var_2.a.x)))), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b, u_input.b, u_input.e.x, u_input.e.x), vec4<i32>(var_2.b, -1i, u_input.b, u_input.e.x)), !var_2.d, select(!vec2<bool>(false, var_2.c.x), select(var_2.c, var_2.d, vec2<bool>(var_2.c.x, false)), select(vec2<bool>(var_2.c.x, false), vec2<bool>(var_2.d.x, true), var_2.d.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a)), u_input.b, !var_2.d, var_2.d)));
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_2.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(855f, var_2.a.x, -632f, -1271f))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a.x, 1000f, 382f, var_2.a.x))))));
}

