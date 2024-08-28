struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 6>;

var<private> global2: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1667f, -148f, -327f)) - vec3<f32>(913f, 259f, 443f)) * vec3<f32>(1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f * 841f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-881f + 447f) - -2181f), _wgslsmith_div_f32(_wgslsmith_div_f32(675f, -1117f), _wgslsmith_f_op_f32(step(521f, 454f)))), all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), false)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-270f, -365f, -368f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-864f, 750f, _wgslsmith_f_op_f32(round(223f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-748f, 166f, -109f)))))));
    var var_1 = Struct_3(Struct_1(vec2<bool>(true, true)), 284f, Struct_2(true, ~(2147483647i ^ global0.x), 1u ^ _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 83056u, u_input.e.x, u_input.e.x), vec4<u32>(u_input.e.x, u_input.e.x, 77105u, 1u)))));
    let var_2 = Struct_5(Struct_3(Struct_1(vec2<bool>(true, true)), var_0.x, Struct_2(var_1.c.a, firstLeadingBit(u_input.d.x), _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(0u, 70089u)))));
    var var_3 = Struct_5(var_2.a);
    let var_4 = var_2;
    return 41159u;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<i32>) -> vec2<f32> {
    let var_0 = u_input.e.x;
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, 5603i >> (~func_3(vec4<i32>(global0.x, 25053i, 1i, arg_2.x)) % 32u), _wgslsmith_div_i32(_wgslsmith_div_i32(i32(-1i) * -8191i, global0.x), 2147483647i), global0.x), -(~(~vec4<i32>(1i, u_input.a, 11660i, -2147483647i))));
    let var_2 = true;
    global2 = var_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1160f + -1066f), arg_1, true)), -641f, all(vec4<bool>(var_2, var_2, true, arg_0.x)) || any(vec4<bool>(true, true, arg_0.x, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(ceil(arg_1))), 1535f)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-668f * arg_1))), 1817f), var_3.x));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = true;
    var var_1 = u_input.a;
    let var_2 = Struct_3(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(349f)))) + arg_2.x), Struct_2(true != any(vec2<bool>(arg_1.x, arg_1.x)), countOneBits(select(-29231i, 57698i ^ arg_0, arg_3.a.x & true)), select(11379u, abs(u_input.b.x), false)));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1630f, _wgslsmith_f_op_vec2_f32(func_2(!vec3<bool>(false, arg_1.x, arg_3.a.x), _wgslsmith_f_op_f32(879f + 245f), -u_input.c)).x, false))), vec2<bool>(arg_3.a.x, true));
    var_3 = Struct_4(var_3.a, select(!select(!vec2<bool>(var_3.b.x, false), vec2<bool>(arg_1.x, var_2.c.a), false), select(arg_3.a, arg_1, all(vec3<bool>(true, false, arg_3.a.x))), select(select(vec2<bool>(var_3.b.x, var_2.a.a.x), var_3.b, !var_3.b), select(select(arg_1, vec2<bool>(true, var_2.a.a.x), var_3.b), select(vec2<bool>(arg_3.a.x, true), vec2<bool>(var_2.a.a.x, var_2.a.a.x), vec2<bool>(var_2.a.a.x, true)), true), var_2.a.a)));
    return var_2.b;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), arg_1, _wgslsmith_f_op_f32(sign(-876f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2341f, -460f, -1041f) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, 578f, arg_1), vec3<f32>(454f, arg_1, 349f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, arg_1), _wgslsmith_f_op_f32(arg_1 * -273f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), -308f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 560f, arg_1) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -586f, arg_1) * vec3<f32>(arg_1, arg_1, -1000f))), vec3<f32>(_wgslsmith_f_op_f32(-261f + 887f), _wgslsmith_f_op_f32(f32(-1f) * -367f), -1000f), !vec3<bool>(true, true, arg_0.a.x)))));
    global1 = array<i32, 6>();
    var var_1 = _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(func_4(~global1[_wgslsmith_index_u32(~4294967295u, 6u)], arg_0.a, _wgslsmith_f_op_vec2_f32(func_2(select(vec3<bool>(true, arg_0.a.x, arg_0.a.x), select(vec3<bool>(arg_0.a.x, false, true), vec3<bool>(arg_0.a.x, arg_0.a.x, true), arg_0.a.x), var_0.x <= var_0.x), _wgslsmith_f_op_f32(-arg_1), -(~u_input.c))), arg_0))));
    let var_2 = reverseBits(reverseBits(-_wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(0u, 6u)] & global0.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), var_0.x, _wgslsmith_div_f32(-1000f, -121f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_1, _wgslsmith_div_f32(1132f, -1369f)), vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x, var_0.x), all(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(794f, var_0.x, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(866f, var_0.x, -1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-222f, 273f, arg_1), vec3<f32>(-751f, -787f, arg_1))))));
    return Struct_2(false, var_2, 23387u);
}

