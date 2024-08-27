struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_1(~_wgslsmith_add_u32(236u, _wgslsmith_div_u32(~arg_0.x, 1u)), countOneBits(u_input.b) & 1u);
    let var_1 = -7330i;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-910f * -582f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -680f), -163f)))))), Struct_1(~27638u, 402u));
    var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.a - 741f)))), -957f, var_2.c);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(-149f)), -508f, var_0);
    return u_input.b;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(firstTrailingBit(1i), ~16800i);
    return Struct_1(~1u, _wgslsmith_div_u32(func_2(vec4<u32>(~u_input.b, u_input.b, 1u, u_input.a.x)), 4294967295u));
}

fn func_3() -> vec3<bool> {
    let var_0 = u_input.a.x;
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-640f)) - 1061f), -1329f)), -588f), 897f, func_1());
    let var_2 = var_1;
    let var_3 = vec4<u32>(firstLeadingBit(~1u), firstLeadingBit(select(var_1.c.b ^ 1u, 71473u, all(vec4<bool>(false, true, false, true)))), _wgslsmith_dot_vec3_u32((vec3<u32>(var_2.c.b, 0u, 1u) ^ vec3<u32>(u_input.a.x, var_1.c.b, var_0)) >> (vec3<u32>(0u, var_1.c.b, var_2.c.b) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(select(u_input.a.zwx, vec3<u32>(u_input.a.x, 67351u, 11608u), vec3<bool>(false, false, false)), ~u_input.a.yyx)), 22729u) << (~vec4<u32>(_wgslsmith_mult_u32(max(0u, u_input.a.x), 1u), var_0, _wgslsmith_mult_u32(0u, var_2.c.a), min(var_2.c.b, var_0)) % vec4<u32>(32u));
    let var_4 = all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))));
    return select(!(!select(!vec3<bool>(true, true, var_4), !vec3<bool>(var_4, var_4, var_4), !vec3<bool>(var_4, true, var_4))), vec3<bool>(var_4 | all(select(vec3<bool>(var_4, false, var_4), vec3<bool>(var_4, true, true), vec3<bool>(true, var_4, false))), true, all(vec2<bool>(true, any(vec4<bool>(true, var_4, false, var_4))))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1303f + 354f))))));
    let var_3 = select(!select(vec3<bool>(true, var_1 || var_1, all(vec4<bool>(false, var_1, var_1, var_1))), func_3(), !(!vec3<bool>(var_1, var_1, var_1))), !(!select(!vec3<bool>(false, var_1, var_1), func_3(), var_1)), all(select(vec3<bool>(var_1, var_1, true), vec3<bool>(all(vec4<bool>(false, var_1, false, var_1)), true, true), vec3<bool>(true, true, true))));
    var var_4 = _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(f32(-1f) * -790f));
    let x = u_input.a;
    s_output = StorageBuffer(-63653i >> (_wgslsmith_mult_u32(var_0.a, select(_wgslsmith_div_u32(14763u, u_input.a.x), 0u, false)) % 32u), _wgslsmith_sub_vec4_i32(~(firstTrailingBit(vec4<i32>(12891i, -1i, -2147483647i, -1i)) ^ vec4<i32>(1i, 1i, 1i, 1i)), select(vec4<i32>(2147483647i, min(33497i, -1i), ~(-13312i), 704i), abs(vec4<i32>(1i, -14125i, 2147483647i, -2147483647i)), true)));
}

