struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_u32(~(~u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, ~15067u, 4294967295u), vec3<u32>(4294967295u, 846u, 1u)));
    var var_1 = ~countOneBits(~_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, arg_1.d.b, 4294967295u), vec3<u32>(10013u, u_input.a, 0u)));
    let var_2 = ~(-(~(-u_input.c & 1i)));
    var_1 = abs(~_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0, var_1.x, 0u), ~vec3<u32>(0u, 4294967295u, 23175u))) ^ select(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.zz, vec2<u32>(1u, u_input.a)), ~var_0, 1u), reverseBits(vec3<u32>(4294967295u, 45606u, u_input.b))), vec3<u32>(~(u_input.b & 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(17551u, var_1.x, 1440u, 3117u), ~vec4<u32>(var_0, 0u, var_1.x, var_1.x)), 532u), arg_1.d.a.b.x);
    let var_3 = -1782f;
    return arg_1.c;
}

fn func_2() -> Struct_2 {
    var var_0 = !(!any(vec4<bool>(true, true, true, true)));
    var_0 = false;
    let var_1 = -1000f;
    let var_2 = Struct_3(var_1, Struct_1(select(!all(vec4<bool>(true, false, false, true)), true, true), !vec2<bool>(u_input.c == u_input.c, select(false, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-776f, 495f) + vec2<f32>(var_1, -375f)), Struct_3(var_1, Struct_1(true, vec2<bool>(true, false)), vec3<bool>(true, false, true), Struct_2(Struct_1(true, vec2<bool>(false, true)), 1u, vec2<bool>(true, true), -1985f)))), Struct_2(Struct_1(any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), vec2<bool>(true, true)), abs(~u_input.b), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), false), 1351f));
    var var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(~(~(~var_2.d.b)), (_wgslsmith_div_u32(u_input.a, u_input.a) & 0u) << (var_2.d.b % 32u)), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.d.b, 39671u) << (~vec2<u32>(28627u, 29689u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.a, u_input.b)), vec2<u32>(34934u, var_2.d.b)))));
    return var_2.d;
}

fn func_1(arg_0: bool, arg_1: f32) -> vec2<bool> {
    var var_0 = arg_0;
    var_0 = all(vec3<bool>(arg_0, true, 7020u != max(4294967295u ^ u_input.a, _wgslsmith_clamp_u32(u_input.a, 1u, u_input.a))));
    var var_1 = func_2();
    var var_2 = var_1.a;
    var var_3 = vec4<i32>(-u_input.e, ~u_input.e & u_input.d.x, reverseBits(select(61533i, abs(_wgslsmith_add_i32(13790i, u_input.e)), arg_0)), reverseBits(1i));
    return vec2<bool>(false, (true && all(vec3<bool>(false, true, true))) || true);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> StorageBuffer {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(102f, _wgslsmith_div_f32(117f, _wgslsmith_f_op_f32(-arg_1.a)))))), func_2().a, !vec3<bool>(false, !(true && arg_1.d.a.a), true & arg_1.c.x), func_2());
    let var_1 = ~_wgslsmith_sub_u32(arg_1.d.b, 2754u | ~(u_input.b | 4294967295u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, var_0.a, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1071f, var_0.d.d))))));
    var var_3 = arg_1.d;
    let var_4 = vec3<u32>(37279u, 105302u, 0u);
    return StorageBuffer(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(select(vec3<u32>(arg_1.d.b, var_1, arg_1.d.b), vec3<u32>(24240u, 52744u, 0u), vec3<bool>(arg_1.c.x, arg_1.d.c.x, arg_1.b.a)), vec3<u32>(arg_1.d.b, var_1, 5927u))), var_4), ~(-abs(u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -196f) + _wgslsmith_f_op_f32(sign(var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-483f)) + _wgslsmith_f_op_f32(f32(-1f) * -156f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(min(~reverseBits(~(-65106i)), countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d.x, -32994i, u_input.d.x, u_input.d.x), u_input.d))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-155f - _wgslsmith_f_op_f32(abs(789f))) * _wgslsmith_f_op_f32(f32(-1f) * -166f)), Struct_1(select(true, true, any(vec3<bool>(false, true, false))), func_1(true, _wgslsmith_div_f32(-452f, -432f))), !select(func_3(vec2<f32>(-266f, -1334f), Struct_3(2341f, Struct_1(false, vec2<bool>(false, true)), vec3<bool>(true, false, true), Struct_2(Struct_1(true, vec2<bool>(true, true)), 1u, vec2<bool>(true, false), 164f))), vec3<bool>(false, true, false), true), Struct_2(Struct_1(true, vec2<bool>(false, true)), u_input.a, vec2<bool>(false, all(vec2<bool>(false, false))), _wgslsmith_f_op_f32(sign(-1660f)))), 1u >> ((u_input.a ^ ~u_input.b) % 32u));
}

