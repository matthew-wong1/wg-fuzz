struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.d.b.x);
    var_0 = 1715f;
    var var_1 = arg_1;
    var var_2 = arg_1.d.b;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1094f * _wgslsmith_f_op_f32(max(349f, arg_1.d.b.x))) + -790f);
    return 1071f;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2.c;
    let var_1 = 1u;
    let var_2 = Struct_4(Struct_2(Struct_1(arg_2.a, arg_2.b, -(u_input.a | 38192i), arg_2.a), ~(~(u_input.e.x >> (41222u % 32u))), _wgslsmith_f_op_vec2_f32(arg_2.b.xx + arg_0), arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_2.b.x)))) * arg_2.b.x), select(~u_input.e, countOneBits(~_wgslsmith_mod_vec3_u32(u_input.e, u_input.e)), vec3<bool>(arg_2.d, true, arg_1 == max(28576i, u_input.d.x))), Struct_3((u_input.e.xz | (u_input.e.xx & u_input.e.yy)) | reverseBits(u_input.e.xy), vec4<i32>(max(0i, 22696i) << (var_1 % 32u), -2147483647i, _wgslsmith_add_i32(min(1i, -1i), 13771i), arg_2.c), abs(max(~u_input.e.x, 4294967295u))));
    let var_3 = Struct_2(Struct_1(all(!vec3<bool>(arg_2.a, var_2.a.a.a, true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(642f, 647f, var_2.a.a.b.x, 1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-402f, 886f, 362f, arg_0.x)), _wgslsmith_f_op_vec4_f32(step(arg_2.b, vec4<f32>(arg_0.x, arg_0.x, arg_2.b.x, var_2.b))), false)))), -13590i, true || any(!vec3<bool>(arg_2.a, var_2.a.d.a, true))), _wgslsmith_div_u32((max(4294967295u, 4294967295u) ^ u_input.e.x) & var_1, var_2.c.x), var_2.a.c, Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.b))), _wgslsmith_f_op_f32(f32(-1f) * -361f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_2.b.x, 383f)), arg_2.b.x)), -425f), ~min(arg_1, u_input.d.x), arg_2.a));
    var_0 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d.b.x - _wgslsmith_f_op_f32(var_3.c.x + _wgslsmith_f_op_f32(abs(arg_0.x)))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(1676f + -140f)))));
    var var_1 = 28454i;
    var_0 = _wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_div_f32(1665f, _wgslsmith_f_op_f32(f32(-1f) * -1224f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-148f)))), firstTrailingBit(_wgslsmith_mult_i32(~(~u_input.d.x), reverseBits(2147483647i))), Struct_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-341f, 856f, 662f, 1137f) + vec4<f32>(-737f, -225f, 312f, -304f))) + vec4<f32>(735f, _wgslsmith_f_op_f32(func_3(vec4<u32>(4294967295u, u_input.c, 45977u, u_input.e.x), Struct_2(Struct_1(true, vec4<f32>(-1000f, 330f, 738f, -1565f), u_input.d.x, true), 1u, vec2<f32>(-895f, 527f), Struct_1(true, vec4<f32>(-1000f, 660f, -814f, 1262f), 25134i, true)), vec2<bool>(true, true))), _wgslsmith_f_op_f32(ceil(164f)), 1474f)), _wgslsmith_dot_vec2_i32(u_input.d, u_input.d), -894f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + -268f))))));
    let var_2 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-129f, 1389f, -1000f, -1453f)))), countOneBits(9159i), true), u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-685f + -1199f))), _wgslsmith_f_op_f32(-653f - 179f))), Struct_1(all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), true)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1479f, _wgslsmith_f_op_f32(-260f + 1429f), _wgslsmith_f_op_f32(-1359f * 823f), -1380f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(898f, 1902f, -576f, -1349f) - vec4<f32>(-738f, 1000f, 2239f, 1188f)), _wgslsmith_div_vec4_f32(vec4<f32>(-2227f, 340f, 963f, -1364f), vec4<f32>(411f, -1372f, -759f, 395f)))))), 786i, true));
    var_1 = _wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(~(-2147483647i), 5785i, u_input.d.x, 59432i)), -(~countOneBits(vec4<i32>(-1i, -1i, u_input.d.x, -1i))), vec4<bool>(false, ~u_input.d.x >= _wgslsmith_sub_i32(4330i, u_input.b), var_2.a.a, false)), vec4<i32>(2147483647i, (var_2.d.c ^ var_2.d.c) | firstTrailingBit(_wgslsmith_mod_i32(-64481i, var_2.d.c)), select(-(var_2.d.c & -2147483647i), var_2.d.c, true), -32996i));
    return var_2.b;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = select(1u, u_input.c, all(vec3<bool>(true, true, (u_input.c ^ u_input.e.x) < 116786u)));
    var var_2 = ~(vec4<u32>(min(~u_input.c, u_input.c), 1u, 29836u, ~0u) >> (vec4<u32>(_wgslsmith_add_u32(u_input.c, ~78066u), u_input.e.x, func_2(), ~(~u_input.e.x)) % vec4<u32>(32u)));
    var var_3 = Struct_4(Struct_2(Struct_1((50294i >> (u_input.e.x % 32u)) <= -u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-547f, 1307f, -2274f, -785f), vec4<f32>(var_0, var_0, var_0, var_0)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, -1896f, var_0, var_0)))), -1i, true), ~abs(var_2.x & var_2.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, -1000f) * _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(trunc(200f)))), Struct_1(u_input.c <= _wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -136f, -706f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -457f, var_0, var_0) + vec4<f32>(-1000f, var_0, var_0, var_0))), -24315i, true)), _wgslsmith_f_op_f32(-var_0), firstTrailingBit(~_wgslsmith_sub_vec3_u32(u_input.e, ~vec3<u32>(u_input.c, 36227u, 1u))), Struct_3(~var_2.ww, vec4<i32>(-24887i, -firstLeadingBit(u_input.a), reverseBits(~u_input.d.x), 26536i), select(72632u, 1u, _wgslsmith_f_op_f32(abs(var_0)) != _wgslsmith_f_op_f32(trunc(-274f)))));
    var_2 = vec4<u32>(u_input.c, ~_wgslsmith_mult_u32(var_2.x, 0u) ^ 1u, ~u_input.c, _wgslsmith_dot_vec3_u32(~var_2.yxw, vec3<u32>(var_2.x, u_input.c, var_3.a.b) ^ u_input.e));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.e, Struct_3(~firstTrailingBit(u_input.e.zy), abs(vec4<i32>(u_input.a, reverseBits(u_input.b), ~u_input.d.x, -u_input.b)), u_input.c));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.a.d.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.a.a.b), var_0.a.a.b, vec4<bool>(any(vec3<bool>(var_0.a.d.d, false, true)), true, var_0.a.a.a, var_0.a.d.a))) * var_0.a.a.b)));
    let var_2 = Struct_1((_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))) >= _wgslsmith_f_op_f32(f32(-1f) * -803f)) || ((var_0.a.d.b.x > 108f) || true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.d.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_0.a.d.d)), -450f, 688f) * var_0.a.a.b)), u_input.a, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec4_i32(var_0.d.b, vec4<i32>(var_0.a.a.c, u_input.d.x, u_input.b, 34206i))) >= _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.a.a.c, var_0.d.b.x, var_0.d.b.x, 1i), _wgslsmith_clamp_vec4_i32(min(var_0.d.b, vec4<i32>(1i, -2147483647i, u_input.d.x, var_0.d.b.x)), var_0.d.b, vec4<i32>(-44332i, 0i, 2147483647i, -2147483647i))));
    var var_3 = var_0.d;
    let var_4 = var_2.b.yx;
    let var_5 = Struct_5(var_3.a.x, all(!vec3<bool>(false && var_2.a, false, var_0.a.a.d && false)), Struct_3(~(var_0.c.xx | u_input.e.xx), select(vec4<i32>(var_0.d.b.x, _wgslsmith_add_i32(-1i, var_3.b.x), -1i, -1i), -_wgslsmith_clamp_vec4_i32(var_0.d.b, var_3.b, vec4<i32>(var_3.b.x, -16962i, -2147483647i, u_input.a)), select(select(vec4<bool>(var_0.a.d.d, false, var_2.a, false), vec4<bool>(true, var_2.a, true, var_0.a.a.d), var_0.a.d.d), select(vec4<bool>(true, var_2.d, var_0.a.d.a, var_0.a.a.a), vec4<bool>(true, var_2.a, var_2.a, false), var_0.a.d.d), vec4<bool>(var_2.d, true, true, true))), var_0.d.c), vec4<i32>(min(abs(~1i), ~min(u_input.d.x, var_2.c)), ~(~(-var_0.d.b.x)), -2147483647i, _wgslsmith_mult_i32(60533i, -(u_input.a ^ var_0.a.a.c))));
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1486f)) - _wgslsmith_f_op_f32(-var_4.x));
    var var_7 = var_0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-970f)) - 404f), var_0.a.a.b.x), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.x) + var_2.b.x)), -1122f));
}

