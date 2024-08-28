struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 6101i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    global0 = countOneBits(-vec2<i32>(47161i, -2147483647i));
    let var_0 = -(~(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(-13853i, 0i, global0.x), vec3<i32>(-1i, 1i, 0i))));
    let var_1 = ~min(_wgslsmith_mod_u32(min(u_input.c, 1u), u_input.b ^ arg_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, _wgslsmith_clamp_u32(4294967295u, 22954u, u_input.c), _wgslsmith_dot_vec2_u32(arg_1.zy, arg_1.xx)), select(countOneBits(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)), select(vec4<u32>(0u, 4294967295u, 25251u, arg_1.x), vec4<u32>(4294967295u, 8777u, arg_1.x, 49244u), vec4<bool>(arg_0, false, true, arg_0)), select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, arg_0, false, true), false))));
    let var_2 = _wgslsmith_mult_u32(var_1, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(min(max(vec4<u32>(0u, u_input.b, 0u, var_1), vec4<u32>(arg_1.x, var_1, 4294967295u, arg_1.x)), select(vec4<u32>(var_1, 4294967295u, u_input.c, u_input.b), vec4<u32>(1u, arg_1.x, var_1, 2502u), vec4<bool>(true, false, false, arg_0))), ~(~vec4<u32>(1u, var_1, arg_1.x, 0u))), countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(40190u, 19574u, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, 21301u, arg_1.x)))));
    var var_3 = arg_3;
    return arg_2;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> i32 {
    global0 = ~firstTrailingBit(vec2<i32>(~func_3(arg_0, vec3<u32>(u_input.c, 1u, u_input.c), -1i, Struct_1(1246f)), -global0.x));
    var var_0 = -1i;
    let var_1 = Struct_1(-1502f);
    var_0 = global0.x ^ -(0i | -global0.x);
    let var_2 = var_1;
    return _wgslsmith_mult_i32(u_input.a, u_input.a);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    global0 = _wgslsmith_clamp_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 1i), select(vec2<i32>(u_input.a, -1i), vec2<i32>(global0.x, global0.x), vec2<bool>(true, false))) >> (~(~vec2<u32>(1u, 16542u)) % vec2<u32>(32u))), vec2<i32>(8153i, func_2(all(vec4<bool>(true, true, true, true)), arg_2, _wgslsmith_f_op_f32(arg_2.a + 1f))), arg_0);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + _wgslsmith_f_op_f32(-965f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))));
    var var_1 = 1240f;
    global0 = abs(vec2<i32>(global0.x << (~u_input.c % 32u), u_input.a));
    var var_2 = 1i;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(-global0.x, i32(-1i) * -global0.x);
    global0 = ~vec2<i32>(global0.x, func_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-13834i, -11406i, u_input.a, u_input.a), vec4<i32>(u_input.a, 46342i, -32999i, 28278i)), u_input.a), ~select(vec4<u32>(u_input.b, u_input.b, 0u, u_input.c), vec4<u32>(20751u, u_input.b, 50241u, u_input.b), vec4<bool>(false, true, false, true)), Struct_1(_wgslsmith_f_op_f32(-2303f * 403f))));
    let var_0 = vec2<i32>(~u_input.a, u_input.a);
    var var_1 = Struct_1(-400f);
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec2<i32>(global0.x, ~u_input.a), select(abs(select(~vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c), ~vec4<u32>(34161u, u_input.c, 19201u, 108876u), false)), select(~(vec4<u32>(0u, u_input.b, u_input.b, u_input.c) << (vec4<u32>(u_input.c, 4294967295u, u_input.b, u_input.c) % vec4<u32>(32u))), ~countOneBits(vec4<u32>(u_input.c, u_input.c, u_input.b, 0u)), true), false));
}

