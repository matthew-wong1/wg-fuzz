struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(1535f, -623f, -1001f, -738f), vec4<f32>(1000f, 1728f, -2064f, -991f), vec4<f32>(426f, 336f, 1247f, 556f), vec4<f32>(2033f, -508f, 926f, -1566f), vec4<f32>(-994f, 693f, -563f, 289f), vec4<f32>(496f, 406f, 746f, 1000f), vec4<f32>(243f, 1010f, -823f, 970f), vec4<f32>(797f, 2015f, -728f, 1129f), vec4<f32>(1266f, -1748f, -1340f, 922f), vec4<f32>(863f, 212f, -1570f, 835f), vec4<f32>(-1812f, 1753f, -1000f, -1966f));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = abs(select(~(arg_0.e & ~vec2<u32>(arg_1.e.x, 18765u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e.x, 1u, 42578u, arg_0.e.x), vec4<u32>(1u, 105864u, 21358u, arg_1.e.x)), arg_1.e.x) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), arg_0.b.x));
    let var_1 = vec3<u32>(~min(arg_0.e.x, 31572u) | 1u, _wgslsmith_div_u32(arg_1.e.x, ~(~44232u)) & abs(var_0.x), abs(_wgslsmith_dot_vec2_u32(~(arg_1.e << (vec2<u32>(1u, arg_1.e.x) % vec2<u32>(32u))), ~(vec2<u32>(1u, arg_0.e.x) ^ vec2<u32>(4294967295u, arg_1.e.x)))));
    var var_2 = -_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.a, ~24864i), u_input.b.yy);
    let var_3 = arg_0;
    var var_4 = Struct_1(_wgslsmith_mult_i32(arg_0.a, ~arg_1.a), arg_1.b, _wgslsmith_f_op_vec4_f32(-var_3.c), vec4<f32>(101f, arg_1.d.x, var_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x + 1062f))), vec2<u32>(60666u, 0u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_4.d)) * var_3.d))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: i32) -> vec4<f32> {
    let var_0 = !any(!(!(!vec2<bool>(true, arg_0.b.x))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -632f))) * -127f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.d.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1691f - arg_0.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1077f, arg_0.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -328f)))));
    var var_2 = arg_0;
    let var_3 = Struct_1(max(arg_3 >> (1u % 32u), 2147483647i) ^ -1i, vec4<bool>(true, var_0, any(vec3<bool>(false, arg_2, arg_0.b.x)) || true, false), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(49929u, 11u)]), arg_0.d, vec2<u32>(17674u, ~1u));
    var var_4 = Struct_1(26539i, var_3.b, _wgslsmith_f_op_vec4_f32(ceil(var_3.d)), _wgslsmith_f_op_vec4_f32(func_3(arg_0, Struct_1(countOneBits(max(-13994i, arg_0.a)), !vec4<bool>(var_0, arg_2, arg_2, var_0), _wgslsmith_f_op_vec4_f32(sign(var_3.d)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(var_2.e.x, 11u)]), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-198f, var_2.c.x, arg_1, arg_1))))), _wgslsmith_mult_vec2_u32(var_3.e, arg_0.e)))), vec2<u32>(var_3.e.x, ~_wgslsmith_mult_u32(reverseBits(var_3.e.x), 0u)));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(var_4.d, var_4.d, any(vec4<bool>(arg_2, var_3.b.x, false, var_0)) & all(var_4.b.xw)))))));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = Struct_1(-831i, !vec4<bool>(!any(arg_0.b.xy), !var_0.b.x, true && var_0.b.x, select(var_0.e.x != arg_0.e.x, false, true)), vec4<f32>(554f, 939f, -666f, _wgslsmith_f_op_f32(select(-1672f, -609f, !var_0.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_0, arg_0)), _wgslsmith_div_vec4_f32(var_0.c, var_0.d))), ~abs(arg_0.e));
    var_0 = arg_0;
    let var_2 = reverseBits(vec2<u32>(~10619u, 1u));
    return var_1.b;
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = Struct_1(~_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, u_input.a), ~abs(u_input.b.zx)), func_4(Struct_1(-(u_input.a ^ u_input.a), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, false, true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(arg_0.x, 11u)], global0[_wgslsmith_index_u32(arg_0.x, 11u)], vec4<bool>(false, true, true, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(u_input.b.x, vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(17356u, 11u)], global0[_wgslsmith_index_u32(57071u, 11u)], vec2<u32>(arg_0.x, arg_0.x)), 845f, true, u_input.a))), vec2<u32>(~1909u, 4294967295u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(129f)), _wgslsmith_f_op_f32(f32(-1f) * -1004f), _wgslsmith_f_op_f32(floor(-231f)), _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(15352i, vec4<bool>(true, true, true, false), vec4<f32>(-115f, 1000f, 396f, -370f), vec4<f32>(1000f, 577f, 1420f, 827f), arg_0.zw), Struct_1(-31869i, vec4<bool>(false, true, true, false), vec4<f32>(549f, -811f, 112f, 650f), global0[_wgslsmith_index_u32(arg_0.x, 11u)], vec2<u32>(arg_0.x, 30222u)))), vec4<f32>(_wgslsmith_f_op_f32(173f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -646f), _wgslsmith_f_op_f32(-1627f - 1555f), -779f), all(vec2<bool>(true, true))))), global0[_wgslsmith_index_u32(~min(arg_0.x >> (34903u % 32u), arg_0.x) ^ arg_0.x, 11u)], _wgslsmith_add_vec2_u32(abs(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), arg_0.zz)), vec2<u32>((31476u ^ arg_0.x) ^ 1u, firstLeadingBit(arg_0.x) | abs(0u))));
    var_0 = Struct_1(-var_0.a, select(func_4(Struct_1(select(var_0.a, var_0.a, false), var_0.b, var_0.d, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.d.x, 817f, -1148f, var_0.d.x))), ~var_0.e)), !vec4<bool>(true, false, true && var_0.b.x, var_0.b.x), !var_0.b.x), vec4<f32>(-1937f, -1202f, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c.x, 1792f)) + _wgslsmith_f_op_f32(f32(-1f) * -108f)), _wgslsmith_f_op_f32(381f - _wgslsmith_f_op_f32(f32(-1f) * -1594f)), false))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.c.x, -1269f)), var_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c.x + var_0.d.x), 1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -417f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d.x, var_0.c.x))) + _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-906f, -1659f)))), ~var_0.e);
    global0 = array<vec4<f32>, 11>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.xxz));
    global0 = array<vec4<f32>, 11>();
    return _wgslsmith_f_op_f32(-var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 11>();
    var var_0 = Struct_1(_wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(min(_wgslsmith_div_i32(u_input.b.x, -2147483647i), 1i), -16165i)), vec4<bool>(!all(vec3<bool>(true, false, true)), true, any(vec3<bool>(true, true, true)), !(all(vec3<bool>(true, true, false)) && true)), global0[_wgslsmith_index_u32(abs(0u), 11u)], vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -538f) * _wgslsmith_f_op_f32(f32(-1f) * -967f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(2864u, 87009u, 1u, 27952u))), _wgslsmith_f_op_f32(select(-655f, 479f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-740f + -853f)))), -592f, 1000f), ~vec2<u32>(1u, 1u));
    var_0 = Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(280f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(436f, -672f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(113f, -826f)) * var_0.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.d.x, var_0.c.x, true)), var_0.d.x))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(~(~u_input.b.x), var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, var_0.c.x, var_0.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d * vec4<f32>(-667f, 509f, var_0.c.x, var_0.d.x))), _wgslsmith_div_vec2_u32(var_0.e, var_0.e)), Struct_1(_wgslsmith_sub_i32(-26030i, var_0.a), var_0.b, vec4<f32>(var_0.c.x, var_0.c.x, var_0.d.x, _wgslsmith_f_op_f32(-1000f - 1126f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -767f, var_0.d.x, var_0.c.x)))), var_0.e))), ~(_wgslsmith_sub_vec2_u32(select(vec2<u32>(0u, var_0.e.x), var_0.e, var_0.b.zx), ~vec2<u32>(11284u, var_0.e.x)) ^ _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(34215u, var_0.e.x), vec2<u32>(var_0.e.x, var_0.e.x)), select(var_0.e, var_0.e, vec2<bool>(true, false)))));
    let var_1 = Struct_1(reverseBits(min(firstTrailingBit(-1i), _wgslsmith_add_i32(select(79503i, var_0.a, true), _wgslsmith_clamp_i32(u_input.b.x, -23913i, var_0.a)))), vec4<bool>(!(var_0.b.x | var_0.b.x), all(vec3<bool>(false, true, true)), true, select(all(!vec2<bool>(var_0.b.x, var_0.b.x)), true, -1i == _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 63185i, 75875i, -1i), vec4<i32>(u_input.b.x, -1i, 1i, var_0.a)))), vec4<f32>(var_0.c.x, var_0.d.x, -980f, var_0.d.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, var_0.c.x, _wgslsmith_f_op_vec4_f32(func_2(Struct_1(u_input.a, vec4<bool>(var_0.b.x, false, false, var_0.b.x), global0[_wgslsmith_index_u32(1u, 11u)], vec4<f32>(var_0.d.x, 1000f, var_0.d.x, -122f), var_0.e), _wgslsmith_f_op_f32(f32(-1f) * -881f), true, u_input.a << (var_0.e.x % 32u))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), vec4<f32>(var_0.c.x, -347f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(632f * -1037f)), 1f), !select(!vec4<bool>(false, var_0.b.x, true, var_0.b.x), var_0.b, !var_0.b))), ~var_0.e);
    let var_2 = true;
    var var_3 = _wgslsmith_add_vec2_i32(u_input.b.zz, u_input.b.yz);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(u_input.b.x), 12313i));
}

