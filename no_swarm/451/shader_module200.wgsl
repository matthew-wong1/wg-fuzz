struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_3,
    d: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_4,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    let var_0 = -abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, max(-1i, u_input.a.x)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-24413i, u_input.a.x), u_input.a), vec2<i32>(u_input.a.x, u_input.a.x))));
    let var_1 = _wgslsmith_sub_i32(-_wgslsmith_div_i32(min(1i, firstLeadingBit(u_input.a.x)), ~abs(u_input.a.x)), _wgslsmith_clamp_i32(23210i, firstLeadingBit(var_0), u_input.a.x) | 1i);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(999f, 1353f, 251f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-662f, -550f, -728f))))), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)))))), Struct_3(abs(vec3<u32>(_wgslsmith_add_u32(u_input.b, 0u), _wgslsmith_div_u32(0u, 7952u), _wgslsmith_add_u32(32472u, 32666u))), 1u, _wgslsmith_f_op_f32(max(628f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1417f)))))), Struct_3(select(vec3<u32>(min(u_input.c, u_input.b), u_input.c & u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, u_input.c), vec4<u32>(42129u, u_input.b, u_input.b, u_input.b))), ~vec3<u32>(u_input.b, 42804u, 0u), vec3<bool>(true, all(vec3<bool>(true, true, false)), false)), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, u_input.c, 0u)), vec3<u32>(u_input.b, u_input.c, 18164u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1176f + 125f))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(~45058u, min(u_input.b, 30799u)), vec2<u32>(1u, ~(~u_input.b)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 2993u, u_input.b, u_input.b), vec4<u32>(64326u, 51191u, 23933u, 61793u)), u_input.b << (45996u % 32u))));
    let var_3 = abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(0i, -38178i, var_0, 2147483647i) ^ vec4<i32>(var_0, -2739i, var_0, u_input.a.x)), -firstTrailingBit(vec4<i32>(-2147483647i, -14677i, var_1, var_1))), vec4<i32>(max(var_1, u_input.a.x) | var_1, abs(-50664i), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, -2147483647i, -6230i, u_input.a.x), ~vec4<i32>(var_0, -2147483647i, var_1, 2147483647i)), countOneBits(2147483647i))));
    let var_4 = Struct_5(~select(_wgslsmith_div_u32(~u_input.b, u_input.c), u_input.c, true), Struct_3(_wgslsmith_mod_vec3_u32(var_2.c.a, ~(var_2.c.a << (vec3<u32>(u_input.b, u_input.b, 44474u) % vec3<u32>(32u)))), select(~u_input.b, ~min(2533u, 1u), false), var_2.a.x), var_2, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_2.a.x, _wgslsmith_f_op_f32(-var_2.b.c))))), _wgslsmith_f_op_f32(abs(var_2.a.x))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a.zz) - vec2<f32>(var_2.b.c, var_2.c.c))), var_3.x, Struct_1(_wgslsmith_f_op_vec2_f32(exp2(var_2.a.zx)), _wgslsmith_f_op_f32(var_2.c.c - -1000f) > _wgslsmith_f_op_f32(var_2.a.x + -833f), _wgslsmith_f_op_f32(step(var_2.a.x, -1043f))), -23535i, ~max(vec3<u32>(u_input.b, u_input.c, var_2.d.x), var_2.c.a)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1094f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.c - var_4.c.b.c)) - 1175f))));
}

