struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2() -> vec2<i32> {
    return vec2<i32>(11241i, abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -12542i, 2147483647i, -1i), vec4<i32>(u_input.c, u_input.e, u_input.e, u_input.e))), 26578i | _wgslsmith_div_i32(-12376i, u_input.c))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(max(abs(1u) | _wgslsmith_sub_u32(arg_3.x, 21798u), 1u), 0u, ~countOneBits(_wgslsmith_div_u32(46985u, 4294967295u))), max(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 8580u, arg_2), vec3<u32>(arg_0.x, arg_3.x, arg_3.x)), countOneBits(arg_3.x), 4856u) | _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, u_input.b, 1u), vec3<u32>(arg_0.x, arg_3.x, 87869u)), vec3<u32>(0u, ~arg_3.x, 1u)));
    return vec3<bool>(!(u_input.e >= u_input.c), select(false, false, !all(vec4<bool>(false, false, true, false)) == select(true, true, arg_1.a < u_input.a)), any(vec4<bool>(false, true, true, false)));
}

fn func_1(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = ~u_input.d.x;
    var_0 = u_input.b;
    var_0 = _wgslsmith_clamp_u32(4294967295u, u_input.d.x, 1u);
    let var_1 = Struct_1(_wgslsmith_mult_i32(u_input.e, ~(~u_input.e)), func_2());
    let var_2 = ~u_input.d.x;
    return func_3((vec2<u32>(1081u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.d.x, 0u), vec3<u32>(42051u, u_input.d.x, 35254u))) & u_input.d) | u_input.d, Struct_1(countOneBits(var_1.b.x), -var_1.b), ~(32720u | reverseBits(~u_input.b)), ~min(vec2<u32>(29706u, var_2) ^ reverseBits(vec2<u32>(var_2, 1u)), ~u_input.d ^ _wgslsmith_div_vec2_u32(u_input.d, u_input.d)));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f));
    let var_1 = u_input.d.x;
    var var_2 = select(vec3<i32>(17478i, -2147483647i, -18856i), max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.e, u_input.e) << (vec3<u32>(var_1, u_input.d.x, 1u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, 2147483647i, 61214i), vec3<i32>(u_input.e, -1i, u_input.c))) | reverseBits(~vec3<i32>(0i, u_input.a, 29494i)), select(vec3<i32>(-6697i, u_input.c, countOneBits(-23527i)), -vec3<i32>(1i, u_input.c, u_input.a), arg_0 || all(vec4<bool>(arg_1.x, arg_1.x, true, arg_0)))), func_1(select(select(vec3<bool>(arg_1.x, arg_0, true), !vec3<bool>(true, true, arg_1.x), select(arg_1, arg_1, true)), vec3<bool>(arg_1.x | false, any(vec3<bool>(arg_1.x, arg_1.x, true)), all(arg_1.zz)), vec3<bool>(func_1(vec3<bool>(arg_1.x, arg_1.x, false)).x, 8923u < u_input.b, true))));
    let var_3 = vec3<i32>(_wgslsmith_mult_i32(max(var_2.x, _wgslsmith_sub_i32(u_input.e, -28267i)), 38158i), var_2.x, ~u_input.a);
    let var_4 = Struct_1(~((var_3.x ^ _wgslsmith_mod_i32(255i, var_2.x)) ^ _wgslsmith_div_i32(var_2.x, 1i)), select(~_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(-1i, 9403i)), vec2<i32>(var_3.x, u_input.c) << (u_input.d % vec2<u32>(32u))), max(func_2(), vec2<i32>(-8145i, ~var_2.x)), all(!arg_1)));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = (_wgslsmith_mult_i32(arg_0.a, 0i) & -_wgslsmith_mod_i32(-41827i, countOneBits(u_input.c))) <= -1i;
    var var_1 = arg_0;
    var_1 = arg_0;
    var_1 = Struct_1(arg_3.b.x ^ countOneBits(var_1.a), vec2<i32>(var_1.a, -1i));
    var_0 = true;
    return StorageBuffer(vec4<u32>(72342u, 4294967295u, u_input.d.x, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1i, ~vec2<i32>(u_input.c, i32(-1i) * -9936i));
    let x = u_input.a;
    s_output = func_5(var_0, ~0u, vec3<u32>(func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(-29284i, var_0.b.x, 2147483647i, 1i), vec4<i32>(-23303i, -35805i, u_input.c, var_0.b.x)) <= _wgslsmith_clamp_i32(14049i, -2147483647i, 2147483647i), !func_1(vec3<bool>(true, true, true))), ~select(~27139u, u_input.d.x, true), select(u_input.b, 124126u, func_1(vec3<bool>(true, true, true)).x)), var_0);
}

