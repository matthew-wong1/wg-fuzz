struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3 = Struct_3(vec3<u32>(50280u, 3300u, 4294967295u), vec4<u32>(4294967295u, 1u, 21265u, 30551u), Struct_2(200i, vec2<f32>(-611f, 155f), Struct_1(20816i, -102f, vec2<i32>(44290i, -27685i), 4294967295u)), -698f, Struct_1(2167i, 1521f, vec2<i32>(57588i, i32(-2147483648)), 4294967295u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    global0 = _wgslsmith_clamp_u32(1u, 0u, ~countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global1.c.c.d, 0u, global1.b.x), vec3<u32>(u_input.b.x, global1.e.d, 4294967295u)), vec3<u32>(0u, u_input.d, 59718u))));
    global1 = Struct_3(vec3<u32>(_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(~38687u, ~global1.c.c.d, reverseBits(global1.c.c.d))), 4294967295u, 4294967295u), ~(~firstLeadingBit(global1.b)) ^ (firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 0u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 16805u, global1.a.x, u_input.b.x))) << (vec4<u32>(u_input.b.x, u_input.d, min(u_input.d, global1.e.d), ~50380u) % vec4<u32>(32u))), Struct_2(max(1i, 1i | ~arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.e.b), global1.e.b)), -598f), Struct_1(-_wgslsmith_add_i32(0i, -40198i), global1.e.b, vec2<i32>(arg_0.x, global1.c.a) >> ((global1.b.zw & u_input.b.xx) % vec2<u32>(32u)), min(global1.e.d, ~u_input.d))), -246f, Struct_1(_wgslsmith_mod_i32(2147483647i, -firstLeadingBit(arg_0.x)), -101f, arg_0.xx, u_input.b.x));
    let var_0 = ~u_input.e;
    global1 = Struct_3(global1.a, global1.b, Struct_2(var_0, vec2<f32>(_wgslsmith_f_op_f32(max(-401f, _wgslsmith_f_op_f32(abs(-131f)))), _wgslsmith_f_op_f32(ceil(-1926f))), Struct_1(16006i, global1.e.b, global1.c.c.c, u_input.b.x)), global1.d, Struct_1(_wgslsmith_mult_i32(firstLeadingBit(global1.e.c.x ^ var_0), -1i), _wgslsmith_f_op_f32(181f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(505f - 656f))), vec2<i32>(2147483647i, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a, arg_0.x), -7030i)), u_input.d));
    global1 = Struct_3(vec3<u32>(~u_input.d, ~(~global1.e.d), 1u), ~select(~select(global1.b, global1.b, vec4<bool>(false, false, true, true)), global1.b, select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), true)), Struct_2(arg_0.x, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(global1.e.b + global1.c.b.x), -1364f))), global1.e), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.c.b.x * global1.e.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.e.b, global1.e.b) - _wgslsmith_f_op_f32(-global1.c.b.x)) - -779f))), Struct_1(_wgslsmith_clamp_i32(abs(1i), -var_0, global1.e.c.x) << (u_input.b.x % 32u), -276f, u_input.c.wz, u_input.d));
    return firstLeadingBit(firstLeadingBit(0u | ~_wgslsmith_mult_u32(global1.b.x, 17182u)));
}

fn func_2(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = Struct_1(29121i, global1.d, global1.e.c, min(global1.a.x, func_3(countOneBits(reverseBits(u_input.c)))));
    global1 = Struct_3(vec3<u32>(~(~u_input.b.x), firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.c.c.d, global1.c.c.d, global1.b.x), vec4<u32>(var_0.d, global1.b.x, 0u, global1.b.x))), ~max(~u_input.b.x, 70429u)), ~select(~(~vec4<u32>(4294967295u, global1.e.d, 46311u, u_input.b.x)), firstTrailingBit(~vec4<u32>(93572u, 1u, u_input.d, 1u)), arg_0), global1.c, _wgslsmith_f_op_f32(global1.d + 268f), global1.c.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.c.b))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(981f, -719f))), vec2<f32>(global1.c.c.b, global1.e.b)), global1.c.b)))));
    let var_2 = Struct_2(arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1032f, 1758f)) + global1.c.b)), Struct_1(arg_1, _wgslsmith_f_op_f32(step(var_0.b, -1072f)), ~((vec2<i32>(-12184i, 3203i) ^ u_input.c.xx) >> (global1.a.zy % vec2<u32>(32u))), _wgslsmith_add_u32(1u, u_input.d)));
    let var_3 = global1.c;
    return 4294967295u;
}

fn func_1() -> f32 {
    global0 = _wgslsmith_sub_u32(~global1.e.d ^ _wgslsmith_mult_u32(~_wgslsmith_mod_u32(4294967295u, 81626u), ~firstLeadingBit(global1.c.c.d)), _wgslsmith_div_u32(func_2(any(vec3<bool>(true, true, true)), ~_wgslsmith_mult_i32(u_input.e, global1.c.c.c.x)), 36756u));
    var var_0 = Struct_3(vec3<u32>(u_input.d, global1.c.c.d >> (abs(54786u) % 32u), global1.c.c.d), global1.b, Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 1i, global1.c.c.a), vec4<i32>(global1.c.c.a, 33807i, -2147483647i, 12331i)), ~u_input.c.x, 318i), _wgslsmith_div_vec3_i32(u_input.c.xxz, u_input.c.wyw)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(129f)), global1.d)), global1.c.c), global1.c.b.x, global1.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.e.d;
    let var_0 = Struct_1(i32(-1i) * -59125i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.b.x), _wgslsmith_f_op_f32(-global1.d)) + _wgslsmith_f_op_f32(func_1())) - 616f), min(firstTrailingBit(vec2<i32>(40328i, -1i)), u_input.c.yw) & vec2<i32>(28274i, global1.c.a), ~(~(~1u)));
    let var_1 = any(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), select(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))));
    var var_2 = vec3<bool>(!select(var_1, any(vec3<bool>(var_1, var_1, true)), true) && var_1, var_1, all(vec4<bool>(select(any(vec3<bool>(var_1, var_1, false)), true, true), _wgslsmith_f_op_f32(-var_0.b) >= _wgslsmith_f_op_f32(356f - -1067f), true, any(vec3<bool>(var_1, true, false)))));
    var var_3 = var_2.x;
    var var_4 = var_0;
    var var_5 = vec2<u32>(max(~global1.b.x, 1u), 1u);
    var var_6 = Struct_1(global1.c.a >> (global1.b.x % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1514f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b) * 765f))), vec2<i32>(countOneBits(max(-56266i, var_0.a) << (~var_4.d % 32u)), ~var_4.c.x), ~var_5.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(var_0.b, var_4.b), _wgslsmith_f_op_f32(-var_4.b), -1098f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(1731f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1355f - 716f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b * global1.d)), var_4.b)));
}

