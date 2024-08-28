struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = !vec3<bool>(arg_2.x, arg_2.x, arg_2.x);
    var var_1 = ~(~firstLeadingBit(~select(u_input.b.xz, vec2<u32>(1u, 97611u), true)));
    var_1 = vec2<u32>(~46767u, 1u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3104f), _wgslsmith_f_op_f32(select(1067f, _wgslsmith_f_op_f32(2498f * 436f), arg_2.x)))));
    var var_3 = !arg_3.b;
    return -177f;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = 430f;
    let var_1 = arg_0;
    let var_2 = u_input.e.x;
    let var_3 = arg_0;
    var var_4 = arg_0;
    return var_3;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<bool> {
    return arg_0.zz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-137f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(804f, 1304f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1212f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -1550f)) - _wgslsmith_f_op_f32(abs(1f)));
    var_0 = _wgslsmith_f_op_f32(1099f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(599f * -862f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(53456i, false, vec4<i32>(u_input.a.x, -27455i, 1i, u_input.a.x)), 65218u, vec2<bool>(true, true), Struct_1(23548i, false, u_input.a)))))));
    var_0 = -855f;
    var_0 = 1141f;
    var var_1 = func_2(Struct_1(-(~reverseBits(-7370i)), true, abs(u_input.a | firstLeadingBit(u_input.a))), abs(vec3<u32>(_wgslsmith_mult_u32(u_input.d, u_input.e.x) | u_input.b.x, _wgslsmith_mod_u32(72030u | u_input.e.x, u_input.e.x), (u_input.c & 44053u) ^ abs(0u))), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1570f, _wgslsmith_f_op_f32(func_1(func_2(func_2(Struct_1(var_1.a, false, u_input.a), vec3<u32>(66193u, u_input.d, u_input.b.x), var_1.b), vec3<u32>(u_input.e.x, u_input.d, u_input.e.x), !var_1.b), u_input.c, func_3(vec3<bool>(true, false, false), Struct_1(var_1.c.x, var_1.b, vec4<i32>(0i, -21188i, 1i, -1i)), vec2<i32>(-2147483647i, u_input.a.x), func_2(Struct_1(64609i, false, u_input.a), vec3<u32>(38221u, u_input.c, u_input.d), var_1.b)), Struct_1(1i, var_1.b, _wgslsmith_mult_vec4_i32(vec4<i32>(48980i, var_1.a, u_input.a.x, 9810i), vec4<i32>(u_input.a.x, -1i, -2371i, var_1.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -154f))) * _wgslsmith_f_op_f32(min(-477f, _wgslsmith_div_f32(-1000f, 449f)))), 487f), ~u_input.c, min(vec4<u32>(_wgslsmith_div_u32(~4294967295u, reverseBits(1u)), ~(~u_input.e.x), ~_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(0u, u_input.c)), reverseBits(~u_input.c)), vec4<u32>(select(u_input.b.x, 1u, var_1.b) << (1u % 32u), u_input.c, (u_input.e.x >> (0u % 32u)) << (u_input.c % 32u), 45773u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1281f)), _wgslsmith_f_op_f32(max(-1000f, -392f)), true & select(false, var_1.b, false))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-342f, 511f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2330f))))), vec3<u32>(~u_input.e.x, u_input.b.x << (u_input.c % 32u), (u_input.e.x << (16779u % 32u)) >> ((u_input.d ^ 17597u) % 32u)));
}

