struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32 = 4554u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = vec4<bool>((select(!arg_0, !arg_0, arg_3 >= 114f) || true) && arg_0, true, true, arg_0);
    var var_1 = Struct_1(abs(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d, countOneBits(u_input.e.zzw)), u_input.e.wyx)), max(-u_input.a, abs(-arg_1)), arg_0, ~(~(~56240u)), countOneBits(u_input.b.x | _wgslsmith_clamp_i32(arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), u_input.b), _wgslsmith_add_i32(u_input.a, -12903i))));
    var_1 = Struct_1(countOneBits(_wgslsmith_sub_vec3_u32(~(~var_1.a), countOneBits(reverseBits(vec3<u32>(u_input.d.x, u_input.c.x, u_input.e.x))))), -13703i, -3238f >= arg_3, 11845u, 32079i);
    var var_2 = true;
    var var_3 = vec3<f32>(1777f, _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, _wgslsmith_div_f32(-428f, arg_3))))), arg_2);
    return 428f;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-401f, _wgslsmith_f_op_f32(min(-917f, _wgslsmith_f_op_f32(602f * -633f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -869f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -492f) * _wgslsmith_f_op_f32(f32(-1f) * -448f))) * vec4<f32>(_wgslsmith_f_op_f32(abs(-249f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-497f * 492f) - -1032f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(758f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1067f, 826f) + _wgslsmith_f_op_f32(abs(1162f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1169f, 526f, -875f, 337f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2435f, -624f, -607f, 848f) * vec4<f32>(223f, -1000f, 1000f, -239f)), !vec4<bool>(arg_0.c, false, false, arg_0.c))), vec4<f32>(-682f, _wgslsmith_f_op_f32(-790f - -1807f), _wgslsmith_f_op_f32(func_3(arg_0.c, u_input.a, -134f, 494f)), _wgslsmith_f_op_f32(step(-1940f, -1649f))), !select(vec4<bool>(false, false, arg_0.c, false), vec4<bool>(arg_0.c, false, arg_0.c, true), arg_0.c)))));
    let var_1 = ~_wgslsmith_mult_vec3_u32(~vec3<u32>(select(u_input.e.x, arg_0.d, arg_0.c), u_input.d.x, arg_0.d), firstLeadingBit(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(32461u, arg_0.a.x, 22915u), vec3<u32>(arg_0.d, u_input.c.x, 1u)))));
    global0 = true && arg_0.c;
    let var_2 = u_input.b.x;
    global1 = ~(~countOneBits(u_input.c.x));
    return Struct_2(_wgslsmith_sub_u32(10577u, _wgslsmith_div_u32(~(~3552u), _wgslsmith_dot_vec3_u32(u_input.e.zwy, vec3<u32>(4294967295u, 4294967295u, var_1.x)))), Struct_1(vec3<u32>(~arg_0.a.x | var_1.x, _wgslsmith_sub_u32(arg_0.a.x, ~1u), _wgslsmith_sub_u32(reverseBits(u_input.e.x), ~0u)), 1i, arg_0.c, ~reverseBits(~90895u), -2147483647i), 48978u << (u_input.d.x % 32u), _wgslsmith_f_op_f32(-1504f + -1529f), var_0);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = select(u_input.d & vec3<u32>(_wgslsmith_mod_u32(arg_1.a, 0u) ^ ~17349u, _wgslsmith_add_u32(107895u, u_input.c.x) | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, arg_1.c, u_input.d.x), vec4<u32>(u_input.e.x, u_input.c.x, 4294967295u, 9666u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 31675u), ~arg_1.b.a.yy)), vec3<u32>(abs(func_2(Struct_1(arg_1.b.a, -1i, arg_0, u_input.c.x, u_input.a)).c | reverseBits(arg_1.c)), 0u, func_2(func_2(Struct_1(vec3<u32>(arg_1.c, arg_1.c, arg_1.a), 0i, arg_1.b.c, 0u, arg_1.b.e)).b).b.d), true);
    var var_1 = vec4<u32>(countOneBits(func_2(arg_1.b).b.d), u_input.e.x, 54373u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.b.a.x, func_2(func_2(Struct_1(vec3<u32>(var_0.x, 0u, 4294967295u), 2147483647i, false, u_input.e.x, -7443i)).b).b.a.x, select(0u >> (1u % 32u), ~112606u, arg_1.e.x <= 167f)), vec4<u32>(u_input.e.x, _wgslsmith_div_u32(~1u, 19548u), min(var_0.x, u_input.e.x), _wgslsmith_dot_vec3_u32(~var_0, vec3<u32>(var_0.x, arg_1.c, 1u)))));
    let var_2 = vec4<f32>(arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) * 1f), _wgslsmith_f_op_f32(arg_1.d + -408f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x)), _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(-716f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.d))))));
    var var_3 = u_input.b;
    var_3 = select(select(vec2<i32>(~firstLeadingBit(-1i), 1i), u_input.b, !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(arg_1.b.c, arg_1.b.c), vec2<bool>(arg_0, arg_0)), !vec2<bool>(true, arg_1.b.c))), u_input.b, vec2<bool>(arg_0, arg_0));
    return abs(115802u);
}

