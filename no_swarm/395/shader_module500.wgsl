struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = !(!select(select(!vec4<bool>(false, true, false, arg_3), !vec4<bool>(arg_3, arg_3, false, false), vec4<bool>(arg_3, true, true, true)), select(!vec4<bool>(arg_3, false, true, true), !vec4<bool>(true, true, arg_3, arg_3), true), true));
    var var_1 = false;
    var_0 = vec4<bool>(var_0.x, all(var_0.zwz), all(var_0.yy) | var_0.x, true);
    var var_2 = any(vec4<bool>(!all(var_0.zy), false, any(var_0.yy), !(true != all(vec4<bool>(var_0.x, arg_3, arg_3, true)))));
    let var_3 = ~(~(~(vec3<u32>(51899u, 47268u, arg_0.a) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, 14937u), vec3<u32>(arg_0.a, arg_0.a, u_input.a.x)) % vec3<u32>(32u)))));
    return -682f;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = Struct_1(min(9139u, abs(1u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(arg_0), Struct_1(arg_0), Struct_1(u_input.c.x), false))))));
    let var_2 = Struct_1(12650u);
    let var_3 = ~(~vec4<u32>(_wgslsmith_div_u32(~1u, arg_0), ~1u, countOneBits(19741u), ~u_input.a.x));
    var var_4 = var_2;
    return 28300u;
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = ~19095u;
    let var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(func_2(~4294967295u, -698f, 1i), ~u_input.a.x, ~countOneBits(arg_0.a)), vec3<u32>(_wgslsmith_sub_u32(26603u, ~u_input.b), arg_0.a, 8203u));
    let var_2 = arg_0;
    var var_3 = var_1.x >> (0u % 32u);
    let var_4 = arg_0;
    return true;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: bool) -> vec2<bool> {
    var var_0 = Struct_1((4294967295u & ~func_2(u_input.b, -484f, 0i)) >> (arg_2 % 32u));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(i32(-1i) * -3441i), max(17007i, ~1i), _wgslsmith_add_i32(-930i, _wgslsmith_sub_i32(20187i, 0i)), -countOneBits(0i)), -vec4<i32>(_wgslsmith_div_i32(44262i, -27012i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 72659i), vec3<i32>(1i, 0i, -2147483647i)), firstLeadingBit(1i), _wgslsmith_add_i32(-7864i, -36302i))) <= -12017i;
    let var_2 = Struct_1(~(~(1u & u_input.c.x) | reverseBits(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.c.x))));
    let var_3 = var_2;
    var_0 = Struct_1(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_3.a, arg_2, 58191u), _wgslsmith_dot_vec4_u32(vec4<u32>(4224u, var_0.a, 1u, var_2.a), vec4<u32>(arg_2, var_2.a, 9755u, var_2.a)), ~29434u), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a, u_input.b, 4895u), ~vec3<u32>(var_3.a, 9696u, var_2.a))));
    return vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(arg_3, false), vec2<bool>(arg_1, false), func_1(var_3)), vec2<bool>(true, true))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(any(vec3<bool>(true, !func_1(Struct_1(0u)), true)), !any(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, firstTrailingBit(u_input.c.x)), 1u) << ((((u_input.c.x >> (u_input.b % 32u)) & u_input.b) & ~u_input.b) % 32u), 905u > u_input.b);
    var_0 = !vec2<bool>(var_0.x, true);
    var_0 = func_4(var_0.x, true, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b << (48321u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(31438u, u_input.c.x, 42419u), vec3<u32>(u_input.a.x, u_input.b, 16511u)), ~u_input.a.x), ~_wgslsmith_add_vec3_u32(vec3<u32>(66259u, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, 1u, 92044u))), false);
    var var_1 = ~_wgslsmith_clamp_u32(u_input.b, u_input.c.x ^ reverseBits(u_input.a.x ^ 0u), u_input.b);
    var_0 = vec2<bool>(var_0.x, any(select(select(vec4<bool>(false, var_0.x, true, var_0.x), !vec4<bool>(false, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, var_0.x)), !vec4<bool>(var_0.x, var_0.x, true, false), any(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-307f, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(10277u, 10555u, u_input.c.x), vec3<u32>(38099u, u_input.c.x, 19871u)), u_input.a.x) >> (_wgslsmith_mult_u32(~u_input.b, u_input.c.x | 32452u) % 32u), ~(~u_input.c.x)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(select(1i, -24428i, var_0.x), 11620i), vec2<i32>(countOneBits(19681i), -1i)), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(18595i, -2147483647i), vec2<i32>(-2147483647i, 78215i)) | ~vec2<i32>(24893i, 33012i))));
}

