struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: f32) -> f32 {
    global0 = array<vec4<f32>, 32>();
    global0 = array<vec4<f32>, 32>();
    return 1587f;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    global0 = array<vec4<f32>, 32>();
    global0 = array<vec4<f32>, 32>();
    let var_0 = !vec2<bool>(!(u_input.c == -2147483647i) & false, arg_1);
    global0 = array<vec4<f32>, 32>();
    let var_1 = Struct_1(select(select(vec2<bool>(arg_0.b.x != 1u, true), select(var_0, vec2<bool>(false, true), !arg_0.a.x), var_0), var_0, !(any(vec3<bool>(true, var_0.x, arg_0.a.x)) & arg_1)), vec3<u32>(_wgslsmith_sub_u32(arg_0.b.x, 0u), 3832u, ~abs(firstTrailingBit(0u))), arg_1 & true, arg_0.d);
    return select(select(vec2<bool>(any(vec4<bool>(true, true, var_1.c, arg_0.a.x)) || false, any(select(vec3<bool>(arg_1, var_0.x, var_1.a.x), vec3<bool>(var_1.c, arg_1, arg_1), arg_0.c))), var_0, vec2<bool>(true, true)), vec2<bool>(var_0.x, var_0.x | true), select(!all(var_0), false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1826f))) == -791f));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    return arg_2.b;
}

fn func_1() -> u32 {
    let var_0 = Struct_1(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), true), _wgslsmith_div_vec3_u32(vec3<u32>(~61959u, 3799u, ~abs(u_input.b.x)), select(~(~vec3<u32>(u_input.a, u_input.b.x, u_input.b.x)), ~(~vec3<u32>(u_input.b.x, 1u, u_input.a)), true)), true, ~_wgslsmith_div_i32(~8125i, 1i) | abs(abs(min(u_input.c, 12691i))));
    global0 = array<vec4<f32>, 32>();
    var var_1 = Struct_1(select(!var_0.a, var_0.a, any(select(!vec4<bool>(false, var_0.c, false, false), vec4<bool>(true, true, true, true), var_0.a.x))), func_4(_wgslsmith_f_op_f32(min(-1057f, _wgslsmith_f_op_f32(func_2(var_0, -2095i, vec4<bool>(var_0.c, var_0.c, var_0.c, true), -1241f)))), Struct_1(func_3(var_0, true), ~var_0.b, true, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, -39087i, 0i), vec3<i32>(var_0.d, 10455i, -2147483647i))), var_0) & ~(~var_0.b), true, countOneBits(-1i));
    let var_2 = firstTrailingBit(select((vec2<i32>(-1i) * -vec2<i32>(0i, -2147483647i)) & abs(firstLeadingBit(vec2<i32>(var_1.d, 2147483647i))), vec2<i32>(~_wgslsmith_mod_i32(-2147483647i, var_0.d), var_1.d), select(select(select(var_1.a, var_1.a, var_0.c), var_0.a, vec2<bool>(true, true)), select(!vec2<bool>(true, var_0.a.x), select(var_0.a, vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_0.c, var_1.c)), var_0.a.x), func_3(var_0, var_1.a.x))));
    let var_3 = -_wgslsmith_mult_i32(1i >> (_wgslsmith_mod_u32(~13883u, u_input.a) % 32u), reverseBits(var_2.x));
    return 56312u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 32>();
    global0 = array<vec4<f32>, 32>();
    let var_0 = ~(vec2<u32>(func_1() & ~u_input.a, u_input.a) & firstLeadingBit(~u_input.b >> (u_input.b % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-921f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -123f)));
}

