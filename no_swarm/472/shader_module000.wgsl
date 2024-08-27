struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
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

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(-10063i, vec3<f32>(-234f, 208f, -345f), vec3<bool>(true, false, false), vec4<i32>(0i, 2147483647i, 26183i, 50260i), 1u), Struct_3(-19430i, vec3<f32>(-146f, -1133f, -902f), vec3<bool>(false, true, false), vec4<i32>(i32(-2147483648), -11521i, -15014i, 0i), 97181u), Struct_3(-58512i, vec3<f32>(1270f, -849f, -691f), vec3<bool>(true, false, true), vec4<i32>(20656i, -67287i, -10627i, 1i), 30027u), Struct_3(2147483647i, vec3<f32>(-179f, -582f, 690f), vec3<bool>(true, false, false), vec4<i32>(30606i, -1i, 1i, 44689i), 56482u), Struct_3(1i, vec3<f32>(394f, -890f, 1998f), vec3<bool>(true, false, false), vec4<i32>(i32(-2147483648), 374i, 46657i, 1i), 129896u), Struct_3(-36580i, vec3<f32>(-1338f, -2182f, -609f), vec3<bool>(false, false, true), vec4<i32>(1i, 10326i, -10387i, 0i), 59004u));

var<private> global1: array<vec2<bool>, 4>;

