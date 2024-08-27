struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec2<u32> {
    let var_0 = false;
    var var_1 = 1i;
    var var_2 = u_input.b;
    let var_3 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(min(arg_1, 637f)));
    let var_4 = vec4<bool>(arg_0.a, arg_0.a, all(select(select(select(vec2<bool>(var_0, false), vec2<bool>(var_0, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(arg_0.a, false)), select(vec2<bool>(false, false), !vec2<bool>(var_0, true), select(vec2<bool>(false, var_0), vec2<bool>(true, false), vec2<bool>(var_0, false))), true || (-1698f == arg_1))), var_0);
    return reverseBits(abs(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, u_input.a)), vec2<u32>(5399u, u_input.c) << (vec2<u32>(9292u, 16423u) % vec2<u32>(32u))))) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c, 0u), vec2<u32>(_wgslsmith_add_u32(46130u, 1u), ~u_input.c) << (_wgslsmith_add_vec2_u32(min(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, u_input.c)), min(vec2<u32>(u_input.c, u_input.a), vec2<u32>(0u, u_input.c))) % vec2<u32>(32u)), abs(select(vec2<u32>(u_input.c, u_input.a) ^ vec2<u32>(4294967295u, u_input.c), abs(vec2<u32>(15079u, u_input.c)), select(vec2<bool>(false, var_4.x), vec2<bool>(false, true), false)))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: u32) -> bool {
    var var_0 = ~u_input.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1008f, 585f, 495f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1566f, 746f, -1349f) + vec3<f32>(209f, 1000f, 527f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1176f, 155f, -616f))), arg_0.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_2 = select(abs(~vec3<u32>(~arg_1.a, select(0u, 2518u, false), 1u)), vec3<u32>(~_wgslsmith_add_u32(arg_2.x | 0u, ~0u), ~_wgslsmith_mult_u32(select(46497u, u_input.a, true), ~34539u), 68475u), !(!(!(!vec3<bool>(false, true, arg_1.b.x)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-438f))) * _wgslsmith_f_op_f32(select(var_1.x, var_1.x, any(!select(arg_1.b.wxw, arg_1.b.wxz, true)))));
    var_0 = ~(_wgslsmith_sub_i32(reverseBits(10716i), u_input.b) >> (~reverseBits(select(92278u, arg_3, arg_0.x)) % 32u));
    return arg_0.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(any(!vec3<bool>(true, arg_2.a, false)));
    let var_1 = Struct_1(!func_4(select(vec2<bool>(true, true), !vec2<bool>(var_0.a, arg_2.a), !vec2<bool>(arg_2.a, true)), Struct_2(_wgslsmith_add_u32(21431u, u_input.a), vec4<bool>(true, arg_2.a, var_0.a, arg_2.a)), func_3(var_0, _wgslsmith_f_op_f32(arg_0 * arg_0)), u_input.c | 4294967295u));
    let var_2 = Struct_1(!(!all(vec2<bool>(true, false))));
    var var_3 = ~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(4294967295u, 94678u, u_input.c, 63674u) ^ vec4<u32>(3019u, u_input.c, 48473u, u_input.c), abs(vec4<u32>(u_input.c, u_input.a, u_input.a, 89278u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), select(vec4<u32>(u_input.c, u_input.a, 5034u, u_input.c), vec4<u32>(u_input.a, u_input.c, 4294967295u, 0u), vec4<bool>(true, true, var_2.a, var_2.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 32668u, 19669u, u_input.a), vec4<u32>(60459u, u_input.a, 0u, u_input.a))), vec4<u32>(u_input.a, 62803u, ~u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a))), vec4<u32>(~0u & reverseBits(u_input.c), _wgslsmith_mod_u32(1u, u_input.c), 1u, u_input.c));
    let var_4 = var_1;
    return func_3(Struct_1(true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(124f - -1167f))))).x >> ((var_3.x >> ((u_input.a << (~max(53470u, 4294967295u) % 32u)) % 32u)) % 32u);
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: u32) -> i32 {
    var var_0 = true;
    let var_1 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))), vec3<bool>(false, true, true), true);
    let var_2 = true;
    var_0 = true;
    let var_3 = Struct_1(true);
    return 1i;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> u32 {
    let var_0 = vec2<i32>(func_5(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-509f + 1f) - -281f), func_2(_wgslsmith_f_op_f32(sign(-232f)), Struct_1(all(vec3<bool>(arg_1, arg_1, arg_1))), Struct_1(any(arg_0)))), ~(~(-38375i)));
    var var_1 = true;
    var_1 = all(!(!(!(!vec3<bool>(true, arg_0.x, true)))));
    return countOneBits(max(select(firstTrailingBit(u_input.c), u_input.a, all(arg_0)), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_div_i32(~u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -6292i, u_input.b, u_input.b), select(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(2127i, u_input.b, u_input.b, 53335i), vec4<bool>(false, true, false, false)))) << (~1u % 32u)) >> (max(1u, func_1(vec2<bool>(false, true), true)) % 32u);
    let var_1 = ~vec4<i32>(u_input.b, -2147483647i, u_input.b, 0i);
    var_0 = u_input.b;
    var_0 = u_input.b;
    var_0 = -2147483647i << (~4294967295u % 32u);
    let var_2 = select(vec2<bool>(func_4(vec2<bool>(true, true), Struct_2(u_input.c, select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false)), abs(vec2<u32>(u_input.a, u_input.c)) & ~vec2<u32>(u_input.c, u_input.c), _wgslsmith_sub_u32(select(4294967295u, u_input.c, true), 7254u)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, true)), vec2<bool>(false, true), vec2<bool>(true, true)), all(vec3<bool>(true, true, true))), select(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_3 = (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, max(5721u, 1u), 1u, max(4294967295u, u_input.c)), vec4<u32>(u_input.c, 14905u, 22610u, u_input.c)) ^ (_wgslsmith_mult_vec4_u32(vec4<u32>(18736u, u_input.c, u_input.c, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.c, 40888u, u_input.c), vec4<u32>(4294967295u, 32999u, u_input.a, 31707u), vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.a))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.a, u_input.a, u_input.a, 432u), vec4<u32>(u_input.c, u_input.c, 37821u, 15605u) << (vec4<u32>(u_input.a, u_input.a, u_input.c, 25478u) % vec4<u32>(32u))) % vec4<u32>(32u)))) ^ countOneBits(vec4<u32>(1u, ~21028u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(16157u, 4294967295u)), u_input.a));
    let var_4 = var_3.yy >> (vec2<u32>(_wgslsmith_mult_u32(~12935u, 1u), u_input.a) % vec2<u32>(32u));
    let var_5 = Struct_3(u_input.c, -515f, -u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.b) - _wgslsmith_f_op_f32(-var_5.b))))), vec4<i32>(-1i) * -(~vec4<i32>(u_input.b, var_5.c, -1i, var_1.x)), 1i);
}