fn func_1() -> vec3<f32> {
    var var_0 = ~1u;
    global1 = 0u;
    var var_1 = (vec4<u32>(func_4(true, func_2(Struct_1(u_input.e.zwx, 1i, true, 1u, u_input.a))), reverseBits(u_input.d.x), u_input.e.x, 0u) << (u_input.e % vec4<u32>(32u))) ^ (vec4<u32>(u_input.d.x, 0u, ~min(0u, 17842u), reverseBits(_wgslsmith_add_u32(0u, u_input.e.x))) | _wgslsmith_mod_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.c.x, 14397u), u_input.e)), ~(vec4<u32>(116566u, u_input.c.x, u_input.d.x, u_input.c.x) >> (vec4<u32>(u_input.e.x, u_input.e.x, 13533u, 4294967295u) % vec4<u32>(32u)))));
    global1 = u_input.c.x;
    var var_2 = ~func_2(Struct_1(u_input.e.wxy >> (vec3<u32>(var_1.x, var_1.x, 0u) % vec3<u32>(32u)), -7365i, true, ~81328u, u_input.a << (1u % 32u))).c;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-666f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1269f + _wgslsmith_div_f32(268f, 1000f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(824f - 455f)))), -498f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let var_0 = vec2<f32>(-786f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(120f))) + 1f));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -969f, var_0.x))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, -745f, var_0.x), vec3<f32>(1115f, var_0.x, var_0.x))))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1530f + 1790f))), 1000f), _wgslsmith_f_op_f32(func_3(true, abs(0i), var_0.x, _wgslsmith_f_op_f32(-175f * 527f))), _wgslsmith_f_op_f32(f32(-1f) * -852f)));
    let var_2 = u_input.b;
    let var_3 = _wgslsmith_dot_vec3_u32(~u_input.e.wzz << (vec3<u32>(func_4(all(vec2<bool>(false, true)), Struct_2(10064u, Struct_1(vec3<u32>(u_input.e.x, 20079u, 4294967295u), var_2.x, true, 16971u, -62760i), 0u, var_0.x, vec4<f32>(-1834f, 1000f, -511f, var_0.x))), u_input.d.x, u_input.d.x) % vec3<u32>(32u)), u_input.d);
    var var_4 = vec4<bool>(true, !select(true, func_2(Struct_1(vec3<u32>(var_3, 1u, var_3), var_2.x, true, u_input.d.x, u_input.b.x)).d <= _wgslsmith_f_op_f32(f32(-1f) * -1654f), all(vec4<bool>(false, true, false, true))), true, true);
    let var_5 = countOneBits(u_input.a);
    var_4 = !vec4<bool>(_wgslsmith_dot_vec4_u32(u_input.e, _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.d.x, 0u, 0u), u_input.e)) <= _wgslsmith_dot_vec2_u32(u_input.e.xx, ~u_input.d.zy), false, var_4.x || !all(var_4.wxw), var_4.x);
    var var_6 = func_2(func_2(Struct_1(reverseBits(vec3<u32>(u_input.c.x, 11586u, 4294967295u)), -1i, any(select(vec4<bool>(false, var_4.x, var_4.x, false), vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x), vec4<bool>(var_4.x, true, false, false))), abs(var_3 << (u_input.c.x % 32u)), 7190i)).b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(countOneBits(81114u), var_6.a >> (1u % 32u)) ^ 0u, countOneBits(vec2<i32>(-var_2.x, 0i)));
}

