struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
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

var<private> global0: u32 = 0u;

var<private> global1: vec2<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = vec3<u32>(min(arg_3.b.c.x, 24465u), 1u, 2859u) | ~vec3<u32>(u_input.c.x, 8344u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_3.b.c.x, 45699u), arg_3.d.c.x ^ u_input.c.x));
    var var_1 = Struct_1(min(~vec3<i32>(min(14212i, arg_0), i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.d.b, arg_0, arg_0, arg_0), vec4<i32>(-30275i, arg_3.a.x, 15608i, 2147483647i))), ~(-(~vec3<i32>(98211i, arg_0, -25963i)))), u_input.b.x, vec3<u32>(arg_3.b.c.x, arg_3.d.c.x, var_0.x), arg_3.a.x);
    return vec2<bool>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3.e.x, arg_1.x)) - _wgslsmith_f_op_f32(min(arg_3.e.x, arg_3.e.x))) <= _wgslsmith_f_op_f32(trunc(-1410f)));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> vec3<u32> {
    let var_0 = firstTrailingBit(u_input.c.x);
    var var_1 = abs(u_input.c.x);
    var var_2 = _wgslsmith_mod_vec2_i32(u_input.b.xz, ~select(vec2<i32>(-7695i, -2147483647i), vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.b.x), -1i), func_3(-1i, vec4<f32>(arg_1.x, arg_1.x, -388f, arg_1.x), vec3<bool>(true, arg_0, arg_0), Struct_2(u_input.b, Struct_1(vec3<i32>(u_input.b.x, 1i, 2147483647i), u_input.b.x, vec3<u32>(var_0, var_0, 24872u), 0i), false, Struct_1(u_input.b, 2147483647i, vec3<u32>(1u, u_input.c.x, var_0), 52591i), vec2<f32>(1201f, 754f)))));
    let var_3 = ~firstLeadingBit(var_2.x);
    return ~min(vec3<u32>(4294967295u, u_input.c.x, ~_wgslsmith_sub_u32(var_0, 4294967295u)), vec3<u32>(u_input.c.x, var_0, 4294967295u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = arg_0;
    var var_1 = vec3<bool>(false, false, func_3(-89682i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(691f, 251f, -625f, 705f))))), select(vec3<bool>(arg_0.c, var_0.c, var_0.c), vec3<bool>(!var_0.c, arg_1.c.x > 4294967295u, global1.x), vec3<bool>(arg_0.c, true, true)), Struct_2(vec3<i32>(~arg_0.d.d, arg_1.b, max(4056i, var_0.a.x)), Struct_1(vec3<i32>(arg_1.d, var_0.d.b, 2147483647i), var_0.a.x, vec3<u32>(arg_1.c.x, 541u, 1u), -60899i), true, var_0.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.x, -764f)))).x);
    var var_2 = Struct_2((vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(var_0.d.a, vec3<i32>(-3018i, var_0.d.a.x, 4294i))) << (~(max(vec3<u32>(3298u, var_0.d.c.x, 12638u), vec3<u32>(var_0.d.c.x, 63443u, arg_1.c.x)) & vec3<u32>(arg_1.c.x, 0u, arg_0.d.c.x)) % vec3<u32>(32u)), arg_1, true, Struct_1(vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, arg_0.b.d), arg_1.a.xy)), min(u_input.a, countOneBits(-2147483647i)), 38044i), u_input.b.x >> (_wgslsmith_div_u32(_wgslsmith_div_u32(28019u, arg_0.b.c.x), ~40066u) % 32u), vec3<u32>(~firstLeadingBit(15666u), 36029u, ~0u), u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0.e.x)), 1000f));
    var_2 = Struct_2(var_0.a, arg_1, true, arg_0.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(362f, _wgslsmith_f_op_f32(-1349f - -428f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-314f, var_0.e.x)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-167f * var_0.e.x), _wgslsmith_f_op_f32(1541f + var_2.e.x)), var_0.e, true)), var_1.xx)));
    var var_3 = var_2.d.c.xz;
    return _wgslsmith_div_f32(var_2.e.x, _wgslsmith_f_op_f32(arg_0.e.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x)))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.e.x, arg_0.e.x)) + arg_0.e.x))), _wgslsmith_f_op_f32(1322f * -1397f));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(Struct_2(vec3<i32>(-1i) * -u_input.b, Struct_1(select(u_input.b ^ vec3<i32>(825i, u_input.b.x, 2147483647i), ~vec3<i32>(u_input.b.x, 45853i, u_input.b.x), vec3<bool>(global1.x, global1.x, true)), firstLeadingBit(-2147483647i), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 35547u), vec3<u32>(u_input.c.x, u_input.c.x, 0u), vec3<u32>(u_input.c.x, 1u, u_input.c.x)), min(-u_input.b.x, -8933i >> (u_input.c.x % 32u))), all(select(vec2<bool>(true, true), !vec2<bool>(global1.x, global1.x), false || global1.x)), Struct_1(abs(u_input.b), -29271i, select(select(vec3<u32>(1u, 152u, 21731u), vec3<u32>(26598u, 0u, 4294967295u), true), vec3<u32>(u_input.c.x, u_input.c.x, 63652u), !vec3<bool>(false, global1.x, global1.x)), ~2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1331f, 314f))))), Struct_1(vec3<i32>(countOneBits(0i), 1i, -_wgslsmith_mult_i32(u_input.a, -27714i)), u_input.a, ~func_2(select(global1.x, global1.x, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-194f, -885f))), -12886i));
    let var_1 = Struct_2(-u_input.b, Struct_1(_wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, _wgslsmith_div_vec3_i32(~u_input.b, u_input.b)), abs(1i), (vec3<u32>(4294967295u, 85457u, u_input.c.x) | ~vec3<u32>(u_input.c.x, 0u, u_input.c.x)) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(9u, 0u, 70446u), vec3<u32>(u_input.c.x, 1u, 0u)) % vec3<u32>(32u)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, 12036i), abs(-1i))), true, Struct_1(u_input.b, firstTrailingBit(~u_input.a) ^ ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b.x), vec2<i32>(u_input.a, u_input.b.x)), vec3<u32>(1u, 46341u, ~(~117253u)), _wgslsmith_clamp_i32(~abs(0i), 27751i, ~u_input.b.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1544f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(ceil(-1895f)), all(vec2<bool>(true, true))))));
    let var_2 = var_1;
    var var_3 = true;
    let var_4 = ~u_input.c.x;
    return Struct_1(vec3<i32>(6858i, -20102i, -42416i), 2147483647i, vec3<u32>(_wgslsmith_mod_u32(0u << (_wgslsmith_clamp_u32(1u, u_input.c.x, 2974u) % 32u), var_4 << (~var_2.d.c.x % 32u)), 3801u, countOneBits(~4294967295u)), reverseBits(-_wgslsmith_mod_i32(reverseBits(var_1.d.d), 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(324f * _wgslsmith_f_op_f32(-2294f + -1208f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-430f)) + _wgslsmith_div_f32(389f, -1591f)) - _wgslsmith_div_f32(1776f, _wgslsmith_f_op_f32(max(-397f, 908f))))), _wgslsmith_f_op_f32(round(2056f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(356f, -627f)), var_1.xx))) * var_1.yx), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_0.c.x, u_input.c.x, var_0.c.x), vec4<u32>(var_0.c.x, 79952u, var_0.c.x, u_input.c.x)) << (var_0.c.x % 32u)), func_1().a.zz >> (min(vec2<u32>(1u, 4294967295u), _wgslsmith_add_vec2_u32(countOneBits(u_input.c), max(vec2<u32>(41492u, var_0.c.x), vec2<u32>(u_input.c.x, 28057u)))) % vec2<u32>(32u)), (i32(-1i) * -(u_input.a ^ 2147483647i)) >> (6656u % 32u));
}

