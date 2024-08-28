struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0.b.xxz;
    var_0 = arg_0.b.xxz;
    var_0 = arg_0.b.yzy;
    let var_1 = vec3<bool>(arg_0.b.x, arg_0.c, arg_0.b.x | all(!arg_0.b));
    let var_2 = 1069f;
    return arg_0.b.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = arg_1;
    var var_1 = arg_1.b.a.x;
    var var_2 = var_0.b;
    let var_3 = var_0.a;
    let var_4 = arg_1;
    return vec4<bool>(true, true, func_3(Struct_1(vec2<u32>(4589u, ~var_2.a.x), var_4.b.b, true, _wgslsmith_f_op_vec4_f32(-var_2.d))), var_0.b.b.x);
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~(~vec2<u32>(0u, u_input.c)), _wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.a, u_input.c), vec2<u32>(64010u, u_input.c), false), vec2<u32>(u_input.a, u_input.c))), ~(vec2<u32>(u_input.a, 0u) << (~vec2<u32>(38880u, u_input.a) % vec2<u32>(32u)))), func_4(vec4<bool>(all(vec3<bool>(true, false, false)) != true, func_3(Struct_1(vec2<u32>(u_input.a, 61214u), vec4<bool>(true, false, true, true), true, vec4<f32>(-1041f, -1000f, 170f, -838f))), ~(-38425i) == (u_input.b.x << (u_input.a % 32u)), -1418f != _wgslsmith_f_op_f32(floor(-606f))), Struct_2(_wgslsmith_div_f32(948f, _wgslsmith_div_f32(-106f, -323f)), Struct_1(select(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, 1u), vec2<bool>(true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), true, vec4<f32>(-738f, 578f, 1636f, 404f)))), false, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(493f, 136f, -960f, -788f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1357f, 682f, -861f, -449f), _wgslsmith_f_op_vec4_f32(vec4<f32>(551f, 1478f, -561f, -710f) - vec4<f32>(1209f, -1058f, 639f, 251f)))))));
    let var_1 = !vec4<bool>(var_0.b.x, select(!var_0.b.x, !all(vec2<bool>(false, false)), var_0.c), var_0.c, !(!(257f >= var_0.d.x)));
    let var_2 = u_input.b.ywy | u_input.b.yzz;
    var var_3 = false;
    var var_4 = any(select(!var_0.b, vec4<bool>(false, any(var_1.xwx), false, var_1.x), var_1));
    return ~vec2<u32>(firstLeadingBit(_wgslsmith_clamp_u32(var_0.a.x, 577u, var_0.a.x)), _wgslsmith_div_u32(_wgslsmith_div_u32(39079u, var_0.a.x), 1u)) | vec2<u32>(u_input.c, reverseBits(~(~u_input.a)));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: bool) -> u32 {
    let var_0 = arg_1;
    let var_1 = ~_wgslsmith_sub_u32(u_input.a, 0u);
    let var_2 = Struct_1(select(func_2(), reverseBits(~(~vec2<u32>(u_input.a, 27452u))), select(!select(vec2<bool>(true, false), vec2<bool>(arg_2, true), false), !(!vec2<bool>(true, arg_1)), var_0)), !vec4<bool>(true, func_3(Struct_1(vec2<u32>(76346u, 6607u), vec4<bool>(true, false, false, var_0), true, vec4<f32>(-1405f, -170f, 1277f, 1000f))), true, false), var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1002f, -249f, -612f, 278f), vec4<f32>(-192f, 561f, -459f, -1397f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1634f, -474f, 2126f, -1653f)))) * vec4<f32>(_wgslsmith_f_op_f32(step(-1049f, _wgslsmith_f_op_f32(abs(-281f)))), _wgslsmith_f_op_f32(f32(-1f) * -359f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f + 1085f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-620f, 402f), _wgslsmith_f_op_f32(649f + 1300f), false)))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-var_2.d.x), var_2);
    var var_4 = var_2;
    return select(var_2.a.x, ~(func_2().x ^ 0u), var_3.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1057f)) + _wgslsmith_f_op_f32(ceil(-961f)))), 270f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2443f)), _wgslsmith_f_op_f32(floor(1297f)));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(~(~_wgslsmith_div_u32(47303u, u_input.a)), ~4294967295u), _wgslsmith_add_u32(firstLeadingBit(firstTrailingBit(u_input.a >> (41870u % 32u))), func_1(firstLeadingBit(vec3<i32>(-2147483647i, 1i, u_input.b.x)), true, true)));
    let var_2 = vec2<u32>(u_input.c, 24448u);
    var var_3 = ~(~vec3<u32>(_wgslsmith_mod_u32(~var_2.x, 56566u), min(func_2().x, ~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.x, var_2.x), vec3<u32>(0u, u_input.a, var_2.x) & vec3<u32>(4294967295u, 1u, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_add_u32(~38404u, var_3.x ^ var_3.x)), u_input.b.yzw, var_3.zy, vec4<i32>(_wgslsmith_sub_i32(-1i, u_input.b.x), -14952i, (u_input.b.x ^ reverseBits(u_input.b.x)) << (abs(~24080u) % 32u), select(-1i, u_input.b.x, func_3(Struct_1(vec2<u32>(12473u, 4294967295u), vec4<bool>(true, false, true, false), true, vec4<f32>(-557f, var_0.x, 2231f, var_0.x)))) ^ _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_add_i32(-2147483647i, u_input.b.x))), _wgslsmith_mult_vec2_u32(var_2, vec2<u32>(var_3.x, countOneBits(var_2.x))) >> (_wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 62077u), vec2<u32>(var_3.x, 1u)), var_2) % vec2<u32>(32u)));
}

