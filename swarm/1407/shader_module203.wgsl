struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(492f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1082f)))), _wgslsmith_f_op_f32(-762f * _wgslsmith_f_op_f32(-164f - -416f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2168f, -1538f), _wgslsmith_f_op_f32(sign(1223f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1045f - _wgslsmith_f_op_f32(f32(-1f) * -406f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1247f, 1357f, 1121f))))))), select(select(vec4<bool>(true, all(vec4<bool>(false, false, false, false)), true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), false), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false), all(vec3<bool>(true, true, true))), !select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false), any(vec4<bool>(true, false, true, true))))));
    let var_1 = Struct_3(!select(vec3<bool>(false, 67078u <= u_input.b, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), Struct_1(0u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1338f, 842f)), var_0), -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, 1i, -1i), vec4<i32>(31081i, 1i, 2147483647i, 2147483647i)) >= min(2147483647i, firstLeadingBit(1i))), select(select(vec3<bool>(true, all(vec4<bool>(false, true, true, false)), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)), vec3<bool>(true, any(vec3<bool>(true, false, true)), false), vec3<bool>(true, !any(vec2<bool>(true, true)), false)), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, arg_0, arg_0), vec3<u32>(17387u, u_input.c, arg_0) >> (vec3<u32>(u_input.a.x, 66403u, 0u) % vec3<u32>(32u))), u_input.a.zzz), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-299f, -758f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))));
    var var_2 = select(vec4<bool>(true, any(!vec4<bool>(var_1.b.c, var_1.c.x, var_1.c.x, true)), any(select(select(vec4<bool>(false, true, false, var_1.b.c), vec4<bool>(var_1.b.c, var_1.a.x, true, var_1.a.x), var_1.c.x), vec4<bool>(true, true, var_1.c.x, var_1.a.x), var_1.b.c == var_1.c.x)), !any(select(var_1.c, var_1.a, vec3<bool>(false, true, var_1.c.x)))), select(!select(vec4<bool>(true, var_1.b.c, var_1.b.c, true), vec4<bool>(false, false, true, var_1.b.c), true), !select(!vec4<bool>(var_1.b.c, var_1.b.c, true, true), vec4<bool>(false, var_1.b.c, var_1.b.c, var_1.b.c), true), select(select(vec4<bool>(var_1.c.x, false, var_1.b.c, var_1.b.c), select(vec4<bool>(false, false, true, true), vec4<bool>(var_1.c.x, true, var_1.c.x, var_1.b.c), vec4<bool>(true, var_1.a.x, var_1.a.x, false)), vec4<bool>(false, true, true, var_1.c.x)), !select(vec4<bool>(false, true, true, var_1.b.c), vec4<bool>(false, false, true, false), vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.a.x)), var_1.a.x)), var_1.a.x);
    var_2 = !vec4<bool>(false, _wgslsmith_f_op_f32(floor(var_1.b.b.x)) == _wgslsmith_div_f32(1835f, -1000f), var_1.c.x, var_2.x);
    var var_3 = ~firstLeadingBit(min(-30542i, -32986i));
    return ~(-reverseBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -1i, -1i), ~vec3<i32>(22127i, -2147483647i, 0i))));
}

fn func_2(arg_0: vec4<u32>) -> vec2<u32> {
    let var_0 = vec4<i32>(i32(-1i) * -2147483647i, i32(-1i) * -1i, i32(-1i) * -_wgslsmith_div_i32(0i, i32(-1i) * -14492i), ~func_3(firstTrailingBit(u_input.c)) << (u_input.b % 32u));
    let var_1 = 0i;
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(var_1, 2147483647i), vec2<i32>(2147483647i, var_0.x | min(-3608i, _wgslsmith_div_i32(-2147483647i, 1i))));
    var var_3 = -1512f;
    var var_4 = var_0.x;
    return vec2<u32>(arg_0.x, arg_0.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_1 {
    return Struct_1(_wgslsmith_dot_vec2_u32(arg_0.wz, _wgslsmith_add_vec2_u32(func_2(u_input.a) ^ vec2<u32>(4294967295u, 0u), ~arg_0.yx)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-433f)) * 2312f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1681f + -628f), -519f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(201f, -1326f) + _wgslsmith_f_op_f32(max(237f, 1816f)))), _wgslsmith_f_op_f32(1456f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2292f)) + 841f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1116f, 387f)))), any(vec4<bool>(true, all(!arg_1.xz), true, any(select(arg_1.xy, arg_1.yz, arg_1.zy)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -667f);
    var var_1 = func_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(min(u_input.b, 26624u), 35510u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.c), vec2<u32>(90464u, u_input.a.x)), ~u_input.a.x), u_input.a), !select(vec3<bool>(u_input.c > 40172u, false, any(vec3<bool>(false, false, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true));
    var_1 = func_1(u_input.a, !(!select(select(vec3<bool>(var_1.c, false, true), vec3<bool>(var_1.c, false, var_1.c), true), !vec3<bool>(var_1.c, true, var_1.c), true)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(u_input.a ^ vec4<u32>(14061u, var_1.a, 4294967295u, 20495u), vec3<bool>(true, true, true)).b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1506f) - _wgslsmith_f_op_f32(floor(744f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-260f)))) - _wgslsmith_f_op_f32(-var_1.b.x)))), 591f);
    var_1 = func_1(~(~vec4<u32>(29192u, reverseBits(15035u), ~u_input.b, 1u & var_1.a)), vec3<bool>(true, !(_wgslsmith_f_op_f32(trunc(-721f)) < var_2), all(vec2<bool>(!var_1.c, !var_1.c))));
    let var_3 = Struct_1(abs(~_wgslsmith_dot_vec2_u32(~u_input.a.xw, u_input.a.yx)), vec4<f32>(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1870f + -1000f) * _wgslsmith_f_op_f32(-var_2)) - 2052f), var_1.b.x, 152f), var_1.c);
    var var_4 = ~24045u;
    let var_5 = vec4<i32>(1i, 1i, 1i, 1i);
    var_1 = func_1(_wgslsmith_div_vec4_u32(abs(u_input.a), _wgslsmith_mult_vec4_u32(u_input.a, ~u_input.a | _wgslsmith_sub_vec4_u32(vec4<u32>(8805u, 70931u, 3296u, 1u), vec4<u32>(var_1.a, 33334u, 1u, var_3.a)))), select(!select(select(vec3<bool>(var_1.c, var_1.c, false), vec3<bool>(false, var_1.c, false), var_3.c), vec3<bool>(true, var_3.c, true), all(vec4<bool>(var_1.c, false, true, false))), vec3<bool>(!var_3.c, true, false), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f), 473f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.x), var_1.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(-24296i, max(_wgslsmith_dot_vec4_i32(var_5, var_5), _wgslsmith_add_i32(var_5.x, var_5.x)), var_5.x), var_5.xyx), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(586f, -692f, -559f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, 135f, -1462f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0, -213f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 382f, var_1.b.x))), vec3<f32>(_wgslsmith_f_op_f32(step(var_2, var_0)), _wgslsmith_f_op_f32(var_3.b.x * 759f), _wgslsmith_f_op_f32(min(var_0, -228f)))))));
}