fn func_2(arg_0: Struct_2) -> Struct_4 {
    var var_0 = Struct_5(arg_0.e.x, Struct_3(arg_0.e, _wgslsmith_mult_u32(0u, 55032u) ^ (_wgslsmith_mod_u32(22806u, 29473u) >> (arg_0.e.x % 32u)), -1732f), Struct_4(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.c.c)), arg_0.a.x, -795f), Struct_3(~vec3<u32>(141222u, u_input.b, u_input.b), u_input.b, _wgslsmith_f_op_f32(func_3())), Struct_3(arg_0.e, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 56582u, 4294967295u), vec4<u32>(0u, u_input.b, arg_0.e.x, u_input.c)), _wgslsmith_f_op_f32(func_3())), ~vec2<u32>(_wgslsmith_clamp_u32(69405u, u_input.c, 1u), 1u)), arg_0.c.a, Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) * arg_0.a))), _wgslsmith_add_i32(max(18200i, arg_0.d), arg_0.b), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(arg_0.c.a)), arg_0.c.a, !vec2<bool>(arg_0.c.b, true))), false, arg_0.c.a.x), ~(-2147483647i), vec3<u32>(firstTrailingBit(0u), u_input.b, u_input.c)));
    var_0 = Struct_5(arg_0.e.x, Struct_3(vec3<u32>(1u, _wgslsmith_add_u32(51545u, _wgslsmith_mod_u32(0u, 4294967295u)), var_0.e.e.x), u_input.c, 1297f), Struct_4(var_0.c.a, Struct_3(~min(vec3<u32>(4294967295u, 47398u, 61294u), vec3<u32>(arg_0.e.x, var_0.b.a.x, 1u)), 13772u, _wgslsmith_f_op_f32(f32(-1f) * -766f)), Struct_3(~(~var_0.c.c.a), 41389u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f))), arg_0.e.yy | ~abs(vec2<u32>(10285u, var_0.a))), _wgslsmith_f_op_vec2_f32(sign(var_0.e.a)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a - _wgslsmith_f_op_vec2_f32(floor(var_0.e.c.a))) * arg_0.c.a), -max(~arg_0.d, _wgslsmith_sub_i32(var_0.e.b, -61031i)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.e.c.a), _wgslsmith_dot_vec4_i32(vec4<i32>(29586i, 2147483647i, -74590i, arg_0.b), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)) < reverseBits(u_input.a.x), _wgslsmith_f_op_f32(func_3())), 2147483647i, vec3<u32>(min(abs(1u), _wgslsmith_dot_vec2_u32(var_0.e.e.zz, vec2<u32>(4294967295u, 61978u))), _wgslsmith_sub_u32(17378u, var_0.a), ~max(32602u, arg_0.e.x))));
    var_0 = Struct_5(select(arg_0.e.x, _wgslsmith_dot_vec3_u32((arg_0.e ^ vec3<u32>(25242u, u_input.b, 1u)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(44930u, arg_0.e.x, 71361u), arg_0.e) % vec3<u32>(32u)), vec3<u32>(3094u, var_0.a, select(10080u, 45759u, arg_0.c.b))), all(!select(vec2<bool>(true, var_0.e.c.b), vec2<bool>(true, true), vec2<bool>(false, var_0.e.c.b)))), var_0.b, Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -115f, 337f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -1561f, -853f)), var_0.e.c.b)), _wgslsmith_f_op_vec3_f32(-var_0.c.a)), Struct_3(var_0.c.b.a, ~abs(var_0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.c.a.x))), Struct_3(var_0.e.e, abs(~arg_0.e.x), _wgslsmith_f_op_f32(sign(697f))), vec2<u32>(var_0.e.e.x, 1u)), arg_0.a, arg_0);
    var_0 = Struct_5(~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c, _wgslsmith_add_u32(u_input.c, 18291u), u_input.b), vec3<u32>(u_input.c, _wgslsmith_div_u32(1u, u_input.b), ~var_0.c.c.b)), Struct_3(reverseBits(~var_0.c.b.a), ~reverseBits(var_0.b.a.x), _wgslsmith_f_op_f32(func_3())), var_0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.e.a.x)), 338f)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(sign(-319f)), all(vec4<bool>(false, arg_0.c.b, arg_0.c.b, arg_0.c.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(274f + 856f))), _wgslsmith_mult_i32(-1i, select(0i, abs(1i), any(vec4<bool>(var_0.e.c.b, var_0.e.c.b, var_0.e.c.b, var_0.e.c.b)))), arg_0.c, _wgslsmith_clamp_i32(-firstLeadingBit(var_0.e.b), ~var_0.e.b, _wgslsmith_mod_i32(2147483647i ^ var_0.e.d, 1i)), vec3<u32>(0u, 18322u, ~0u)));
    var var_1 = 1350i;
    return Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(237f, var_0.e.c.a.x, 368f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.c.a)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a.x, 511f, arg_0.c.c)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.c.a))) - vec3<f32>(_wgslsmith_f_op_f32(957f + arg_0.a.x), _wgslsmith_f_op_f32(exp2(var_0.c.a.x)), -461f))), Struct_3(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_0.e.e.x, var_0.c.b.b), 1u, var_0.e.e.x), arg_0.e), u_input.b, -1602f), var_0.b, vec2<u32>(select(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.e.x, 12632u, 40016u, arg_0.e.x), vec4<u32>(4294967295u, 1u, var_0.a, 68871u)), vec4<u32>(u_input.b, arg_0.e.x, var_0.c.d.x, 1u)), arg_0.e.x, any(select(vec3<bool>(var_0.e.c.b, arg_0.c.b, true), vec3<bool>(false, true, var_0.e.c.b), true))), 4294967295u));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: f32, arg_3: Struct_4) -> bool {
    let var_0 = Struct_5(arg_3.d.x, func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.a.yx)), _wgslsmith_sub_i32(u_input.a.x, -2147483647i) & u_input.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-190f, arg_0.b.c) * vec2<f32>(arg_1, 987f)), any(vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(abs(1176f))), u_input.a.x, ~(~arg_0.b.a))).c, func_2(Struct_2(_wgslsmith_div_vec2_f32(arg_0.a.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1315f, arg_3.a.x) - vec2<f32>(244f, 639f))), _wgslsmith_dot_vec2_i32(-u_input.a, ~vec2<i32>(u_input.a.x, 2147483647i)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.x, -141f)), true, -242f), ~(~1i), func_2(Struct_2(arg_0.a.zx, u_input.a.x, Struct_1(arg_3.a.xx, false, arg_0.c.c), u_input.a.x, arg_3.c.a)).b.a)), _wgslsmith_f_op_vec2_f32(min(arg_3.a.yz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1697f) + _wgslsmith_div_vec2_f32(arg_3.a.xy, vec2<f32>(arg_3.a.x, arg_3.b.c))), arg_0.a.yz))), Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-758f, -1000f)) + arg_3.a.yx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1769f, arg_3.a.x)) - _wgslsmith_f_op_vec2_f32(select(arg_3.a.yz, vec2<f32>(910f, arg_1), vec2<bool>(false, false)))), false)), _wgslsmith_dot_vec3_i32(min(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.a.x), vec3<i32>(-1i, u_input.a.x, u_input.a.x)), ~vec3<i32>(2147483647i, 0i, 53523i)), vec3<i32>(1i, 1i, 1i)), Struct_1(arg_3.a.xx, true, -973f), ~(~_wgslsmith_div_i32(-8546i, u_input.a.x)), firstTrailingBit(_wgslsmith_add_vec3_u32(arg_3.c.a ^ vec3<u32>(u_input.c, u_input.b, 62870u), vec3<u32>(66912u, 4294967295u, arg_0.b.b) << (vec3<u32>(arg_0.d.x, 62918u, 14843u) % vec3<u32>(32u))))));
    var var_1 = func_2(var_0.e).b;
    let var_2 = Struct_2(var_0.c.a.zy, ~u_input.a.x, var_0.e.c, _wgslsmith_mult_i32(42840i, _wgslsmith_clamp_i32(-26851i, _wgslsmith_clamp_i32(1i, -var_0.e.d, countOneBits(var_0.e.d)), countOneBits(1i))), vec3<u32>(min(~_wgslsmith_mod_u32(var_0.a, arg_3.d.x), min(arg_0.c.b ^ var_1.b, ~4294967295u)), ~24625u, 21313u));
    var_1 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_div_f32(arg_1, -304f)))), ~(~firstLeadingBit(u_input.a.x)), Struct_1(vec2<f32>(1213f, _wgslsmith_f_op_f32(f32(-1f) * -1399f)), (var_0.e.e.x <= var_1.a.x) | var_2.c.b, var_1.c), u_input.a.x, ~(~vec3<u32>(4294967295u, 28983u, 0u) >> ((var_2.e << (var_1.a % vec3<u32>(32u))) % vec3<u32>(32u))))).c;
    let var_3 = vec4<u32>(_wgslsmith_clamp_u32(var_1.b, u_input.c, reverseBits(~(~var_2.e.x))), ~u_input.b, u_input.b ^ var_2.e.x, var_1.b);
    return true;
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(789f, arg_0.b.c), 1000f <= arg_0.a.x)), 1000f)), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))), arg_0.c.c);
    var var_1 = vec4<bool>(any(vec4<bool>(var_0.b, -u_input.a.x >= _wgslsmith_clamp_i32(-1i, 7324i, 1i), all(vec4<bool>(var_0.b, var_0.b, false, var_0.b)), true & !var_0.b)), false, (_wgslsmith_mod_i32(_wgslsmith_add_i32(-13678i, 1i), -2147483647i) & _wgslsmith_div_i32(u_input.a.x, u_input.a.x)) <= (_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 5070i) | vec3<i32>(u_input.a.x, 48661i, -2650i), -vec3<i32>(u_input.a.x, u_input.a.x, 1i)) | 2147483647i), !any(select(!vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, var_0.b), false), select(vec2<bool>(var_0.b, false), vec2<bool>(false, var_0.b), true))));
    var_1 = !vec4<bool>(_wgslsmith_f_op_f32(1409f * _wgslsmith_f_op_f32(floor(var_0.c))) < 161f, _wgslsmith_dot_vec2_i32(-u_input.a, min(u_input.a, u_input.a)) >= _wgslsmith_add_i32(-1i, u_input.a.x), !func_4(arg_0, _wgslsmith_f_op_f32(308f + 845f), 1720f, func_2(Struct_2(vec2<f32>(arg_0.c.c, arg_0.c.c), u_input.a.x, Struct_1(arg_0.a.yy, false, 2094f), -1i, vec3<u32>(90833u, arg_0.b.b, arg_1)))), select(var_0.b, false, (u_input.a.x ^ u_input.a.x) >= ~u_input.a.x));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a.zy), any(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_1.x, var_1.x), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x))));
    var_0 = Struct_1(arg_0.a.zz, var_1.x, 131f);
    return _wgslsmith_f_op_f32(trunc(var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(605f + -2020f), _wgslsmith_f_op_f32(max(-898f, 196f)), _wgslsmith_f_op_f32(f32(-1f) * -573f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(894f, -1324f, -2250f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(420f * 167f), _wgslsmith_f_op_f32(func_1(Struct_4(vec3<f32>(-998f, -1000f, -1081f), Struct_3(vec3<u32>(60703u, u_input.b, u_input.c), 30160u, -1266f), Struct_3(vec3<u32>(12415u, u_input.b, u_input.b), 7055u, 220f), vec2<u32>(4294967295u, 11237u)), 4294967295u)))) - vec3<f32>(1f, 1f, 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(1u, u_input.b | ~u_input.b) ^ u_input.b);
}

