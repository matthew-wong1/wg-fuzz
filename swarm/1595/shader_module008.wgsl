struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: f32 = -1082f;

var<private> global2: array<vec4<u32>, 23>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_div_vec2_i32(~(-vec2<i32>(42170i, _wgslsmith_mult_i32(17403i, u_input.a.x))), -max(-vec2<i32>(u_input.a.x, -16798i), vec2<i32>(-1345i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yx))));
    let var_1 = arg_0.e;
    var_0 = ~vec2<i32>(min(16940i, arg_2.c & 42247i), arg_2.c) & vec2<i32>(-33409i, ~u_input.a.x & -var_0.x);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_2.b.x)), _wgslsmith_f_op_f32(min(arg_0.e, -332f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(808f, arg_2.b.x, arg_0.b.x)) - -979f)))));
    var_0 = vec2<i32>(-60786i, _wgslsmith_add_i32(i32(-1i) * -var_0.x, 8037i));
    return arg_2.b.x;
}

fn func_2(arg_0: i32) -> vec3<u32> {
    var var_0 = Struct_3(Struct_2(~(i32(-1i) * -u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1553f, -1508f, 557f)), vec3<f32>(-706f, 218f, -1290f), vec3<bool>(true, false, false)))), -u_input.a.x, global0[_wgslsmith_index_u32(1u, 30u)]), Struct_2(-(~max(arg_0, u_input.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-273f, 1130f, -1600f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-989f, -728f, -1260f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-335f, 275f, -878f)))), arg_0, Struct_1(vec3<u32>(u_input.c << (u_input.b.x % 32u), firstTrailingBit(u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, 6262u)), vec2<bool>(any(vec3<bool>(false, true, true)), all(vec3<bool>(true, false, true))), ~vec3<u32>(u_input.c, 4294967295u, 23255u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, 0u), vec3<u32>(28103u, 0u, 41619u), vec3<u32>(4294967295u, u_input.b.x, 27795u)), ~(~u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2217f - 248f)))), ~50809u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(select(vec3<u32>(u_input.b.x, 1u, 4294967295u), vec3<u32>(1u, 0u, 8599u), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, u_input.c)), vec2<u32>(u_input.b.x, u_input.b.x), -932f), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), Struct_2(i32(-1i) * -1i, _wgslsmith_div_vec3_f32(vec3<f32>(1545f, -762f, 1102f), vec3<f32>(-549f, -2303f, 1000f)), -2147483647i, Struct_1(vec3<u32>(4294967295u, 4294967295u, 72795u), vec2<bool>(true, false), vec3<u32>(4294967295u, u_input.c, u_input.b.x), u_input.b, 119f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(~u_input.b.x, 30u)], vec3<bool>(false, true, true), Struct_2(25416i, vec3<f32>(-1880f, 740f, -317f), arg_0, Struct_1(vec3<u32>(4294967295u, 93086u, u_input.c), vec2<bool>(true, true), vec3<u32>(u_input.b.x, 4294967295u, u_input.c), u_input.b, -143f)))))), 2147483647i);
    global1 = 140f;
    var_0 = Struct_3(Struct_2(_wgslsmith_mult_i32(u_input.a.x, 24981i) | -(~(-17030i)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1600f * -1214f), var_0.d, _wgslsmith_f_op_f32(-var_0.a.d.e)))), -9291i, var_0.b.d), Struct_2(1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.a.b, vec3<f32>(var_0.a.d.e, var_0.b.b.x, -1999f)))), -1i, Struct_1(var_0.a.d.c, select(select(var_0.a.d.b, vec2<bool>(false, true), var_0.a.d.b), vec2<bool>(true, var_0.b.d.b.x), false), _wgslsmith_sub_vec3_u32(vec3<u32>(58048u, u_input.c, var_0.b.d.a.x), vec3<u32>(var_0.a.d.a.x, 4294967295u, u_input.b.x)) | countOneBits(var_0.a.d.c), ~_wgslsmith_mult_vec2_u32(var_0.a.d.c.xx, vec2<u32>(var_0.c, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.d.e, var_0.a.d.e)) + _wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(55117u, u_input.b.x, 4294967295u), var_0.b.d.b, var_0.b.d.a, vec2<u32>(2604u, 4294967295u), 231f), vec3<bool>(false, var_0.a.d.b.x, true), Struct_2(41463i, var_0.b.b, arg_0, Struct_1(vec3<u32>(u_input.b.x, 1u, 1u), vec2<bool>(var_0.b.d.b.x, var_0.b.d.b.x), vec3<u32>(0u, var_0.a.d.a.x, 25851u), vec2<u32>(var_0.c, u_input.c), var_0.a.b.x))))))), countOneBits(abs(_wgslsmith_div_u32(var_0.a.d.a.x, 4294967295u))) & abs(_wgslsmith_sub_u32(select(1u, u_input.c, true), u_input.b.x)), var_0.a.d.e, 9695i | abs(-2195i & abs(arg_0)));
    global1 = _wgslsmith_f_op_f32(select(-1064f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, -2012f)), 1f, !(u_input.a.x <= -55121i))), _wgslsmith_f_op_f32(-605f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.d.e)) - _wgslsmith_f_op_f32(-var_0.b.d.e))), !select(true, !var_0.a.d.b.x, all(vec3<bool>(var_0.a.d.b.x, true, true))))), all(vec4<bool>(true, var_0.b.d.b.x, !var_0.a.d.b.x, false)) | any(vec4<bool>(all(vec4<bool>(var_0.a.d.b.x, var_0.b.d.b.x, false, var_0.a.d.b.x)), any(vec2<bool>(var_0.b.d.b.x, var_0.a.d.b.x)), true, !var_0.b.d.b.x))));
    global0 = array<Struct_1, 30>();
    return ~(var_0.a.d.a | var_0.a.d.c);
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_5(Struct_1(~vec3<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), u_input.c, countOneBits(u_input.c)), vec2<bool>(true, true), select(func_2(u_input.a.x), vec3<u32>(u_input.b.x << (u_input.c % 32u), ~u_input.b.x, u_input.c), true), firstTrailingBit(abs(vec2<u32>(u_input.c, u_input.c))), -308f), Struct_2(u_input.a.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(677f, -1802f, -114f) - vec3<f32>(109f, -680f, 371f))))), 1i, global0[_wgslsmith_index_u32(0u, 30u)]));
    global2 = array<vec4<u32>, 23>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(695f)))), -389f, var_0.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(var_0.b.d.c.x, 30u)], vec3<bool>(var_0.b.d.b.x, var_0.a.b.x, var_0.a.b.x), Struct_2(-2147483647i, vec3<f32>(var_0.a.e, var_0.b.d.e, var_0.a.e), 0i, Struct_1(vec3<u32>(u_input.b.x, 35217u, u_input.c), vec2<bool>(var_0.b.d.b.x, var_0.b.d.b.x), var_0.b.d.c, u_input.b, var_0.a.e)))) * -286f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.e, 492f, var_0.b.d.e, var_0.b.b.x)))) - vec4<f32>(var_0.a.e, 1819f, _wgslsmith_div_f32(-1630f, var_0.a.e), _wgslsmith_f_op_f32(floor(-1058f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, var_0.a.e, 1170f)))));
    let var_2 = var_0.b.d;
    var_0 = Struct_5(Struct_1(~min(var_0.b.d.c, vec3<u32>(20658u, 77525u, var_0.a.a.x)) >> (~abs(var_0.a.a) % vec3<u32>(32u)), vec2<bool>(true, true), var_2.a, ~vec2<u32>(var_0.a.d.x ^ var_2.a.x, 0u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1470f + -1622f)))))), Struct_2(~26070i, var_0.b.b, u_input.a.x, Struct_1(vec3<u32>(1u << (1u % 32u), var_0.b.d.d.x ^ 0u, var_0.a.c.x), !select(vec2<bool>(true, var_0.b.d.b.x), var_0.a.b, var_0.a.b.x), reverseBits(var_2.a), firstTrailingBit(var_2.d), _wgslsmith_f_op_f32(-var_1.x))));
    return Struct_5(Struct_1(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(2914u, 23u)], global2[_wgslsmith_index_u32(var_0.b.d.d.x, 23u)]), var_2.a.x), _wgslsmith_mod_u32(u_input.b.x, ~0u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(57669u, u_input.b.x, var_0.a.c.x), min(u_input.b.x, 119844u))), vec2<bool>(var_2.b.x, false), ~vec3<u32>(1u, _wgslsmith_dot_vec3_u32(var_0.b.d.c, vec3<u32>(u_input.c, 1u, var_0.a.d.x)), ~u_input.c), ~_wgslsmith_add_vec2_u32(u_input.b, u_input.b), var_0.a.e), var_0.b);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_1) -> Struct_1 {
    global2 = array<vec4<u32>, 23>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.e), 507f))), _wgslsmith_f_op_f32(func_3(arg_2, vec3<bool>(true && all(vec3<bool>(arg_0.b.d.b.x, arg_2.b.x, true)), _wgslsmith_f_op_f32(abs(arg_1.b.e)) != func_1().b.d.e, true), Struct_2(~u_input.a.x >> (11885u % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.b.x, -2015f, arg_1.c.e) * _wgslsmith_f_op_vec3_f32(-arg_0.b.b)), arg_0.b.c, func_1().a))), _wgslsmith_f_op_f32(arg_2.e - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(460f * 1854f) - arg_0.a.e)))));
    let var_1 = arg_1;
    let var_2 = func_1().a;
    global0 = array<Struct_1, 30>();
    return Struct_1(func_1().a.a, var_2.b, ~arg_2.c, ~(~(vec2<u32>(arg_0.b.d.c.x, 70437u) ^ vec2<u32>(u_input.c, arg_2.a.x))) & max(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, arg_2.d.x), var_1.b.d), ~(vec2<u32>(64593u, 18477u) & arg_2.a.zx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(floor(439f)))))) + var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_4(func_1(), Struct_4(any(vec2<bool>(false, true)), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(48205u, 4294967295u, u_input.b.x), vec3<u32>(1u, 102875u, u_input.c), vec3<u32>(22163u, 42388u, u_input.c)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), ~vec3<u32>(u_input.c, 16066u, 4294967295u), firstLeadingBit(u_input.b), _wgslsmith_f_op_f32(select(1146f, -771f, false))), Struct_1(firstLeadingBit(vec3<u32>(u_input.c, 46161u, u_input.c)), vec2<bool>(true, false), ~vec3<u32>(u_input.c, 1u, u_input.c), vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1545f))), Struct_1(_wgslsmith_add_vec3_u32(abs(vec3<u32>(25039u, u_input.c, 4294967295u)), min(vec3<u32>(u_input.b.x, 52927u, 4294967295u), vec3<u32>(u_input.b.x, 14482u, u_input.b.x))), vec2<bool>(true, true), firstLeadingBit(vec3<u32>(53993u, 4294967295u, u_input.c)), ~u_input.b ^ vec2<u32>(u_input.c, u_input.c), _wgslsmith_f_op_f32(max(-223f, _wgslsmith_div_f32(374f, 151f))))), Struct_2(u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -642f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -679f) * -1000f), _wgslsmith_f_op_f32(round(func_4(Struct_5(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], Struct_2(u_input.a.x, vec3<f32>(1162f, -1000f, -342f), u_input.a.x, Struct_1(vec3<u32>(u_input.b.x, 59935u, u_input.c), vec2<bool>(true, true), vec3<u32>(4294967295u, u_input.b.x, u_input.c), vec2<u32>(u_input.b.x, u_input.b.x), -604f))), Struct_4(false, Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.c), vec2<bool>(false, false), vec3<u32>(14359u, 0u, u_input.c), vec2<u32>(u_input.c, u_input.c), 484f), global0[_wgslsmith_index_u32(2762u, 30u)]), global0[_wgslsmith_index_u32(1u, 30u)]).e))), u_input.a.x, func_4(func_1(), Struct_4(false, Struct_1(vec3<u32>(0u, 47657u, u_input.c), vec2<bool>(false, true), vec3<u32>(26168u, u_input.b.x, u_input.b.x), u_input.b, 593f), Struct_1(vec3<u32>(0u, 1u, u_input.b.x), vec2<bool>(true, true), vec3<u32>(u_input.b.x, 4294967295u, 4294967295u), u_input.b, -137f)), Struct_1(vec3<u32>(u_input.b.x, u_input.c, 0u), vec2<bool>(true, true), vec3<u32>(1u, 7857u, u_input.b.x), u_input.b, _wgslsmith_f_op_f32(-784f - -106f)))));
    var var_1 = _wgslsmith_div_i32(~(var_0.b.c ^ ~_wgslsmith_sub_i32(-962i, -39933i)), 0i);
    var_0 = Struct_5(global0[_wgslsmith_index_u32((func_4(func_1(), Struct_4(false, var_0.b.d, Struct_1(var_0.b.d.a, var_0.a.b, vec3<u32>(73976u, u_input.c, var_0.b.d.a.x), u_input.b, var_0.b.d.e)), var_0.b.d).c.x >> (18573u % 32u)) << (reverseBits(var_0.b.d.d.x << (1u % 32u)) % 32u), 30u)], Struct_2(-u_input.a.x, vec3<f32>(func_4(func_1(), Struct_4(false, var_0.b.d, var_0.b.d), Struct_1(vec3<u32>(var_0.b.d.d.x, u_input.c, var_0.b.d.a.x), var_0.a.b, var_0.a.a, var_0.a.d, var_0.a.e)).e, _wgslsmith_div_f32(_wgslsmith_div_f32(-667f, var_0.a.e), _wgslsmith_div_f32(-198f, var_0.b.d.e)), var_0.a.e), -1i, var_0.a));
    let var_2 = select(var_0.a.e < 637f, true, !(true | func_4(Struct_5(Struct_1(vec3<u32>(4294967295u, 0u, var_0.b.d.a.x), var_0.b.d.b, var_0.b.d.a, var_0.b.d.d, 755f), var_0.b), Struct_4(false, var_0.b.d, Struct_1(var_0.b.d.c, vec2<bool>(var_0.b.d.b.x, true), var_0.a.c, vec2<u32>(1u, 35833u), var_0.a.e)), Struct_1(var_0.a.c, vec2<bool>(false, var_0.a.b.x), var_0.a.c, u_input.b, -451f)).b.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.x, var_0.b.b.x, var_0.b.d.e)), _wgslsmith_f_op_vec3_f32(sign(var_0.b.b)))) - vec3<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(-2030f * _wgslsmith_f_op_f32(trunc(-109f))), _wgslsmith_f_op_f32(-var_0.a.e))));
    let var_4 = vec4<bool>(true & var_0.b.d.b.x, false, func_4(Struct_5(func_4(func_1(), Struct_4(var_2, Struct_1(vec3<u32>(4294967295u, 11767u, 0u), var_0.b.d.b, var_0.a.c, vec2<u32>(var_0.b.d.c.x, 22433u), var_3.x), global0[_wgslsmith_index_u32(0u, 30u)]), global0[_wgslsmith_index_u32(func_2(var_0.b.a).x, 30u)]), func_1().b), Struct_4(all(select(vec3<bool>(false, true, var_2), vec3<bool>(true, true, var_2), var_2)), func_1().b.d, func_1().b.d), global0[_wgslsmith_index_u32(u_input.c, 30u)]).b.x, func_1().a.b.x);
    global2 = array<vec4<u32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b, var_0.b.b.x, var_0.b.b);
}

