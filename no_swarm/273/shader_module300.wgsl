struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = ~u_input.a;
    return 1087f;
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = arg_1.x;
    var var_1 = ~max(1u, ~(~4294967295u) | u_input.d);
    var_0 = false;
    var var_2 = vec3<u32>(u_input.d, 1u, abs(u_input.b));
    let var_3 = Struct_2(Struct_1(vec3<bool>(false, (arg_1.x != true) | !arg_1.x, arg_1.x), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_3.x, 573i, 21642i), vec4<i32>(-3900i, u_input.c.x, -1i, arg_0) ^ arg_3), i32(-1i) * -1i, -24304i, -2147483647i), any(!vec4<bool>(true, arg_1.x, arg_1.x, true))), !arg_1.x);
    return !vec2<bool>(_wgslsmith_f_op_f32(func_2(any(vec3<bool>(arg_1.x, false, var_3.b)))) >= _wgslsmith_f_op_f32(sign(arg_2.x)), (u_input.d != 1u) & !(arg_1.x & true));
}

fn func_1(arg_0: vec2<f32>) -> vec4<bool> {
    let var_0 = vec2<u32>(~_wgslsmith_mult_u32(u_input.a, _wgslsmith_mod_u32(1u, u_input.b)), ~(~(~u_input.a))) << (vec2<u32>(u_input.d, 4875u) % vec2<u32>(32u));
    let var_1 = vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-495f * arg_0.x), arg_0.x, true)) * _wgslsmith_f_op_f32(f32(-1f) * -1081f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(any(vec2<bool>(false, true))))), !any(!func_3(u_input.c.x, vec2<bool>(true, true), vec3<f32>(arg_0.x, 777f, arg_0.x), u_input.c)));
    return vec4<bool>(true, true, true, var_1.x);
}

fn func_4(arg_0: bool) -> StorageBuffer {
    let var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(any(vec2<bool>(arg_0, true))))), 1173f)).x;
    let var_1 = _wgslsmith_sub_u32(select(1u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, u_input.a, 1u)), ~vec3<u32>(0u, 13162u, u_input.d) << (~vec3<u32>(u_input.a, 57052u, u_input.a) % vec3<u32>(32u))), !(!arg_0 && true)), (u_input.b & 40218u) >> (_wgslsmith_div_u32(~(u_input.d ^ 0u), ~u_input.b) % 32u));
    let var_2 = u_input.a;
    return StorageBuffer(~u_input.c << (~(~abs(vec4<u32>(1u, 4294967295u, 1u, var_2))) % vec4<u32>(32u)), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(0u, ~firstLeadingBit(_wgslsmith_div_u32(u_input.a, u_input.b)));
    let var_1 = Struct_1(vec3<bool>(true, true, true), vec4<i32>(~(-(u_input.c.x << (u_input.a % 32u))), 1i, abs(reverseBits(u_input.c.x)), ~_wgslsmith_sub_i32(u_input.c.x, 32264i) ^ u_input.c.x), true);
    var var_2 = Struct_1(select(var_1.a, !(!vec3<bool>(var_1.c, false, var_1.a.x)), any(vec3<bool>(!var_1.c, all(vec3<bool>(true, false, var_1.c)), true))), max(vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -1i, -1i), -52358i, max(-35309i, _wgslsmith_clamp_i32(-23358i, u_input.c.x, var_1.b.x)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-2164i, var_1.b.x), u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, var_1.b.x))), select(_wgslsmith_add_vec4_i32(~vec4<i32>(29879i, var_1.b.x, 2147483647i, var_1.b.x), abs(u_input.c)), vec4<i32>(-34135i, ~57650i, u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, 5428i, -1i)), !(!vec4<bool>(true, true, var_1.a.x, true)))), false);
    let x = u_input.a;
    s_output = func_4(any(func_1(vec2<f32>(_wgslsmith_f_op_f32(-1249f * -232f), -1698f))));
}

