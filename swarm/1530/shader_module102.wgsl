struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, -2147483647i, -63i)) >> (~vec4<u32>(4294967295u, 2709u, 67951u, 0u) % vec4<u32>(32u)), ~vec4<i32>(-2147483647i, -75748i, -10761i, 11375i) | vec4<i32>(1i, u_input.a, 9371i, u_input.a)), ~_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -1i, -11196i, -1i), vec4<i32>(2147483647i, -1i, u_input.a, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a, 2147483647i, 24057i), vec4<i32>(-51493i, u_input.a, 1i, u_input.a)))));
    global0 = array<vec3<f32>, 16>();
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_1.b + arg_1.b);
    let var_2 = -37178i;
    let var_3 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))) * _wgslsmith_f_op_f32(-503f - var_1.x)), _wgslsmith_f_op_f32(arg_2 + -1110f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-818f)), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(step(1666f, _wgslsmith_f_op_f32(max(482f, _wgslsmith_f_op_f32(arg_2 + arg_1.a)))))));
    return ~_wgslsmith_clamp_u32(firstTrailingBit(~4294967295u << (_wgslsmith_mult_u32(0u, 18158u) % 32u)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(32u, 1u, 1u, 45210u), vec4<u32>(0u, 0u, 4294967295u, 1u))), 16026u);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec4<u32> {
    global0 = array<vec3<f32>, 16>();
    global0 = array<vec3<f32>, 16>();
    let var_0 = (_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(-48466i, 47434i)), -vec2<i32>(u_input.a, 0i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-7172i, -2147483647i), -vec2<i32>(43671i, -6139i))) >> ((vec2<u32>(89733u, firstTrailingBit(15841u)) << (vec2<u32>(~4294967295u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))) & ((vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(u_input.a, 3807i))) & vec2<i32>(-1i, abs(_wgslsmith_mult_i32(u_input.a, u_input.a))));
    let var_1 = arg_0.a;
    var var_2 = select(vec2<bool>(-_wgslsmith_sub_i32(var_0.x, 2147483647i) < _wgslsmith_sub_i32(0i, -11021i), -14649i >= countOneBits(var_0.x)), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), true), vec2<bool>(!any(vec4<bool>(arg_1, arg_1, arg_1, true)), all(vec4<bool>(false, true, false, false))), all(vec2<bool>(!arg_1, true))), vec2<bool>((_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -57548i, var_0.x), vec3<i32>(var_0.x, -84984i, 2147483647i)) <= _wgslsmith_add_i32(u_input.a, 2147483647i)) || all(!vec3<bool>(arg_1, false, true)), false));
    return vec4<u32>(~4294967295u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), max(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)))), 1u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: bool) -> u32 {
    var var_0 = arg_1.b;
    var var_1 = var_0.b;
    var var_2 = var_0.b;
    var var_3 = arg_1;
    let var_4 = Struct_2(var_3.b.b);
    return func_3(Struct_2(Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, arg_1.c) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_4.a.b.x, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1084f, var_3.c, 732f))))), true).x;
}

fn func_2(arg_0: i32) -> Struct_4 {
    global0 = array<vec3<f32>, 16>();
    global0 = array<vec3<f32>, 16>();
    var var_0 = 43704i;
    var var_1 = vec4<u32>(55675u, abs(_wgslsmith_mod_u32(func_1(Struct_3(vec3<f32>(-1379f, 1000f, 1595f), Struct_1(-711f, vec2<f32>(216f, -929f), global0[_wgslsmith_index_u32(30925u, 16u)]), vec4<f32>(503f, 1542f, 343f, 156f)), Struct_1(-1044f, vec2<f32>(2231f, 492f), vec3<f32>(1098f, 141f, 558f)), -518f), _wgslsmith_add_u32(_wgslsmith_div_u32(24215u, 43002u), 1u))), 4294967295u, ~_wgslsmith_mod_u32(func_4(func_3(Struct_2(Struct_1(121f, vec2<f32>(-943f, 295f), vec3<f32>(924f, 682f, -2245f))), true), Struct_4(vec3<i32>(arg_0, u_input.a, 1i), Struct_3(global0[_wgslsmith_index_u32(0u, 16u)], Struct_1(673f, vec2<f32>(1327f, 637f), global0[_wgslsmith_index_u32(0u, 16u)]), vec4<f32>(-1000f, -933f, 1303f, 563f)), -329f), all(vec3<bool>(true, false, true))), firstTrailingBit(~0u)));
    var_0 = arg_0;
    return Struct_4(~vec3<i32>(countOneBits(abs(-2147483647i)), ~(u_input.a << (81801u % 32u)), u_input.a), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(970f, -254f, -139f) + global0[_wgslsmith_index_u32(var_1.x, 16u)])) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(var_1.x, 16u)]))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-626f, 815f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-604f - 810f)), vec3<f32>(_wgslsmith_f_op_f32(min(-560f, 382f)), _wgslsmith_f_op_f32(-519f * -1706f), _wgslsmith_f_op_f32(f32(-1f) * -2134f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(-766f)), _wgslsmith_f_op_f32(round(540f)), _wgslsmith_f_op_f32(563f + -1587f), _wgslsmith_f_op_f32(1666f - 603f))))), -753f);
}

