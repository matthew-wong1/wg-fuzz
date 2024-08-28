struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec4<i32>,
    e: f32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1420f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -472f))))), _wgslsmith_f_op_f32(-309f - _wgslsmith_f_op_f32(f32(-1f) * -1214f))), ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, u_input.a.x, 70875i, u_input.a.x)), 0i), 1i), ~select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 74748u, 1u), ~vec3<u32>(2656u, 1032u, 1833u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 9005u, 0u, 130602u), vec4<u32>(22313u, 2869u, 46325u, 0u)) >> (1u % 32u), true), true && (-1000f != _wgslsmith_f_op_f32(step(-205f, -295f))));
    var var_1 = var_0.b;
    let var_2 = arg_1;
    var_1 = countOneBits(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, -2147483647i), ~var_0.b)) ^ var_0.b;
    var var_3 = select(vec4<bool>(var_2.a, all(!arg_0.zx), all(arg_0.xxx), ~var_0.c != _wgslsmith_mult_u32(abs(1u), var_0.c >> (1u % 32u))), arg_0, select(select(arg_0, vec4<bool>(any(vec4<bool>(false, true, true, true)), true, arg_1.a, any(vec4<bool>(false, false, true, var_2.a))), select(arg_0, !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), !vec4<bool>(arg_1.b, true, false, true))), !(!select(vec4<bool>(var_2.a, true, true, true), vec4<bool>(false, true, arg_1.a, false), false)), !all(arg_0.xyw)));
    return select(1u, ~var_0.c << (var_0.c % 32u), _wgslsmith_add_u32(1u, var_0.c) == ~_wgslsmith_div_u32(~0u, max(0u, 886u)));
}

fn func_2() -> Struct_3 {
    return Struct_3(Struct_1(-388f, countOneBits(u_input.a.x), _wgslsmith_mod_u32(func_3(vec4<bool>(true, true, true, true), Struct_2(true, true)), abs(func_3(vec4<bool>(true, false, true, false), Struct_2(true, false)))), all(vec2<bool>(true, true))));
}

fn func_1() -> u32 {
    let var_0 = true;
    let var_1 = func_2();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.a), var_1.a.a)) - func_2().a.a), u_input.a.x, 1120u, false);
    let var_3 = var_1.a.a;
    var var_4 = Struct_5(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(2147483647i), 1i, var_2.b & -2147483647i), ~min(vec3<i32>(var_1.a.b, var_2.b, u_input.a.x), vec3<i32>(29423i, var_2.b, var_2.b))), vec3<i32>(~u_input.a.x, u_input.a.x, ~var_1.a.b) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    return var_1.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(449f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(2131f, _wgslsmith_f_op_f32(floor(-798f))) * -856f)) - _wgslsmith_f_op_f32(-743f * -604f));
    var var_1 = _wgslsmith_div_vec3_u32(max(~vec3<u32>(firstTrailingBit(4294967295u), 4294967295u, ~0u), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 281u, 84704u, 0u), max(vec4<u32>(1u, 25101u, 5036u, 4294967295u), vec4<u32>(44756u, 15039u, 61421u, 32166u))), 93771u, func_1())), ~abs(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(1u, 53144u, 4294967295u)), vec3<u32>(1u, 0u, 4294967295u))));
    var var_2 = ~(~(~(vec3<u32>(var_1.x, var_1.x, 5197u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_1.x, var_1.x), vec3<u32>(var_1.x, var_1.x, var_1.x)))));
    var_2 = firstLeadingBit(~(vec3<u32>(~var_1.x, var_2.x, _wgslsmith_clamp_u32(var_1.x, var_2.x, 4294967295u)) & vec3<u32>(_wgslsmith_sub_u32(0u, var_1.x), var_2.x, ~var_1.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-906f, var_0, -1000f, -1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1000f, var_0, var_0))))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, var_3.yy, var_2.x, vec4<i32>(-36981i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(-43478i, -1i, 0i)) >> (_wgslsmith_div_u32(0u, ~26936u) % 32u), abs(-33657i), u_input.a.x), var_3.x);
}

