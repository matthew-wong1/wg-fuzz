struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1158u;

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> i32 {
    let var_0 = vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(-2147483647i, 25142i, 1i, u_input.a.x)), countOneBits(-(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, min(_wgslsmith_sub_i32(-2147483647i, u_input.a.x), -_wgslsmith_clamp_i32(u_input.a.x, 1i, -1i))));
    var var_1 = Struct_1(reverseBits(_wgslsmith_clamp_u32(101615u, 4294967295u, ~arg_0.x)), select(true, true, arg_1.x != _wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(190f, arg_1.x, -1600f, arg_1.x))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -1000f) + vec4<f32>(arg_1.x, 1577f, -308f, arg_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(883f, arg_1.x, arg_1.x, -1132f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, -1583f, 285f, arg_1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 739f, arg_1.x, -1428f))), vec4<bool>(true, false, u_input.b.x != arg_0.x, true)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(var_1.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.c.x)), _wgslsmith_f_op_f32(min(-568f, -203f)), -271f, _wgslsmith_f_op_f32(f32(-1f) * -1714f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(var_1.c, vec4<f32>(var_1.c.x, arg_1.x, var_1.c.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 692f, -1361f, arg_1.x) + var_1.c), select(vec4<bool>(true, false, false, false), vec4<bool>(var_1.b, var_1.b, false, var_1.b), var_1.b)))), _wgslsmith_f_op_vec4_f32(-var_1.c))), vec4<bool>(var_1.b, !(-508f < _wgslsmith_f_op_f32(-var_1.c.x)), all(select(!vec3<bool>(var_1.b, true, var_1.b), select(vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(var_1.b, false, true)), false)), 1031f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-439f))))));
    let var_3 = -vec4<i32>(abs(-1i), -40337i, ~33875i, ~(~_wgslsmith_mod_i32(var_0.x, u_input.a.x)));
    var_2 = var_1.c;
    return -1i;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_3) -> vec4<u32> {
    global0 = 4294967295u;
    global1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(-8466i, ~u_input.a.x), u_input.a.x, func_3(~u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.c.x, -1103f))), u_input.a.x), vec4<i32>(2147483647i, -u_input.a.x, arg_0.x, ~(u_input.a.x & 1i)));
    global0 = 0u;
    global0 = _wgslsmith_dot_vec2_u32(countOneBits(~u_input.b.xy), u_input.b.zx);
    let var_0 = arg_2;
    return ~vec4<u32>(~(arg_2.e.a.a >> (abs(var_0.b.a) % 32u)), ~_wgslsmith_clamp_u32(var_0.e.a.a, 1u, u_input.b.x), 32781u, ~0u);
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    global0 = ~firstLeadingBit(1u);
    global1 = ~(~(-u_input.a.x));
    let var_0 = ~_wgslsmith_sub_vec4_u32(firstTrailingBit(min(firstTrailingBit(vec4<u32>(10372u, 994u, u_input.b.x, 24865u)), func_2(vec4<i32>(u_input.a.x, u_input.a.x, 1635i, -1i), arg_0, Struct_3(arg_0.x, Struct_1(33076u, arg_0.x, vec4<f32>(1000f, -244f, 193f, -1621f)), Struct_1(u_input.b.x, arg_0.x, vec4<f32>(2879f, 834f, 653f, 923f)), Struct_1(u_input.b.x, true, vec4<f32>(2693f, 2263f, -1863f, -985f)), Struct_2(Struct_1(58381u, true, vec4<f32>(-548f, 1220f, 265f, -2151f)), Struct_1(1u, arg_0.x, vec4<f32>(2303f, -513f, -262f, 1000f)), 1590u, -281f))))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u)), select(vec4<u32>(u_input.b.x, u_input.b.x, 46325u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), max(~vec4<u32>(u_input.b.x, u_input.b.x, 107289u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(~u_input.b.x, u_input.b.x, 1u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b))));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(abs(var_0.zwy), ~vec3<u32>(var_0.x, var_0.x, u_input.b.x)) >> ((u_input.b & vec3<u32>(1u, var_0.x, u_input.b.x)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, var_0.x), vec3<u32>(u_input.b.x, 8307u, u_input.b.x))), u_input.b)), 4294967295u);
    global1 = -2147483647i;
    return Struct_3(!any(vec4<bool>(select(arg_0.x, arg_0.x, true), select(true, arg_0.x, true), u_input.a.x != 35758i, true)), Struct_1(~(~var_0.x), arg_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1105f, 461f, 804f, 113f)))))), Struct_1(~(~var_0.x), u_input.a.x > (i32(-1i) * -2147483647i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1889f, 1252f, -1692f, 100f), _wgslsmith_f_op_vec4_f32(vec4<f32>(405f, 261f, -537f, 1251f) * vec4<f32>(-1000f, -1000f, 181f, 195f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1106f, 1091f, -426f, 852f))))), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, u_input.b.x, var_0.x), select(vec4<u32>(u_input.b.x, u_input.b.x, 40877u, u_input.b.x), vec4<u32>(0u, u_input.b.x, u_input.b.x, 943u), true)), vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, 0u, 44710u), 1u, 0u, var_0.x ^ u_input.b.x)), true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2128f, 1404f, -695f, -764f)), vec4<f32>(413f, -1000f, 266f, 356f))))), Struct_2(Struct_1(_wgslsmith_mult_u32(u_input.b.x, ~36597u), true, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-773f, -592f, 427f, -507f) * vec4<f32>(1000f, 1000f, 1000f, -1214f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2398f, -1431f, 536f, -804f)))))), Struct_1(~_wgslsmith_sub_u32(u_input.b.x, 24682u), true || (arg_0.x || false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-318f, -843f, -300f, 1869f)))), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(506f, 507f)), _wgslsmith_f_op_f32(-3550f * 1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<bool>(true, true, true));
    var var_1 = !(!select(vec2<bool>(var_0.d.b, any(vec2<bool>(true, var_0.c.b))), vec2<bool>(select(var_0.c.b, var_0.d.b, var_0.c.b), var_0.b.b), var_0.b.b));
    var var_2 = Struct_4(true, ~u_input.a.x);
    var var_3 = var_0.e;
    var_1 = !(!(!vec2<bool>(var_2.a != false, true)));
    let var_4 = 526f;
    var_2 = Struct_4(false, u_input.a.x);
    var_3 = Struct_2(var_3.b, Struct_1(4294967295u, var_1.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-856f, 1000f, var_4, 1435f) - var_3.a.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.c.x, -1140f, -1000f, -1000f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.a.c.x, var_3.d, 945f, var_3.a.c.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4, var_0.b.c.x, var_3.a.c.x, 1000f), var_3.b.c))))))), ~var_3.c, -289f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(78943u, 38770u, u_input.b.x, 34131u), vec4<u32>(var_0.d.a, u_input.b.x, 1u, 4294967295u)), min(~vec4<u32>(var_3.b.a, 28387u, u_input.b.x, var_0.b.a), ~vec4<u32>(0u, var_3.c, u_input.b.x, u_input.b.x))), abs(vec4<u32>(abs(24015u), ~var_3.c, _wgslsmith_div_u32(u_input.b.x, 17706u), var_3.b.a | var_3.c))), 1445f, _wgslsmith_mod_u32(~u_input.b.x, var_0.e.a.a));
}