var<private> global2: vec3<u32> = vec3<u32>(22886u, 938u, 76285u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<f32>) -> vec3<f32> {
    var var_0 = Struct_3(1i, arg_2.zwy, vec3<bool>(all(vec4<bool>(false, true, true, false)) | (all(vec3<bool>(false, false, true)) && select(true, false, true)), !(_wgslsmith_f_op_f32(-147f * -316f) != _wgslsmith_f_op_f32(-arg_1.x)), (u_input.b.x | min(20950i, u_input.b.x)) == 2147483647i), reverseBits(firstLeadingBit(u_input.b)), global2.x);
    global1 = array<vec2<bool>, 4>();
    let var_1 = ~global2.x;
    var var_2 = -_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.wy, var_0.d.wz), -5455i | arg_0, reverseBits(-44029i), select(var_0.d.x, -1758i, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.d.x, u_input.b.x, var_0.a, arg_0), countOneBits(var_0.d))), countOneBits(_wgslsmith_mult_vec4_i32(u_input.b, var_0.d) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, var_0.e, 16744u, 0u), vec4<u32>(var_0.e, 4294967295u, 16821u, u_input.a)) % vec4<u32>(32u))));
    let var_3 = u_input.b.x;
    return vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1205f * var_0.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(588f))), -2099f, var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(102f)) + _wgslsmith_f_op_f32(step(662f, arg_2.x))))) + -1170f));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2)))), arg_2, arg_2) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 725f, -648f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1255f, arg_2, 314f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, -749f)), !arg_1.a.wwz)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_1.c, vec4<f32>(-267f, 291f, 1503f, arg_2), vec4<f32>(arg_2, 802f, -1179f, arg_2))) * vec3<f32>(arg_2, 1290f, -1000f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-var_0.xz);
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(((18699u ^ arg_1.d) | ~arg_1.d) | arg_1.d, 63623u, ~(~1u)), ~(~vec3<u32>(u_input.c.x, 1u, 4294967295u)));
    var var_3 = arg_1.b;
    var var_4 = false;
    return ~_wgslsmith_clamp_u32(~46167u, ~u_input.a, min(~_wgslsmith_sub_u32(0u, arg_3), arg_1.b));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_5 {
    global2 = u_input.c;
    global0 = array<Struct_3, 6>();
    global2 = u_input.c;
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -834f), _wgslsmith_f_op_f32(-631f + 139f)) - vec2<f32>(_wgslsmith_f_op_f32(663f - -1184f), _wgslsmith_f_op_f32(1223f * -154f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(405f, -1626f) - vec2<f32>(1527f, 1826f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(955f, -1718f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2457f, -317f), vec2<f32>(996f, 1000f))), !arg_1.a.x))));
    let var_1 = vec3<u32>(reverseBits(arg_1.b), max(18246u, 1u), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 4294967295u), global2.x));
    return Struct_5(global0[_wgslsmith_index_u32(~firstTrailingBit(1u), 6u)], _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, global2.x))), var_1.x), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 43017u), u_input.c.zx) & ~0u, ~0u, 24137u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(-1i, vec4<f32>(115f, -182f, var_0.x, 1102f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 943f, -697f) * vec4<f32>(var_0.x, -661f, 1911f, -130f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-536f, var_0.x, var_0.x), vec3<f32>(364f, var_0.x, 380f), true))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-278f, 460f, 438f)))), arg_1.a.x)), _wgslsmith_f_op_f32(max(1000f, var_0.x)), _wgslsmith_clamp_i32(arg_1.c, -1i, _wgslsmith_div_i32(u_input.b.x, 42213i)));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = func_4(_wgslsmith_mult_u32(global2.x, ~(countOneBits(u_input.c.x) >> ((u_input.c.x ^ u_input.a) % 32u))), Struct_2(vec4<bool>(global2.x >= arg_0, true, u_input.c.x < 22825u, func_2(Struct_4(u_input.c.x, u_input.c.x, u_input.b, vec3<bool>(true, true, false), vec3<bool>(true, true, false)), Struct_2(vec4<bool>(true, true, true, false), global2.x, u_input.b.x, global2.x), -1785f, global2.x) >= global2.x), ~u_input.a, -26692i, _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(u_input.c.x, arg_0, u_input.a, 0u)), ~vec4<u32>(arg_0, u_input.a, 93326u, 52612u))));
    let var_1 = var_0.e >= _wgslsmith_div_i32(~reverseBits(u_input.b.x), i32(-1i) * -2147483647i);
    let var_2 = func_4(~0u, Struct_2(vec4<bool>(true, any(vec2<bool>(var_0.a.c.x, false)), var_0.a.c.x, var_1), global2.x, _wgslsmith_mod_i32(min(u_input.b.x, u_input.b.x ^ 1i), var_0.a.a), _wgslsmith_clamp_u32(global2.x, _wgslsmith_mod_u32(~arg_0, 11291u), 1u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.c.x, 1000f, 501f), vec3<f32>(-316f, var_2.c.x, -1514f)))))) + _wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_2.c.x, var_0.a.b.x)))))));
    var var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.e, firstTrailingBit(firstTrailingBit(-2147483647i)), (var_2.e & var_0.e) << (1u % 32u), var_2.e) | max(_wgslsmith_mult_vec4_i32(func_4(global2.x, Struct_2(vec4<bool>(var_2.a.c.x, false, false, false), 0u, var_2.e, 165191u)).a.d, countOneBits(var_2.a.d)), var_2.a.d), firstTrailingBit(vec4<i32>(1i, var_0.a.d.x, var_0.e, u_input.b.x)));
    return 19813i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    global0 = array<Struct_3, 6>();
    var var_1 = Struct_4(31423u, _wgslsmith_mod_u32(global2.x, global2.x), vec4<i32>(min(_wgslsmith_div_i32(-u_input.b.x, reverseBits(-2147483647i)), func_1(0u)), -u_input.b.x, -abs(8112i), u_input.b.x), select(!select(func_4(17308u, Struct_2(vec4<bool>(var_0.x, false, false, false), 1u, u_input.b.x, u_input.c.x)).a.c, !vec3<bool>(var_0.x, var_0.x, true), !vec3<bool>(var_0.x, var_0.x, false)), !select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), !vec3<bool>(true, var_0.x, var_0.x), true), vec3<bool>(true, true, true)), !vec3<bool>(true, all(!vec3<bool>(var_0.x, var_0.x, var_0.x)), any(!vec3<bool>(false, var_0.x, var_0.x))));
    global1 = array<vec2<bool>, 4>();
    let var_2 = _wgslsmith_add_i32(~firstTrailingBit(max(~var_1.c.x, _wgslsmith_dot_vec3_i32(var_1.c.xzy, u_input.b.xxy))), _wgslsmith_mod_i32(_wgslsmith_add_i32(~u_input.b.x, _wgslsmith_sub_i32(-22412i, func_1(var_1.a))), max(abs(~u_input.b.x), -u_input.b.x ^ 3896i)));
    let var_3 = Struct_2(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(var_1.e.x, true, true, var_0.x), vec4<bool>(var_1.e.x, var_0.x, var_0.x, false), false), var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(38536u, firstLeadingBit(_wgslsmith_sub_u32(6197u, var_1.b)), countOneBits(func_4(0u, Struct_2(vec4<bool>(var_1.d.x, true, var_1.d.x, false), 82620u, u_input.b.x, 77876u)).a.e)), vec3<u32>(1888u, func_4(1u, Struct_2(vec4<bool>(var_0.x, true, var_1.d.x, var_0.x), global2.x, 9658i, 16602u)).a.e, 0u)), var_2, ~(~1u));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2646f - 563f), 788f, 216f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-583f, 951f, -355f), _wgslsmith_div_vec3_f32(vec3<f32>(2498f, 579f, 1195f), vec3<f32>(1000f, -295f, -621f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(156f)) * -1128f), select(!var_1.e, select(!(!vec3<bool>(var_0.x, true, var_3.a.x)), vec3<bool>(any(vec3<bool>(true, false, var_1.e.x)), true, var_0.x), !var_3.a.zww), var_1.d), _wgslsmith_f_op_f32(trunc(127f)));
    var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_4.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1149f)) * _wgslsmith_f_op_f32(max(418f, -1000f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_4.b, -867f))))))), var_4.b, select(var_1.d, var_4.c, func_4(abs(firstTrailingBit(u_input.a)), Struct_2(select(vec4<bool>(var_0.x, var_0.x, var_3.a.x, var_1.d.x), vec4<bool>(false, false, true, var_0.x), true), countOneBits(38456u), ~var_3.c, var_3.b)).a.c), _wgslsmith_div_f32(var_4.b, _wgslsmith_f_op_f32(step(1708f, -275f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~select(_wgslsmith_mod_u32(9619u, 4294967295u), ~var_1.a, all(vec4<bool>(true, var_4.c.x, true, false))), _wgslsmith_div_u32(global2.x, u_input.a)));
}

