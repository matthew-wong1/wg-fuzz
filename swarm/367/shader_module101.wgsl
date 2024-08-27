struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(i32(-2147483648), true);

var<private> global2: bool;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec2<u32> {
    global1 = Struct_2(16956i, ~u_input.a.x == global1.a);
    var var_0 = all(vec2<bool>(any(select(!vec4<bool>(arg_1.x, true, arg_0.x, global1.b), select(vec4<bool>(arg_0.x, true, global1.b, arg_0.x), vec4<bool>(false, global1.b, true, global1.b), false), true)), global1.b));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.x, 763f, arg_2.x), vec3<f32>(arg_2.x, -303f, arg_2.x))))), select(vec3<bool>(!arg_0.x, arg_1.x, -662f <= arg_2.x), select(arg_0, arg_0, select(vec3<bool>(global1.b, global1.b, false), vec3<bool>(arg_1.x, arg_0.x, global1.b), arg_1.x)), arg_0), vec2<u32>(u_input.c.x, reverseBits(u_input.b.x))), firstLeadingBit(vec3<u32>(u_input.b.x, _wgslsmith_clamp_u32(1u, u_input.c.x, 11749u), u_input.c.x) >> (_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.c.x, 71569u, u_input.c.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 11508u, u_input.b.x), vec3<u32>(49782u, 66368u, 0u))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-arg_2.x));
    var var_2 = Struct_4(vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.b, var_1.b), var_1.a.c.x, select(~(~u_input.c.x), ~7856u, !var_1.a.b.x), 3381u), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.a)), select(vec3<bool>(global1.b, any(vec3<bool>(global1.b, var_1.a.b.x, var_1.a.b.x)), all(vec4<bool>(true, global1.b, false, true))), !vec3<bool>(false, true, global1.b), vec3<bool>(all(vec4<bool>(true, arg_0.x, arg_1.x, true)), 30014u > u_input.b.x, global1.b)), vec2<u32>(countOneBits(u_input.b.x), var_1.a.c.x)), false);
    global0 = ~(~111253u);
    return ~(var_2.a.zw << ((_wgslsmith_div_vec2_u32(select(var_1.b.zz, vec2<u32>(var_2.b.c.x, var_1.a.c.x), true), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), u_input.c)) & reverseBits(abs(u_input.b))) % vec2<u32>(32u)));
}

fn func_2(arg_0: f32) -> Struct_3 {
    global1 = Struct_2(6168i, !(true | global1.b));
    global0 = u_input.c.x ^ ~u_input.b.x;
    global2 = true && global1.b;
    global1 = Struct_2(-1i, all(!select(vec3<bool>(global1.b, false, true), !vec3<bool>(global1.b, global1.b, true), false)));
    let var_0 = Struct_3(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1489f, 1022f, arg_0)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-657f, -1004f, arg_0)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, 1773f), vec3<f32>(arg_0, arg_0, 183f), true))))), !(!select(vec3<bool>(false, global1.b, true), vec3<bool>(global1.b, false, false), vec3<bool>(global1.b, true, global1.b))), _wgslsmith_mult_vec2_u32(func_3(!vec3<bool>(true, global1.b, global1.b), !vec2<bool>(true, global1.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(631f, -910f, 1588f), vec3<f32>(arg_0, 1596f, -2787f), vec3<bool>(false, false, true)))), ~vec2<u32>(1u, 1u))), vec3<u32>(~u_input.b.x, u_input.c.x, min(_wgslsmith_sub_u32(u_input.c.x, 31196u), u_input.b.x)), arg_0);
    return Struct_3(var_0.a, var_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - var_0.c)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_1.a.a)) * vec3<f32>(_wgslsmith_div_f32(-257f, 1515f), 301f, _wgslsmith_f_op_f32(-1827f * 1f))), arg_1.a.b, ~(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.b.x, u_input.b.x), u_input.b)) >> (vec2<u32>(~u_input.b.x << ((88394u >> (1u % 32u)) % 32u), abs(firstTrailingBit(u_input.b.x))) % vec2<u32>(32u)));
    global1 = arg_3;
    var_0 = arg_1.a;
    var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-234f, var_0.a.x), 744f)) * arg_1.c)).a;
    global0 = 51357u;
    return !arg_1.a.b;
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    let var_0 = ~u_input.c.x;
    let var_1 = Struct_2(-(_wgslsmith_mult_i32(reverseBits(-1i), _wgslsmith_mod_i32(1i, 1i)) | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -21678i), u_input.a.zy)), true);
    global0 = reverseBits(var_0);
    let var_2 = 1f;
    var var_3 = Struct_5(vec4<i32>(global1.a, _wgslsmith_sub_i32(-u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.zz, _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(var_1.a, var_1.a), vec2<i32>(0i, u_input.a.x)))), u_input.a.x, u_input.a.x), 5977u);
    return Struct_3(arg_0, ~select(vec3<u32>(var_3.b, 1u, var_3.b) >> (vec3<u32>(var_0, 11108u, var_3.b) % vec3<u32>(32u)), vec3<u32>(var_3.b, var_3.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.c.x, 0u, var_0), vec4<u32>(1u, arg_0.c.x, var_3.b, 0u))), true), _wgslsmith_div_f32(arg_0.a.x, var_2));
}