fn func_5(arg_0: Struct_2) -> Struct_4 {
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    global2 = 36640u;
    var var_0 = !vec4<bool>(true, arg_0.a, true, true);
    var_0 = select(select(!vec4<bool>(var_0.x, arg_0.a, arg_0.a, all(vec3<bool>(true, false, false))), vec4<bool>(arg_0.a, abs(global0.x) == -14739i, all(vec2<bool>(true, true)), true), select(true, all(vec4<bool>(arg_0.a, false, true, false)) | !arg_0.a, !(arg_0.a & true))), select(vec4<bool>(all(select(var_0.zy, var_0.yy, var_0.x)), true, all(vec4<bool>(true, true, false, var_0.x)), all(!var_0.yx)), !select(select(vec4<bool>(true, true, arg_0.a, false), vec4<bool>(var_0.x, var_0.x, false, arg_0.a), vec4<bool>(arg_0.a, var_0.x, true, var_0.x)), select(vec4<bool>(arg_0.a, true, true, var_0.x), vec4<bool>(var_0.x, false, false, false), arg_0.a), select(vec4<bool>(arg_0.a, true, true, true), vec4<bool>(false, arg_0.a, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, arg_0.a, false))), !(!vec4<bool>(true, arg_0.a, var_0.x, var_0.x))), all(!var_0.zyx));
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(641f))))) + _wgslsmith_div_f32(1191f, _wgslsmith_f_op_vec2_f32(func_2(var_0.yyz, _wgslsmith_f_op_f32(-1399f + -193f), vec3<i32>(4664i, u_input.c.x, 1i) << (vec3<u32>(1u, 18788u, 16838u) % vec3<u32>(32u)))).x)), select(vec2<bool>(!arg_0.a, false), select(select(var_0.xw, var_0.zz, !vec2<bool>(true, var_0.x)), vec2<bool>(!arg_0.a, var_0.x | var_0.x), select(var_0.yz, !var_0.xz, !vec2<bool>(true, var_0.x))), all(select(!var_0.ywz, vec3<bool>(arg_0.a, var_0.x, true), !vec3<bool>(var_0.x, false, arg_0.a)))));
}

fn func_6(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_5, arg_3: Struct_4) -> vec4<bool> {
    global2 = abs(_wgslsmith_sub_u32(~(func_1(arg_2.a.a, 3438f).c | 45261u), ~firstLeadingBit(~arg_2.a.c.c)));
    var var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(~(vec3<i32>(45457i, 1i, -20370i) | vec3<i32>(-46238i, global0.x, -44453i)) << (u_input.e % vec3<u32>(32u)), u_input.c >> (_wgslsmith_div_vec3_u32(~u_input.e, u_input.e) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(~(-max(vec3<i32>(-40736i, -10007i, -31920i), u_input.c)), u_input.c));
    global1 = array<i32, 6>();
    global2 = ~(1u ^ (~arg_2.a.c.c << (u_input.e.x % 32u)));
    return vec4<bool>(false, true, any(select(vec3<bool>(func_1(Struct_1(vec2<bool>(arg_2.a.c.a, arg_0.b.x)), arg_3.a).a, any(arg_3.b), false), select(vec3<bool>(true, arg_2.a.c.a, arg_3.b.x), !vec3<bool>(true, arg_0.b.x, arg_0.b.x), !vec3<bool>(arg_3.b.x, arg_3.b.x, true)), vec3<bool>(arg_3.b.x, arg_1.x <= arg_1.x, arg_0.b.x || arg_3.b.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~u_input.b.x);
    let var_0 = func_6(func_5(func_1(Struct_1(vec2<bool>(true, true)), -690f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1143f, -474f), vec2<f32>(-397f, -516f))))), vec2<f32>(-108f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true)), vec2<f32>(1f, 1f)), Struct_5(Struct_3(Struct_1(vec2<bool>(true, true)), _wgslsmith_f_op_f32(step(-203f, -928f)), func_1(Struct_1(vec2<bool>(true, true)), 858f))), Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1f)), vec2<bool>(func_1(Struct_1(vec2<bool>(false, true)), _wgslsmith_f_op_f32(1000f + 113f)).a, !all(vec4<bool>(true, true, false, false)))));
    var var_1 = abs(2147483647i);
    var var_2 = global0.x;
    var_1 = _wgslsmith_add_i32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mod_u32(11082u, u_input.e.x)), u_input.b.x >> (_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(58097u, u_input.e.x)) % 32u)) | ~firstTrailingBit(_wgslsmith_div_u32(u_input.b.x, u_input.b.x)), 6u)], ~u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -676f))), _wgslsmith_div_f32(-1408f, 714f), 1927f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-646f, _wgslsmith_div_f32(1620f, 1374f), any(vec2<bool>(true, true)))) * -1000f)), ~vec2<u32>(35723u, u_input.e.x), firstLeadingBit(countOneBits(_wgslsmith_mod_vec3_i32(~u_input.c, firstTrailingBit(vec3<i32>(-50692i, 113418i, u_input.d.x))))), u_input.e);
}

