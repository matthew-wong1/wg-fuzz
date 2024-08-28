struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: Struct_3,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    var var_0 = u_input.b;
    var var_1 = !vec4<bool>(!(any(vec3<bool>(false, false, false)) & true), !(!any(vec2<bool>(true, false))), (true || any(vec3<bool>(true, false, false))) && ((10714i >> (u_input.b % 32u)) < _wgslsmith_div_i32(61942i, 7180i)), all(vec3<bool>(true, true, true)));
    var_1 = !(!(!select(select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), true), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), true)));
    var var_2 = Struct_3(Struct_2(vec4<f32>(-1293f, -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-234f, -797f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1333f - 813f), _wgslsmith_f_op_f32(step(1124f, 475f))))), vec4<bool>(true, all(!vec4<bool>(true, false, var_1.x, var_1.x)), var_1.x, var_1.x), Struct_1(u_input.a, -587f, vec2<f32>(_wgslsmith_f_op_f32(546f * 137f), -820f)), Struct_1(max(i32(-1i) * -34488i, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1453f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-735f, -732f)))), _wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(u_input.a, u_input.c.x))), select(vec2<bool>(!(u_input.b >= u_input.b), !var_1.x), vec2<bool>(true == (var_1.x && false), false), !(!select(var_1.yx, vec2<bool>(true, var_1.x), var_1.yx))));
    var_1 = var_2.a.b;
    return -countOneBits(_wgslsmith_add_i32(-15734i, ~select(u_input.a, u_input.a, var_1.x)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool) -> vec4<bool> {
    let var_0 = vec4<i32>(max(func_3(), u_input.c.x) >> ((_wgslsmith_mult_u32(~106631u, u_input.b) << ((1u | _wgslsmith_sub_u32(u_input.b, 84328u)) % 32u)) % 32u), u_input.a, _wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(40806i, 38339i), vec2<i32>(2147483647i, arg_1))), countOneBits(vec2<i32>(2147483647i, arg_1)))), arg_1);
    var var_1 = Struct_3(Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(350f, 256f, 1811f, -346f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, 645f, -1118f, 858f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-844f, 1059f, -109f, -856f)))), vec4<bool>(all(vec4<bool>(false, arg_2, false, false)), !(!arg_2), firstTrailingBit(u_input.b) == reverseBits(75427u), arg_2), Struct_1(u_input.a, 527f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(176f, 286f)))))), Struct_1(~_wgslsmith_clamp_i32(0i, u_input.a, arg_1), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * -1000f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(778f, -1953f)))), _wgslsmith_mult_vec2_i32(var_0.xw, _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(23966i, arg_1))))), select(!vec2<bool>(!arg_2, arg_2 || false), !select(!vec2<bool>(arg_2, arg_2), select(vec2<bool>(arg_0, arg_2), vec2<bool>(true, false), true), vec2<bool>(false, arg_0)), select(arg_0, arg_0, true)));
    var var_2 = ~(((~var_0.x >> (u_input.b % 32u)) ^ 2147483647i) >> (~_wgslsmith_clamp_u32(4294967295u, max(0u, u_input.b), 1u) % 32u));
    var var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.a.a.xz, vec2<f32>(var_1.a.c.c.x, var_1.a.c.b), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.c.c)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + var_1.a.a.x), _wgslsmith_f_op_f32(-204f - -928f), any(var_1.a.b.xwx))) * _wgslsmith_div_f32(var_1.a.d.c.x, 1060f)), _wgslsmith_f_op_f32(-255f - _wgslsmith_f_op_f32(-var_1.a.c.b))));
    return !vec4<bool>(arg_2, false, select(0u >= ~u_input.b, false, false), var_1.b.x);
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(step(-419f, arg_0));
    var var_1 = select(select(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), false), vec3<bool>(!(-1329f > var_0), true, true), vec3<bool>(any(func_2(true, 16725i, true)), any(vec3<bool>(false, false, true)), true)), select(vec3<bool>(true, false, true), vec3<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), true | (1u == u_input.b)), vec3<bool>(true, true, true)), any(!select(vec3<bool>(true, true, true), func_2(false, u_input.c.x, true).www, true)));
    var_1 = func_2(!var_1.x, _wgslsmith_dot_vec2_i32(u_input.c, firstTrailingBit(u_input.c)), all(select(func_2(2147483647i == u_input.a, u_input.c.x & -32150i, true).xx, !vec2<bool>(var_1.x, var_1.x), func_2(true, _wgslsmith_add_i32(u_input.a, 40232i), u_input.a == u_input.c.x).x))).wyx;
    return Struct_4(!(true == var_1.x), vec4<u32>(select(~u_input.b << (37818u % 32u), u_input.b, false), ~u_input.b, 0u, u_input.b), Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(-1118f, arg_0)), var_0, arg_0, _wgslsmith_f_op_f32(-arg_0)), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, false, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), Struct_1(u_input.c.x, _wgslsmith_f_op_f32(-844f + arg_0), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, -1173f)))), Struct_1(_wgslsmith_add_i32(u_input.c.x, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -737f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1243f))), vec2<i32>(-16114i, abs(u_input.a))), vec2<bool>(true, all(vec3<bool>(var_1.x, var_1.x, var_1.x)) | true)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, arg_0, arg_0))))), func_2(all(vec4<bool>(var_1.x, true, var_1.x, var_1.x)) & true, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.a), vec3<i32>(u_input.a, u_input.a, -1i) | vec3<i32>(31918i, 15766i, u_input.a)), var_1.x), Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(-25103i, -28584i, u_input.a, 1i), vec4<i32>(18525i, u_input.a, u_input.c.x, -2147483647i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(668f, arg_0)))), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-25479i, -56517i), -1411i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0))), u_input.c), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(718f, var_0, -883f, -1335f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, 318f, var_0, 657f)))), !select(vec4<bool>(false, false, false, false), vec4<bool>(var_1.x, true, var_1.x, var_1.x), false), Struct_1(_wgslsmith_mod_i32(u_input.a, 1i), var_0, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, var_0), vec2<f32>(var_0, arg_0)))), Struct_1(i32(-1i) * -1i, -1210f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), vec2<i32>(-2147483647i, u_input.c.x)), var_1.yx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1072f) - -817f)));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(74548u, firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, u_input.b | u_input.b, 1u))), _wgslsmith_div_u32(abs(_wgslsmith_sub_u32(24898u, ~var_0.b.x)), ~abs(_wgslsmith_clamp_u32(var_0.b.x, u_input.b, var_0.b.x))));
    var_1 = func_1(-122f).b.x;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.e.a.a.yzy), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.e.a.a.xwx))));
    var var_3 = func_1(1121f).d.c;
    let var_4 = var_0.e.a;
    var var_5 = vec4<f32>(var_0.c.a.a.x, 1185f, var_3.c.x, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -6905i, var_0.c.a.d.a, -6096i, var_0.c.a.d.a), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_4.c.a, 16356i, 27087i), max(vec4<i32>(0i, var_0.c.a.e.x, -1i, u_input.a), vec4<i32>(var_3.a, 1130i, 0i, var_3.a)))));
}