fn func_1(arg_0: u32, arg_1: Struct_5) -> vec3<i32> {
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-781f, 749f, -1310f), vec3<f32>(-1000f, -334f, -439f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(728f, -486f, -922f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1462f), _wgslsmith_f_op_f32(230f * -2067f), -674f)), !func_4(Struct_2(45656i, global1.b), func_2(-1055f), select(vec3<i32>(2147483647i, global1.a, u_input.a.x), vec3<i32>(global1.a, u_input.a.x, 2147483647i), true), Struct_2(u_input.a.x, true)), ~(~(~u_input.c))), select(global1.b, func_2(func_2(_wgslsmith_f_op_f32(-1005f * -539f)).a.a.x).a.b.x, all(func_2(_wgslsmith_f_op_f32(-1016f * 1336f)).a.b.yz)));
    global2 = var_0.a.b.x;
    let var_1 = var_0.a;
    let var_2 = func_2(_wgslsmith_f_op_f32(-390f * var_0.c));
    var var_3 = ~((~(~arg_1.a.yz) | u_input.a.zx) | (vec2<i32>(u_input.a.x, -1i) << (_wgslsmith_mod_vec2_u32(vec2<u32>(2961u, var_1.c.x), vec2<u32>(u_input.b.x, 18253u)) % vec2<u32>(32u))));
    return arg_1.a.zyz;
}

fn func_6(arg_0: Struct_5, arg_1: bool, arg_2: vec3<i32>, arg_3: i32) -> Struct_3 {
    var var_0 = arg_0.a.x;
    var var_1 = arg_0.a;
    var_1 = abs(arg_0.a);
    var_1 = ~vec4<i32>(34972i, ~(-1i), -1i, -var_1.x);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-273f, -1000f), _wgslsmith_div_vec2_f32(vec2<f32>(2672f, -534f), vec2<f32>(-1106f, 349f)), !arg_1))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2455f, 1284f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(118f, -1022f), vec2<f32>(-738f, 103f), vec2<bool>(arg_1, global1.b)))))));
    return Struct_3(func_2(var_2.x).a, ~func_5(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(342f, var_2.x, var_2.x) * vec3<f32>(var_2.x, 1000f, 642f)), func_4(Struct_2(arg_2.x, global1.b), Struct_3(Struct_1(vec3<f32>(723f, -398f, var_2.x), vec3<bool>(false, arg_1, false), u_input.c), vec3<u32>(arg_0.b, u_input.b.x, u_input.c.x), -438f), u_input.a, Struct_2(0i, global1.b)), ~vec2<u32>(69847u, 24508u)), !global1.b).b, _wgslsmith_f_op_f32(-1916f - -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0u;
    var var_0 = 5862i;
    var var_1 = func_6(Struct_5(countOneBits(vec4<i32>(-1i) * -vec4<i32>(global1.a, -2147483647i, 1i, global1.a)), _wgslsmith_add_u32(12579u, 0u)), global1.b, firstTrailingBit(u_input.a), -_wgslsmith_dot_vec3_i32(func_1(1u, Struct_5(vec4<i32>(41233i, u_input.a.x, u_input.a.x, 0i), 22321u)) & u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -1710i, 31469i), -u_input.a)));
    let var_2 = _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(-1i) * -vec2<i32>(firstLeadingBit(50813i), _wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.yx)));
    let var_3 = 2147483647i;
    var var_4 = var_1.a;
    var var_5 = vec4<bool>(!func_5(func_5(func_5(var_1.a, false).a, var_1.a.b.x).a, any(vec3<bool>(var_1.a.b.x, var_1.a.b.x, var_1.a.b.x))).a.b.x, any(var_1.a.b) || func_2(_wgslsmith_div_f32(var_1.a.a.x, var_1.a.a.x)).a.b.x, true, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(177f, -489f, var_4.a.x, -2008f) - vec4<f32>(636f, 1242f, var_4.a.x, var_4.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_4.a.x, var_4.a.x, -1000f), vec4<f32>(var_1.a.a.x, var_4.a.x, var_4.a.x, var_1.c)))), vec4<f32>(-256f, _wgslsmith_f_op_f32(abs(-2143f)), -202f, var_1.a.a.x)))), firstLeadingBit(select(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), !var_4.b.x || true)));
}