fn func_5(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_4) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_2.b.c.yx * _wgslsmith_f_op_vec2_f32(-arg_2.b.b.b)), _wgslsmith_f_op_vec2_f32(min(arg_2.b.b.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c, arg_2.c)))))));
    let var_1 = arg_2.b.c;
    global0 = array<vec3<f32>, 16>();
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(415f)), var_1.x) - vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.b.c.x))))));
    let var_2 = Struct_2(func_2(-_wgslsmith_add_i32(-1i, firstTrailingBit(arg_2.a.x))).b.b);
    return ~(~min(vec4<u32>(arg_1, 7776u, arg_1, 12665u), ~vec4<u32>(arg_1, 4294967295u, arg_1, arg_1)) | (vec4<u32>(_wgslsmith_sub_u32(25059u, arg_1), ~arg_1, ~arg_1, reverseBits(arg_1)) << (~abs(vec4<u32>(arg_1, 7093u, arg_1, 1u)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(vec4<u32>(1u, func_1(Struct_3(global0[_wgslsmith_index_u32(92116u, 16u)], Struct_1(-2325f, vec2<f32>(-455f, 614f), global0[_wgslsmith_index_u32(0u, 16u)]), vec4<f32>(660f, -366f, -2164f, -558f)), Struct_1(-1981f, vec2<f32>(660f, -1183f), global0[_wgslsmith_index_u32(27914u, 16u)]), -1249f), ~0u, 1u)) | _wgslsmith_clamp_vec4_u32(firstTrailingBit(func_5(vec2<bool>(true, false), 81480u, func_2(u_input.a))), vec4<u32>(1u, 13811u, ~(~1u), _wgslsmith_div_u32(~11210u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u) >> ((select(vec4<u32>(0u, 379u, 41327u, 62019u), vec4<u32>(4294967295u, 4294967295u, 29306u, 19377u), false) << (vec4<u32>(0u, 1u, 4294967295u, 17542u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = vec3<bool>(!select(true, _wgslsmith_mod_u32(0u, var_0.x) > reverseBits(95991u), true), true, true);
    var_1 = select(select(vec3<bool>(var_1.x | var_1.x, true, false), select(select(!vec3<bool>(var_1.x, false, false), select(vec3<bool>(false, false, false), vec3<bool>(var_1.x, var_1.x, false), var_1.x), any(var_1.yz)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, false, true)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(true, var_1.x, var_1.x), var_1.x && false)), !any(vec3<bool>(false, true, false))), select(!select(!vec3<bool>(true, true, var_1.x), vec3<bool>(true, var_1.x, true), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x))), vec3<bool>(var_1.x, false, select(var_1.x | false, true, select(var_1.x, false, var_1.x))), false), true || any(vec2<bool>(true, false)));
    var var_2 = select(!select(vec4<bool>(var_1.x, select(var_1.x, false, var_1.x), true, any(vec4<bool>(var_1.x, var_1.x, var_1.x, true))), !select(vec4<bool>(false, var_1.x, true, true), vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(false, true, false, true)), !select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(false, var_1.x, false, var_1.x), var_1.x)), vec4<bool>(all(!select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x))), 695f <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-996f, 299f)), 202f, var_1.x)), !var_1.x && all(vec4<bool>(false, var_1.x, true, var_1.x)), false), false);
    var_0 = firstTrailingBit(~vec4<u32>(4294967295u, ~1u, 1u, 1u)) | vec4<u32>(1u << (countOneBits(86999u) % 32u), ~var_0.x, var_0.x, _wgslsmith_mult_u32(var_0.x, select(60400u, 1u, var_1.x)));
    var var_3 = u_input.a | 13929i;
    let var_4 = Struct_2(func_2(-u_input.a).b.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(u_input.a, u_input.a, firstLeadingBit(-20166i), ~(~u_input.a))), abs(abs(vec4<u32>(_wgslsmith_mod_u32(0u, var_0.x), _wgslsmith_sub_u32(4294967295u, 8018u), _wgslsmith_add_u32(1u, var_0.x), _wgslsmith_dot_vec2_u32(var_0.wy, var_0.yx)))));
}

