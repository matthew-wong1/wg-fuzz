struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = arg_0;
    var_0 = Struct_2(var_0.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-268f - _wgslsmith_f_op_f32(max(var_0.d, arg_0.c.a)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(122f, 863f, var_0.d, -259f) * arg_0.c.b) - _wgslsmith_f_op_vec4_f32(arg_0.a.b - arg_0.a.b)), vec4<f32>(1254f, _wgslsmith_f_op_f32(arg_0.c.a * arg_0.b.a), -173f, arg_0.d))), arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b.a)) * _wgslsmith_f_op_f32(exp2(var_0.b.b.x))) - 478f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.b.x)))), u_input.d);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -799f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a) * var_0.d);
    var var_2 = ~u_input.c.x >> (_wgslsmith_sub_u32(25040u, arg_0.e.x) % 32u);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(279f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b.x)) + var_0.b.a), arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b.x) - 1000f)) - arg_0.c.b);
}

fn func_3() -> vec4<f32> {
    let var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(min(~u_input.b, 38916u), 1u), firstLeadingBit(_wgslsmith_add_u32(~4294967295u, 13958u)), ~(~abs(u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-105f, _wgslsmith_div_f32(-141f, _wgslsmith_f_op_f32(f32(-1f) * -236f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(195f, -317f) - -838f)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(var_1, vec4<f32>(667f, var_1, var_1, var_1)), Struct_1(var_1, vec4<f32>(1406f, 447f, var_1, 823f)), Struct_1(686f, vec4<f32>(922f, -834f, var_1, 899f)), 1000f, ~vec2<u32>(var_0, 90096u)))).x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * -853f) + _wgslsmith_f_op_f32(var_1 - 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(422f, -1000f, var_1, -1168f))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, 983f, 191f, -1159f)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-890f, 103f, -1160f, var_1)))))));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-559f))));
    var_2 = Struct_1(270f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-975f, -350f, -409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * var_1)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_f_op_f32(step(758f, var_2.b.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.b * var_2.b), _wgslsmith_f_op_vec4_f32(-var_2.b)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<u32>) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f + arg_0.a))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(arg_0.b)), _wgslsmith_f_op_vec4_f32(func_3()))) * _wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(arg_0.a, vec4<f32>(arg_0.a, 399f, -886f, -1000f)), Struct_1(arg_0.a, vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.a, arg_0.a)), arg_0, 1079f, vec2<u32>(u_input.d.x, 0u))))))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(abs(477f)), _wgslsmith_f_op_vec4_f32(func_3()));
    var var_1 = ~(~arg_2);
    var var_2 = Struct_2(Struct_1(var_0.a, arg_0.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f + 316f)), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(arg_0, Struct_1(-287f, arg_0.b), Struct_1(-2013f, vec4<f32>(728f, var_0.a, -1000f, arg_0.a)), 781f, var_1.yy))).x, _wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(f32(-1f) * -415f), arg_0.b.x)), arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689f - _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a)))), ~(u_input.d ^ _wgslsmith_mod_vec2_u32(arg_2.xy, vec2<u32>(arg_1.x, arg_1.x))));
    var var_3 = arg_1;
    return StorageBuffer(~(u_input.c.yx | abs(~vec2<i32>(u_input.c.x, u_input.c.x))), var_3.x, _wgslsmith_add_vec4_u32(select(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2, arg_2), 265u, ~var_1.x, var_1.x), ~abs(vec4<u32>(arg_1.x, 4294967295u, var_1.x, arg_2.x)), true), ~abs(vec4<u32>(1u, 66171u, arg_1.x, arg_2.x))), 0i, var_2.b.b.xzx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(Struct_1(-300f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(-1403f, vec4<f32>(523f, 394f, -1000f, -1258f)), Struct_1(1453f, vec4<f32>(-959f, 2450f, 1333f, 498f)), Struct_1(472f, vec4<f32>(-888f, -671f, -435f, 1022f)), 955f, u_input.d)))))), ~_wgslsmith_clamp_vec2_u32(~u_input.d, u_input.d, ~(~vec2<u32>(u_input.d.x, 1239u))), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 44133u), vec3<u32>(40758u, u_input.a, u_input.a)) | (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 40577u, u_input.a), vec3<u32>(u_input.b, u_input.b, u_input.a)) & vec3<u32>(4294967295u, 4806u, 3646u))));
}

