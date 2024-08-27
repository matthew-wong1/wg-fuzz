struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = -4636i;
    let var_1 = arg_0.c.x;
    return ~vec4<u32>(0u, firstLeadingBit(0u) | _wgslsmith_clamp_u32(4294967295u, u_input.a, arg_2.a << (4294967295u % 32u)), arg_2.a, ~(~43336u));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = firstLeadingBit(1u);
    var_0 = ~(~_wgslsmith_mult_u32(u_input.a, arg_0.b.a)) | arg_0.c.x;
    var_0 = func_1(arg_0.b, arg_0.b, Struct_1(27864u, select(vec3<bool>(select(arg_0.a.x, true, arg_0.b.b.x), !arg_0.b.b.x, false), arg_0.b.b, true), vec3<f32>(258f, -200f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.c.x * arg_0.b.c.x) - 1f)))).x;
    let var_1 = arg_0;
    var var_2 = vec2<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_add_u32(65180u, 38563u), max(~_wgslsmith_dot_vec4_u32(arg_0.c, vec4<u32>(4294967295u, var_1.c.x, 75615u, u_input.c.x)), ~arg_0.b.a)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_3(arg_0));
    var var_1 = arg_0.b;
    let var_2 = ~arg_0.c.x;
    var var_3 = !vec3<bool>(var_1.b.x, var_1.b.x, !((u_input.d >> (arg_0.b.a % 32u)) >= 0i));
    var var_4 = vec3<bool>(true, true, true);
    return 418f;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> vec4<u32> {
    let var_0 = !(!arg_0.b);
    let var_1 = u_input.b;
    let var_2 = Struct_2(arg_1.yy, arg_0, select(u_input.c, ~vec4<u32>(25789u, 66586u, 518u, u_input.c.x) << ((vec4<u32>(4294967295u, arg_0.a, u_input.a, 46358u) & u_input.c) % vec4<u32>(32u)), false) | (_wgslsmith_mod_vec4_u32(~u_input.c, firstLeadingBit(u_input.c)) ^ ~_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(u_input.a, arg_0.a, 4434u, u_input.c.x))));
    let var_3 = 4294967295u;
    var var_4 = u_input.d >> (var_2.c.x % 32u);
    return ~u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_div_i32(-1544i >> (0u % 32u), 2147483647i)), -1i);
    var var_1 = reverseBits(abs(~(u_input.c ^ func_1(Struct_1(u_input.c.x, vec3<bool>(false, true, false), vec3<f32>(-1201f, 1087f, 1000f)), Struct_1(0u, vec3<bool>(false, false, true), vec3<f32>(-844f, -1118f, 1201f)), Struct_1(17633u, vec3<bool>(false, false, true), vec3<f32>(-707f, -803f, -888f))))));
    var var_2 = firstLeadingBit(~var_1.x);
    let var_3 = true;
    var_1 = u_input.c;
    var var_4 = -319f;
    var_1 = func_4(Struct_1(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, var_1.x), ~var_1.x), vec3<bool>(true, (var_3 || false) && true, 0i >= -var_0), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1090f, 788f, -146f) - vec3<f32>(-1000f, 262f, 1317f)))), vec3<f32>(-1104f, _wgslsmith_f_op_f32(func_2(Struct_2(vec2<bool>(false, false), Struct_1(u_input.a, vec3<bool>(false, var_3, var_3), vec3<f32>(-569f, -1231f, -357f)), vec4<u32>(var_1.x, var_1.x, 4294967295u, u_input.a)))), _wgslsmith_div_f32(-1901f, -931f)))), !select(select(vec4<bool>(true, var_3, true, var_3), select(vec4<bool>(var_3, false, var_3, var_3), vec4<bool>(var_3, var_3, false, false), vec4<bool>(var_3, var_3, var_3, var_3)), all(vec4<bool>(var_3, var_3, true, var_3))), select(!vec4<bool>(var_3, var_3, true, false), vec4<bool>(true, false, true, var_3), var_3 && var_3), !(!vec4<bool>(var_3, var_3, false, var_3))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(315f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2002f * 197f))), _wgslsmith_div_f32(-1000f, 2242f)));
    var var_5 = vec2<u32>(reverseBits(u_input.a), countOneBits(_wgslsmith_div_u32(var_1.x, ~abs(u_input.a))));
    var var_6 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-403f * _wgslsmith_f_op_f32(func_2(Struct_2(vec2<bool>(true, var_3), Struct_1(0u, vec3<bool>(var_3, var_3, true), vec3<f32>(-1299f, 263f, 383f)), u_input.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(911f + 339f) - 1f)) * _wgslsmith_f_op_f32(f32(-1f) * -1820f)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1438f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2090f, -674f)))) + -1084f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_6.x, 1000f, any(select(!vec2<bool>(var_3, var_3), select(vec2<bool>(var_3, false), vec2<bool>(var_3, false), vec2<bool>(false, var_3)), !vec2<bool>(var_3, var_3))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(803f, var_6.x, 1064f, var_6.x) * vec4<f32>(-770f, var_6.x, -911f, var_6.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-215f, var_6.x, var_6.x, var_6.x) - vec4<f32>(var_6.x, var_6.x, -908f, -1383f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(405f, -1000f, var_6.x, 668f))))))), max(var_0, ~var_0));
}

