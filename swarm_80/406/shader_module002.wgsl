struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(true, false, true, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = Struct_1(~_wgslsmith_div_vec3_i32(vec3<i32>(-arg_1.a.x, -1i, u_input.c.x), reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.a.x, 2147483647i, -69354i), arg_1.a))), abs(~33209u), arg_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_1.e.x)))), _wgslsmith_f_op_vec4_f32(exp2(arg_2)));
    let var_1 = _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(u_input.c.x, var_0.a.x), ~countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_0.a.x, u_input.b), vec3<i32>(var_0.a.x, 2147483647i, arg_1.a.x)), arg_1.a)), ~select(16267i, _wgslsmith_add_i32(u_input.b, 13801i) ^ 15452i, true));
    global0 = array<bool, 4>();
    var var_2 = select(var_0.a.zz, (vec2<i32>(var_0.a.x << (arg_1.b % 32u), 2147483647i) >> (vec2<u32>(arg_1.b, ~1u) % vec2<u32>(32u))) ^ ((_wgslsmith_mult_vec2_i32(arg_1.a.zz, arg_1.a.zy) ^ _wgslsmith_div_vec2_i32(vec2<i32>(19862i, u_input.a.x), vec2<i32>(u_input.a.x, var_0.a.x))) << (max(min(vec2<u32>(var_0.b, 63002u), vec2<u32>(6677u, var_0.b)), ~vec2<u32>(0u, var_0.b)) % vec2<u32>(32u))), !(!select(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)]), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_1.b, 4u)], false), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.b, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)]), true), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(u_input.d, 4u)]), true))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d), arg_0.x, arg_1.d, _wgslsmith_f_op_f32(floor(-752f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-374f, -1000f, arg_2.x, _wgslsmith_f_op_f32(floor(222f))), arg_2)))));
    return !select(vec2<bool>(true, true), select(select(select(vec2<bool>(global0[_wgslsmith_index_u32(arg_1.b, 4u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(53396u, 4u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0.b, 4u)], false)), !vec2<bool>(global0[_wgslsmith_index_u32(arg_1.b, 4u)], global0[_wgslsmith_index_u32(6390u, 4u)]), !global0[_wgslsmith_index_u32(1u, 4u)]), select(!vec2<bool>(global0[_wgslsmith_index_u32(76182u, 4u)], true), vec2<bool>(global0[_wgslsmith_index_u32(40233u, 4u)], global0[_wgslsmith_index_u32(87867u, 4u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 4u)], global0[_wgslsmith_index_u32(u_input.e, 4u)]), vec2<bool>(false, false), global0[_wgslsmith_index_u32(var_0.b, 4u)])), global0[_wgslsmith_index_u32(min(31391u, 53961u), 4u)] & !global0[_wgslsmith_index_u32(arg_1.b, 4u)]), select(vec2<bool>(select(global0[_wgslsmith_index_u32(var_0.b, 4u)], true, false), global0[_wgslsmith_index_u32(0u, 4u)] != global0[_wgslsmith_index_u32(var_0.b, 4u)]), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 4u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)])), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.b, 4u)], true)), !(!global0[_wgslsmith_index_u32(arg_1.b, 4u)])));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<bool>) -> Struct_1 {
    global0 = array<bool, 4>();
    var var_0 = !vec4<bool>(!arg_2.x, select((arg_1 == arg_1) & true, true, any(vec2<bool>(true, true))), !arg_2.x, arg_2.x);
    let var_1 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, -_wgslsmith_dot_vec2_i32(u_input.c, arg_0.yy), arg_0.x), firstTrailingBit(vec3<i32>(12722i, arg_0.x, u_input.c.x)) | vec3<i32>(arg_0.x << (u_input.d % 32u), -2147483647i, min(u_input.a.x, arg_0.x))), 70655u, -1i, 1f, vec4<f32>(575f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-250f, -1292f)), _wgslsmith_f_op_f32(-774f * -209f)) * _wgslsmith_f_op_f32(-524f - -709f)), -505f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-261f, _wgslsmith_div_f32(-1354f, -1428f))))));
    var_0 = vec4<bool>(var_0.x, any(vec4<bool>(!any(arg_2.wyz), !(!var_0.x), all(func_3(vec2<f32>(1398f, 484f), var_1, var_1.e)), select(arg_2.x, false, true) && var_0.x)), true, arg_2.x);
    global0 = array<bool, 4>();
    return Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(-19317i), ~u_input.c.x, 16323i), max(u_input.a.yzy, u_input.a.yww) << (~(~vec3<u32>(37390u, 1u, 0u)) % vec3<u32>(32u))), u_input.d, arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -511f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.e.x, var_1.e.x))) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.e.x))))), _wgslsmith_f_op_f32(-518f * _wgslsmith_f_op_f32(trunc(-822f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-275f * -1000f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(362f - var_1.d))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    var var_0 = max(134736u, 4294967295u) & ((~_wgslsmith_mult_u32(4995u, arg_0.b.b) ^ 59642u) ^ arg_0.c);
    let var_1 = countOneBits(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(~u_input.d, u_input.d), arg_0.c, arg_0.c));
    let var_2 = Struct_2(func_2(-_wgslsmith_mod_vec4_i32(u_input.a, u_input.a), 36280u, vec4<bool>(global0[_wgslsmith_index_u32(reverseBits(~2880u), 4u)], global0[_wgslsmith_index_u32(abs(~var_1), 4u)], any(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], true), vec2<bool>(false, true), vec2<bool>(false, global0[_wgslsmith_index_u32(var_1, 4u)]))), any(select(vec3<bool>(false, global0[_wgslsmith_index_u32(96637u, 4u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(62889u, 4u)], false), true)))), Struct_1(reverseBits(select(vec3<i32>(arg_1.x, 1i, 6586i), arg_0.b.a | vec3<i32>(-1i, arg_0.b.c, arg_0.a.c), arg_0.a.b > 0u)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1 ^ 13506u, 0u, _wgslsmith_mult_u32(64125u, 7870u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, 77350u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_0.c, 8306u), vec3<u32>(u_input.e, var_1, 4294967295u)))), u_input.a.x, -1078f, arg_0.b.e), _wgslsmith_add_u32(u_input.d, u_input.e));
    let var_3 = vec3<bool>(all(vec2<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(var_1, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)])) | global0[_wgslsmith_index_u32(u_input.e, 4u)], any(select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 4u)], false), false)))), false, select(true, global0[_wgslsmith_index_u32(30494u, 4u)], true));
    var var_4 = Struct_3(1i);
    return var_2.b.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(810f, -2346f, 505f, 972f), vec4<f32>(-468f, -1106f, -559f, -1300f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(784f, -175f, -884f, 269f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1027f, -1155f, 687f, 1000f), vec4<f32>(868f, -1000f, 1067f, 446f), global0[_wgslsmith_index_u32(u_input.e, 4u)])))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-541f)), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<i32>(-539i, 1i, u_input.c.x), u_input.d, u_input.a.x, -102f, vec4<f32>(var_0.x, -498f, var_0.x, var_0.x)), Struct_1(u_input.a.wwy, u_input.e, u_input.c.x, var_0.x, vec4<f32>(-585f, var_0.x, 1032f, var_0.x)), u_input.d), u_input.a.zy)) + func_2(vec4<i32>(608i, 1i, 2147483647i, 0i), 0u, vec4<bool>(true, true, false, true)).e.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_0.x, -572f)), -515f, global0[_wgslsmith_index_u32(u_input.e, 4u)] | global0[_wgslsmith_index_u32(u_input.d, 4u)])), 440f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(250f, 357f)) - _wgslsmith_f_op_f32(1396f * var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -837f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1252f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -193f)), var_0.x))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(273f + -1064f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, !global0[_wgslsmith_index_u32(u_input.d, 4u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -801f) + var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(117f, -173f, 192f, var_0.x))) + vec4<f32>(_wgslsmith_f_op_f32(-272f * 2579f), -1000f, _wgslsmith_div_f32(var_0.x, 878f), var_0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-346f)), _wgslsmith_f_op_f32(ceil(-928f)), -1624f, -1013f) + vec4<f32>(_wgslsmith_f_op_f32(245f + var_0.x), _wgslsmith_f_op_f32(-var_0.x), -958f, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 1312f, -836f, 674f))))));
    var var_1 = _wgslsmith_sub_i32(u_input.b, _wgslsmith_div_i32(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -33458i, -2147483647i, 0i), u_input.a)), 1i));
    let var_2 = u_input.d;
    var_1 = select(6468i, select(-abs(u_input.b), func_2(abs(select(vec4<i32>(u_input.b, u_input.c.x, 2147483647i, -2147483647i), u_input.a, vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], true))), 97875u, select(vec4<bool>(global0[_wgslsmith_index_u32(var_2, 4u)], global0[_wgslsmith_index_u32(u_input.e, 4u)], global0[_wgslsmith_index_u32(10950u, 4u)], global0[_wgslsmith_index_u32(var_2, 4u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_2, 4u)], true, false, true), vec4<bool>(global0[_wgslsmith_index_u32(70196u, 4u)], true, global0[_wgslsmith_index_u32(u_input.d, 4u)], global0[_wgslsmith_index_u32(25553u, 4u)]))).c, global0[_wgslsmith_index_u32(max(var_2, 114455u), 4u)]), any(vec4<bool>(true && (var_0.x == -862f), true, global0[_wgslsmith_index_u32(~4294967295u, 4u)], true)));
    var var_3 = min(~u_input.a.x, 22048i ^ abs(u_input.a.x & -u_input.b));
    var var_4 = Struct_2(func_2(~vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, -2147483647i)), ~(-29121i), 1i, select(u_input.c.x, -2147483647i, false)), 4294967295u, select(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(20248u, 4u)], false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(50277u, 4u)], global0[_wgslsmith_index_u32(u_input.e, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(var_2, 4u)]), global0[_wgslsmith_index_u32(u_input.d, 4u)]), select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(55440u, 4u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e, 4u)], global0[_wgslsmith_index_u32(39174u, 4u)], global0[_wgslsmith_index_u32(11225u, 4u)]), true)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 4u)], true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(var_2, 4u)], true, true, false), true), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 4u)], global0[_wgslsmith_index_u32(var_2, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(52688u, 4u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 4u)], true), global0[_wgslsmith_index_u32(var_2, 4u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 4u)], global0[_wgslsmith_index_u32(u_input.e, 4u)], true, true)), true)), Struct_1(vec3<i32>(u_input.a.x, -14797i, firstLeadingBit(1i)), 1u, _wgslsmith_dot_vec4_i32(u_input.a & vec4<i32>(u_input.c.x, -25031i, -48502i, u_input.c.x), firstLeadingBit(reverseBits(u_input.a))), func_2(select(-vec4<i32>(1i, 7253i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.a.x, 41701i, u_input.b, u_input.c.x), select(true, true, global0[_wgslsmith_index_u32(var_2, 4u)])), _wgslsmith_mod_u32(~var_2, max(1u, var_2)), !select(vec4<bool>(global0[_wgslsmith_index_u32(6276u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(92006u, 4u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_2, 4u)], global0[_wgslsmith_index_u32(18970u, 4u)], false, global0[_wgslsmith_index_u32(u_input.e, 4u)]), global0[_wgslsmith_index_u32(var_2, 4u)])).e.x, vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, 246f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1528f + var_0.x))), var_0.x)), 4719u);
    let var_5 = Struct_2(func_2(vec4<i32>(_wgslsmith_add_i32(-u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, u_input.a.x, u_input.b), vec4<i32>(-2147483647i, var_4.b.c, -2147483647i, 2147483647i))), -var_4.a.a.x, -16996i | (u_input.b & var_4.a.a.x), u_input.c.x), reverseBits(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(50705u, u_input.d, 33151u), vec3<u32>(u_input.d, 11155u, 0u)))), vec4<bool>(true, true, !any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 4u)], global0[_wgslsmith_index_u32(31891u, 4u)], global0[_wgslsmith_index_u32(var_4.a.b, 4u)])), !(var_0.x < 1000f))), func_2(firstTrailingBit(_wgslsmith_clamp_vec4_i32(select(u_input.a, u_input.a, vec4<bool>(true, false, global0[_wgslsmith_index_u32(22502u, 4u)], true)), max(u_input.a, vec4<i32>(-1i, u_input.c.x, 6095i, 1i)), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a))), var_2, !vec4<bool>(true, u_input.c.x == 2147483647i, any(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 4u)])), global0[_wgslsmith_index_u32(var_4.c, 4u)] | true)), 20694u);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~(_wgslsmith_mod_u32(_wgslsmith_div_u32(19656u, 28048u), var_2) & var_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-560f, 703f) * vec2<f32>(_wgslsmith_f_op_f32(func_1(var_5, vec2<i32>(u_input.b, 67956i))), _wgslsmith_f_op_f32(1236f + 711f)))));
}

