struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(0i, -30897i, i32(-2147483648), -33i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 2147483647i), vec4<i32>(-1i, -6525i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), 25899i, 41005i, -21729i), vec4<i32>(16709i, 27454i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 31165i), vec4<i32>(1i, 6232i, 2147483647i, 0i), vec4<i32>(0i, 2147483647i, -1i, 837i), vec4<i32>(-4868i, 2147483647i, -6363i, 1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec4<i32> {
    global1 = array<vec4<i32>, 9>();
    var var_0 = arg_0.b.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1452f, -387f, _wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c.x)) - arg_1.c.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.c.x * arg_1.c.x), _wgslsmith_f_op_f32(step(arg_1.c.x, arg_1.c.x)), arg_1.c.x)))), true));
    let var_2 = arg_0.c;
    let var_3 = abs(-17842i);
    return arg_0.a.d;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<u32>, arg_3: i32) -> vec4<i32> {
    let var_0 = Struct_1(vec4<i32>(arg_1, _wgslsmith_dot_vec2_i32(arg_0.zx, reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, arg_1), arg_0.wy))), arg_0.x, -48486i), vec3<u32>(~0u, ~0u ^ _wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(arg_2.x, 59670u)), _wgslsmith_mod_u32(~arg_2.x, firstTrailingBit(abs(35766u)))), 22389u, -global1[_wgslsmith_index_u32(0u, 9u)] ^ countOneBits(func_3(Struct_3(Struct_1(vec4<i32>(-9178i, arg_0.x, -34783i, arg_0.x), arg_2.xzx, 7004u, vec4<i32>(arg_0.x, -2147483647i, -77270i, arg_1), vec2<bool>(false, false)), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 9u)], arg_2.xxy, 4294967295u, vec4<i32>(0i, 2147483647i, arg_0.x, arg_1), vec2<bool>(false, false)), arg_2), Struct_2(true, Struct_1(vec4<i32>(-12803i, 1i, -44327i, 0i), arg_2.wzx, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 9u)], vec2<bool>(false, false)), vec2<f32>(231f, -361f)))), select(vec2<bool>(true, false), vec2<bool>(true, all(vec3<bool>(true, false, false))), true));
    global0 = var_0.e.x || ((_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-874f, -947f)) < _wgslsmith_f_op_f32(step(-341f, _wgslsmith_f_op_f32(f32(-1f) * -1301f)))) && var_0.e.x);
    global0 = true;
    global0 = all(select(vec3<bool>(all(vec4<bool>(var_0.e.x, false, true, var_0.e.x)) && var_0.e.x, any(vec4<bool>(true, true, true, false)), true), !(!select(vec3<bool>(var_0.e.x, var_0.e.x, true), vec3<bool>(false, true, var_0.e.x), var_0.e.x)), min(~arg_3, -47050i) > ~_wgslsmith_dot_vec3_i32(var_0.a.zwy, var_0.d.xwz)));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2344f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1483f - 1349f) - _wgslsmith_div_f32(1889f, 713f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1204f) - _wgslsmith_div_f32(-1073f, -1063f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-941f)) + _wgslsmith_f_op_f32(ceil(-1359f))))), 237f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1596f + 168f))), 364f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1072f, -304f) + 1f) - -339f), -1000f, 3281f)));
    return arg_0;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = vec3<bool>(99484u < (firstTrailingBit(u_input.a) | u_input.a), arg_0.x, true);
    var var_1 = Struct_3(Struct_1(_wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(u_input.a & u_input.a, 9u)], countOneBits(vec4<i32>(42813i, 2147483647i, 2147483647i, 38276i))), min(countOneBits(vec4<i32>(-2147483647i, 4244i, 2147483647i, 2147483647i)), -vec4<i32>(32678i, 2147483647i, 2147483647i, 1i))), vec3<u32>(25470u, u_input.a ^ u_input.a, 20759u) | vec3<u32>(62901u, 40413u >> (u_input.a % 32u), u_input.a ^ u_input.a), u_input.a, func_2(_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(u_input.a, 9u)], _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(10281u, 9u)], vec4<i32>(0i, 2147483647i, -1i, -2147483647i))), min(15405i << (u_input.a % 32u), 2147483647i << (u_input.a % 32u)), ~(vec4<u32>(u_input.a, 4294967295u, 31050u, 0u) | vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), 0i), vec2<bool>(false & arg_0.x, arg_0.x)), Struct_1(vec4<i32>(abs(-1i), ~(i32(-1i) * -2147483647i), -_wgslsmith_add_i32(1i, -14186i), -35821i), vec3<u32>(~select(u_input.a, 4294967295u, false), abs(1u), 1u), 4294967295u, firstLeadingBit(vec4<i32>(abs(47080i), i32(-1i) * -2147483647i, countOneBits(2147483647i), 1i)), var_0.zx), select(~firstLeadingBit(vec4<u32>(u_input.a, 73014u, 2925u, 4294967295u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), select(vec4<u32>(19661u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 14324u, u_input.a, u_input.a), false), _wgslsmith_mult_vec4_u32(vec4<u32>(16980u, u_input.a, u_input.a, 40433u), vec4<u32>(u_input.a, 83396u, 1u, u_input.a))), true));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-103f, _wgslsmith_f_op_f32(f32(-1f) * -614f))), _wgslsmith_div_f32(-812f, _wgslsmith_f_op_f32(f32(-1f) * -584f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2035f * -952f), -1765f))), -1000f, any(var_0.xy))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1331f - -2792f))));
    var var_3 = var_0.x;
    let var_4 = var_1.a;
    return -332f;
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: f32) -> vec2<i32> {
    var var_0 = ~2147483647i;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.x, 1478f), arg_2.zx, true))))), vec2<f32>(402f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -735f), 560f))))));
    return ~min(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 2147483647i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(2170i, -20031i, -1i, 0i), vec4<i32>(-44681i, 85007i, 2147483647i, 0i)))), _wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, ~(-10872i)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(-1i, -1i), vec2<i32>(23966i, -49251i), arg_1.a), vec2<i32>(1i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(func_4(1u, Struct_5(true), vec3<f32>(-907f, 1952f, 986f), _wgslsmith_f_op_f32(func_1(vec2<bool>(false, true)))), vec2<i32>(-1i, 3898i)), vec2<i32>(_wgslsmith_mult_i32(~(-20153i), -32369i), -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 17994i), vec2<i32>(1i, 0i)))) ^ 0i;
    global1 = array<vec4<i32>, 9>();
    var var_1 = Struct_4(~firstLeadingBit(-1i), vec3<u32>(~(~2159u), _wgslsmith_dot_vec4_u32(~vec4<u32>(15074u, u_input.a, u_input.a, 1u), ~vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), u_input.a) & abs(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 40643u, u_input.a), vec3<u32>(119696u, 17863u, 59531u)), ~38077u, 1747u)), u_input.a, ~(~(firstTrailingBit(vec3<u32>(8114u, u_input.a, u_input.a)) | vec3<u32>(27430u, 13506u, u_input.a))));
    let var_2 = Struct_3(Struct_1(max(vec4<i32>(func_3(Struct_3(Struct_1(global1[_wgslsmith_index_u32(u_input.a, 9u)], vec3<u32>(1u, var_1.d.x, var_1.d.x), u_input.a, vec4<i32>(2147483647i, -54789i, 38485i, 44180i), vec2<bool>(false, true)), Struct_1(global1[_wgslsmith_index_u32(40105u, 9u)], vec3<u32>(u_input.a, 4294967295u, var_1.b.x), u_input.a, vec4<i32>(var_1.a, var_0, 11781i, var_0), vec2<bool>(false, true)), vec4<u32>(14467u, u_input.a, 36651u, u_input.a)), Struct_2(false, Struct_1(global1[_wgslsmith_index_u32(u_input.a, 9u)], var_1.b, u_input.a, global1[_wgslsmith_index_u32(6797u, 9u)], vec2<bool>(true, false)), vec2<f32>(-1638f, 318f))).x, min(1i, 2147483647i), _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(u_input.a, 9u)], vec4<i32>(var_0, var_1.a, 0i, var_0)), var_0), ~(~global1[_wgslsmith_index_u32(3688u, 9u)])), ~select(var_1.d, ~vec3<u32>(u_input.a, u_input.a, u_input.a), true), firstLeadingBit(~u_input.a | _wgslsmith_add_u32(u_input.a, u_input.a)), _wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(1u, 9u)], vec4<i32>(func_2(global1[_wgslsmith_index_u32(var_1.c, 9u)], -22782i, vec4<u32>(u_input.a, u_input.a, var_1.d.x, var_1.b.x), 23288i).x, 1i, var_1.a, -2147483647i), vec4<i32>(-1i) * -global1[_wgslsmith_index_u32(0u, 9u)]), vec2<bool>(all(vec4<bool>(true, true, true, true)), true)), Struct_1(global1[_wgslsmith_index_u32(~var_1.b.x, 9u)], reverseBits(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, var_1.c, u_input.a), u_input.a, var_1.b.x)), 1u, min(global1[_wgslsmith_index_u32(~var_1.b.x, 9u)], abs(firstTrailingBit(vec4<i32>(var_0, -1i, var_0, var_1.a)))), vec2<bool>(true, true)), firstLeadingBit(abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(2505u, var_1.d.x, var_1.b.x, u_input.a), vec4<u32>(38354u, 1u, u_input.a, var_1.d.x), vec4<u32>(1u, 42402u, u_input.a, u_input.a)))));
    var var_3 = firstLeadingBit(var_1.b.zx);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1662f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1687f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-228f)), 208f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_f_op_f32(f32(-1f) * -1071f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(749f)), _wgslsmith_f_op_f32(f32(-1f) * -381f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -534f))), 2278f)));
    var var_5 = -379f;
    let var_6 = vec2<u32>(107045u, max(_wgslsmith_mod_u32(_wgslsmith_add_u32(~0u, ~var_3.x), 1u), u_input.a));
    var var_7 = vec2<u32>(_wgslsmith_mod_u32(abs(112480u), 10266u) ^ var_3.x, _wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec4_u32(min(var_2.c, _wgslsmith_sub_vec4_u32(var_2.c, vec4<u32>(var_6.x, 0u, 4294967295u, 4294967295u))), vec4<u32>(var_6.x, 1u, 4294967295u, ~1u))));
    let x = u_input.a;
    s_output = StorageBuffer(-17098i, var_4.x, firstLeadingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0, -2147483647i, 34383i, var_0) ^ vec4<i32>(var_1.a, 22846i, var_0, -2147483647i), var_2.b.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_2.a.a.x, var_2.a.d.x, var_0) & vec4<i32>(var_2.b.a.x, -1i, 0i, var_1.a), global1[_wgslsmith_index_u32(var_2.a.b.x, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]))));
}

