struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: bool,
    c: vec4<u32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1026f;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = 1000f;
    return vec2<bool>(true, any(vec2<bool>(arg_0.x, arg_0.x)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<bool> {
    global0 = arg_1.x;
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1327f, -809f, true)) + 806f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_1.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 777f)))));
    global0 = -826f;
    var_0 = 1612f;
    var var_1 = vec4<u32>(firstTrailingBit(4294967295u) | ~(~reverseBits(1u)), 0u >> (~4294967295u % 32u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(39484u, 30149u, 107915u, 1u)) & (vec4<u32>(10808u, u_input.c.x, 36697u, 724u) | _wgslsmith_mult_vec4_u32(u_input.b, u_input.b)), u_input.b), u_input.c.x);
    return vec3<bool>(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -316f))) >= arg_1.x, true);
}

fn func_1() -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(2010f, 594f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-869f, -563f)))))), _wgslsmith_div_f32(533f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2401f)) - _wgslsmith_f_op_f32(floor(-699f))))));
    var var_0 = Struct_5(select(!vec2<bool>(false, any(vec2<bool>(true, true))), select(vec2<bool>(true, all(vec3<bool>(false, true, false))), vec2<bool>(select(false, true, false), true), !func_2(vec3<bool>(true, false, false))), func_2(!func_3(Struct_1(vec2<i32>(32460i, u_input.a)), vec3<f32>(-858f, -1620f, 339f)))), all(!vec2<bool>(all(vec3<bool>(true, true, false)), func_3(Struct_1(vec2<i32>(-11635i, u_input.a)), vec3<f32>(-202f, -1000f, 1951f)).x)), u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1742f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-919f, 794f))), _wgslsmith_f_op_f32(-1437f * 1237f), true))), !vec4<bool>(u_input.a < abs(0i), true, true, true));
    var var_1 = _wgslsmith_sub_i32(~countOneBits((30671i << (var_0.c.x % 32u)) & (6812i ^ u_input.a)), 222i);
    var_1 = -21389i << ((64496u | ~u_input.b.x) % 32u);
    var_0 = Struct_5(vec2<bool>((1964i << (var_0.c.x % 32u)) <= -(~u_input.a), true), var_0.b, var_0.c, var_0.d, var_0.e);
    return Struct_4(-242f, firstLeadingBit(6501u), 38867u | _wgslsmith_mod_u32(609u, ~var_0.c.x));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_4) -> f32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -335f) != arg_2.a, Struct_1(~_wgslsmith_sub_vec2_i32(vec2<i32>(-4532i, -10311i), vec2<i32>(u_input.a, arg_0))), Struct_1(select(_wgslsmith_sub_vec2_i32(vec2<i32>(9862i, 65864i), vec2<i32>(arg_0, -35480i)), vec2<i32>(u_input.a, -24560i), true)), Struct_1(-abs(vec2<i32>(-1i, u_input.a)))), ~(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.c.x, arg_1.x, 51080u), reverseBits(1u), 1u)));
    let var_1 = arg_2;
    var var_2 = Struct_3(var_0.a, var_1.b);
    var var_3 = Struct_3(Struct_2(all(!select(vec2<bool>(false, var_2.a.a), vec2<bool>(false, var_0.a.a), false)), Struct_1(-vec2<i32>(var_0.a.d.a.x, var_2.a.b.a.x)), Struct_1(vec2<i32>(1i, reverseBits(-18024i))), var_2.a.b), ~countOneBits(0u));
    let var_4 = -2147483647i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), -1056f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(~abs(-vec2<i32>(1i, u_input.a)), _wgslsmith_mult_vec2_i32(abs(abs(vec2<i32>(u_input.a, 34874i))), -vec2<i32>(8919i, -1i)), false));
    let var_1 = vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(134f - 1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1848f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_mult_i32(var_0.a.x, u_input.a), vec4<u32>(13592u, 39027u, u_input.b.x, u_input.c.x) | vec4<u32>(u_input.c.x, 39281u, u_input.c.x, u_input.c.x), func_1()))), !(!(min(u_input.a, var_0.a.x) >= -1i)), _wgslsmith_dot_vec3_u32(min(u_input.c ^ u_input.c, u_input.b.xwx), u_input.b.wwy) <= ~abs(41158u));
    let var_2 = _wgslsmith_dot_vec2_u32(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.b.x & 0u), max(~vec2<u32>(25215u, u_input.b.x), ~vec2<u32>(5273u, 115458u)))), _wgslsmith_mod_vec2_u32(~vec2<u32>(~u_input.b.x, u_input.c.x ^ 1u), vec2<u32>(func_1().b, u_input.c.x)));
    var var_3 = Struct_3(Struct_2(true, Struct_1(vec2<i32>(min(var_0.a.x, u_input.a), var_0.a.x)), var_0, var_0), u_input.c.x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(firstLeadingBit(_wgslsmith_clamp_i32(15874i, 1i, var_0.a.x) >> (56167u % 32u)), vec4<u32>(var_2 | ~var_3.b, min(~4294967295u, 1u ^ u_input.c.x), ~(~21477u), 1u), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -2734f)), reverseBits(_wgslsmith_mult_u32(var_3.b, var_2)), _wgslsmith_clamp_u32(var_3.b, var_3.b, 4294967295u)))));
    let var_4 = Struct_3(Struct_2(true | func_3(var_0, vec3<f32>(1024f, -1675f, -815f)).x, Struct_1(vec2<i32>(-var_0.a.x, -var_3.a.b.a.x)), Struct_1(vec2<i32>(var_0.a.x, min(0i, -1i))), var_3.a.c), min(1u, var_3.b) >> (var_3.b % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~18334u, ~(~(~(~var_4.a.b.a.x))), 0u, var_3.a.d.a, reverseBits(-2147483647i));
}

