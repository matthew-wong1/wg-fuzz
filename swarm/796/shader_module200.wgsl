struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27>;

var<private> global1: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(Struct_1(57472u, vec2<i32>(i32(-2147483648), -1i))), Struct_5(Struct_1(62530u, vec2<i32>(-38467i, 12190i))), Struct_5(Struct_1(1u, vec2<i32>(-25547i, i32(-2147483648)))), Struct_5(Struct_1(28505u, vec2<i32>(9574i, 0i))), Struct_5(Struct_1(0u, vec2<i32>(0i, 35495i))), Struct_5(Struct_1(4294967295u, vec2<i32>(-45283i, -59405i))), Struct_5(Struct_1(300u, vec2<i32>(-7875i, i32(-2147483648)))), Struct_5(Struct_1(4294967295u, vec2<i32>(44125i, -24295i))), Struct_5(Struct_1(32752u, vec2<i32>(1i, -27619i))), Struct_5(Struct_1(4294967295u, vec2<i32>(2147483647i, 1i))), Struct_5(Struct_1(4294967295u, vec2<i32>(95468i, -11555i))), Struct_5(Struct_1(31938u, vec2<i32>(0i, i32(-2147483648)))), Struct_5(Struct_1(14361u, vec2<i32>(i32(-2147483648), i32(-2147483648)))), Struct_5(Struct_1(0u, vec2<i32>(-1i, -1i))), Struct_5(Struct_1(86091u, vec2<i32>(38652i, i32(-2147483648)))), Struct_5(Struct_1(0u, vec2<i32>(-1i, 2147483647i))), Struct_5(Struct_1(45032u, vec2<i32>(-62098i, 2147483647i))), Struct_5(Struct_1(24898u, vec2<i32>(2147483647i, -41746i))), Struct_5(Struct_1(858u, vec2<i32>(2147483647i, 20560i))), Struct_5(Struct_1(65640u, vec2<i32>(-15412i, -1i))), Struct_5(Struct_1(0u, vec2<i32>(1i, -386i))), Struct_5(Struct_1(9704u, vec2<i32>(-2074i, 35650i))), Struct_5(Struct_1(4294967295u, vec2<i32>(-2434i, 0i))), Struct_5(Struct_1(50787u, vec2<i32>(i32(-2147483648), 43599i))), Struct_5(Struct_1(40222u, vec2<i32>(-1i, -172i))), Struct_5(Struct_1(0u, vec2<i32>(i32(-2147483648), 1i))), Struct_5(Struct_1(21688u, vec2<i32>(0i, 0i))), Struct_5(Struct_1(62949u, vec2<i32>(i32(-2147483648), 93008i))), Struct_5(Struct_1(71246u, vec2<i32>(0i, -34956i))), Struct_5(Struct_1(1u, vec2<i32>(i32(-2147483648), -65332i))), Struct_5(Struct_1(4294967295u, vec2<i32>(0i, 30025i))), Struct_5(Struct_1(26196u, vec2<i32>(69675i, -1i))));

var<private> global2: Struct_4;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = global2.c.b.a;
    let var_1 = Struct_3(Struct_1((_wgslsmith_div_u32(u_input.a, 0u) ^ _wgslsmith_div_u32(global2.c.a.a, arg_0)) | max(40146u, arg_0), global2.c.b.a), Struct_2(vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.x, -16483i, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, -14907i), vec3<i32>(global2.c.a.b.x, global2.c.b.a.x, var_0.x))), -var_0.x ^ _wgslsmith_clamp_i32(56003i, global2.c.a.b.x, var_0.x))));
    global2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.b)) - _wgslsmith_f_op_f32(-global2.a.x)), global2.a.x, false)), -896f, 800f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a.x)) - 489f), var_1, Struct_2(vec2<i32>(_wgslsmith_add_i32(2147483647i, var_0.x), min(var_1.a.b.x, 1i))));
    global1 = array<Struct_5, 32>();
    let var_2 = firstTrailingBit(~var_1.a.b & abs(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, var_0.x), -global2.c.b.a)));
    return true;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global1 = array<Struct_5, 32>();
    global0 = array<vec4<bool>, 27>();
    let var_0 = global2.b;
    var var_1 = func_3(29655u);
    var var_2 = select(!(true || select(true, true, true)), true, !(global2.c.a.a > 1u)) & all(vec4<bool>(true, true, true, false));
    return Struct_1(~reverseBits(~(u_input.a | 4294967295u)), vec2<i32>(global2.c.a.b.x, 28525i >> (u_input.a % 32u)));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = ~_wgslsmith_dot_vec4_u32(firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(92314u, 4008u, 0u, 1u), vec4<u32>(global2.c.a.a, 58925u, global2.c.a.a, 113777u))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global2.c.a.a, arg_1.a, 1u, 4294967295u), vec4<u32>(global2.c.a.a, arg_1.a, global2.c.a.a, u_input.a)) >> ((vec4<u32>(0u, global2.c.a.a, 21930u, arg_1.a) >> (vec4<u32>(global2.c.a.a, 32221u, 18476u, global2.c.a.a) % vec4<u32>(32u))) % vec4<u32>(32u)), min(vec4<u32>(4294967295u, 4294967295u, 33545u, 0u), vec4<u32>(1u, u_input.a, 11627u, global2.c.a.a))));
    var var_1 = _wgslsmith_sub_vec3_i32(min(-vec3<i32>(max(arg_1.b.x, global2.c.a.b.x), -2147483647i, _wgslsmith_sub_i32(arg_1.b.x, global2.c.a.b.x)), -select(abs(vec3<i32>(global2.c.a.b.x, 0i, 47939i)), vec3<i32>(global2.d.a.x, 2147483647i, global2.c.b.a.x), true)), firstTrailingBit(select(~_wgslsmith_sub_vec3_i32(vec3<i32>(54261i, global2.c.b.a.x, 6093i), vec3<i32>(79556i, -2147483647i, arg_1.b.x)), vec3<i32>(max(global2.c.b.a.x, -21039i), arg_1.b.x, -15360i), !select(vec3<bool>(false, false, true), vec3<bool>(arg_0, arg_0, false), arg_0))));
    var var_2 = global2.c.a;
    var var_3 = -876f;
    var_2 = func_2(vec3<f32>(global2.a.x, 629f, 728f));
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec4<bool>, 27>();
    var var_0 = !(!select(func_4(true, func_2(global2.a)), select(true, true, true), func_3(_wgslsmith_mult_u32(41652u, 1u))));
    let var_1 = arg_3;
    var var_2 = all(!select(global0[_wgslsmith_index_u32(4294967295u, 27u)], vec4<bool>(true, true, true, false), vec4<bool>(any(vec3<bool>(false, false, true)), true, all(vec2<bool>(true, false)), false)));
    var var_3 = !select(vec2<bool>(true, any(vec2<bool>(true, true))), !vec2<bool>(any(vec4<bool>(true, true, true, true)), true), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true)));
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, -179f, global2.a.x) + global2.a)), vec3<f32>(646f, global2.a.x, _wgslsmith_f_op_f32(floor(442f))))));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(1i, abs(~arg_1.a.b.x)), 29419i << (reverseBits(func_2(vec3<f32>(-679f, 593f, global2.a.x)).a) % 32u), global2.c.b.a.x, 25380i) & firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(3385i, 2147483647i, -4497i, arg_2.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a.b.x, -2147483647i, arg_1.b.a.x, 2147483647i), vec4<i32>(global2.c.a.b.x, 12607i, 2147483647i, 0i))), vec4<i32>(arg_2.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(20996i, arg_1.b.a.x), arg_2.a), 2147483647i, 2147483647i)));
    let var_1 = ~var_0;
    var var_2 = ~(~(select(firstLeadingBit(vec2<u32>(4294967295u, 15248u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a.a, 33405u), vec2<u32>(0u, 4294967295u)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))) | vec2<u32>(~4294967295u, ~49679u)));
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.b, global2.a.x, arg_0))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(global2.a, vec3<f32>(-1390f, global2.b, 1931f), vec3<bool>(true, false, false)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global2.a))), global2.a)), _wgslsmith_f_op_f32(-global2.b), Struct_3(func_1(arg_2, Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-712f, -407f, arg_0)), _wgslsmith_f_op_f32(1080f - global2.a.x), Struct_3(global2.c.a, arg_1.b), arg_1.b), u_input.a ^ var_2.x, Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(-38071i, var_1.x), global2.c.b.a))), Struct_2(_wgslsmith_mult_vec2_i32(arg_2.a ^ var_1.zx, var_0.yy & vec2<i32>(arg_1.a.b.x, var_1.x)))), Struct_2(reverseBits(vec2<i32>(arg_1.a.b.x, i32(-1i) * -19227i))));
    var var_4 = 30275u;
    return reverseBits(select(vec3<u32>(10376u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.a, arg_1.a.a), vec2<u32>(var_2.x, arg_1.a.a) >> (vec2<u32>(var_2.x, 0u) % vec2<u32>(32u))), min(var_2.x, reverseBits(1u))), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 106960u, 4294967295u), max(min(vec3<u32>(global2.c.a.a, var_2.x, 1u), vec3<u32>(37537u, 138002u, u_input.a)), ~vec3<u32>(var_3.c.a.a, 39754u, 9988u))), true));
}

fn func_6(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_5, arg_3: vec3<f32>) -> Struct_4 {
    global1 = array<Struct_5, 32>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(1369f - -993f), global2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * 477f) + _wgslsmith_f_op_f32(abs(-627f))) + global2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - -2145f)) - -191f)));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3.x, global2.b, var_0.x))), _wgslsmith_f_op_f32(-171f * arg_3.x), Struct_3(func_2(vec3<f32>(-639f, -910f, global2.b)), Struct_2(-vec2<i32>(arg_1, -5821i))), Struct_2(arg_2.a.b));
    let var_2 = Struct_5(func_1(Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1, -1i), -global2.c.b.a)), Struct_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -546f), var_0.x, _wgslsmith_f_op_f32(var_0.x - -542f)), var_1.b, Struct_3(Struct_1(17528u, vec2<i32>(global2.c.a.b.x, 9952i)), Struct_2(vec2<i32>(34501i, var_1.d.a.x))), Struct_2(reverseBits(vec2<i32>(-1i, var_1.d.a.x)))), _wgslsmith_add_u32(arg_2.a.a, ~1u), var_1.d));
    global1 = array<Struct_5, 32>();
    return Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-747f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_div_f32(global2.a.x, var_1.b))))), 1486f, var_1.c, Struct_2(max(var_1.c.a.b, ~(-vec2<i32>(var_2.a.b.x, arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<i32>(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2.c.a.b.x, global2.c.a.b.x, global2.d.a.x), vec3<i32>(global2.c.b.a.x, global2.d.a.x, global2.d.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(global2.c.a.b.x, global2.c.a.b.x, global2.c.b.a.x), vec3<i32>(-1794i, global2.c.a.b.x, -24842i)))), _wgslsmith_clamp_i32(min(i32(-1i) * -2147483647i, global2.c.a.b.x), global2.d.a.x, -global2.c.b.a.x)));
    var var_1 = global2.a;
    let var_2 = Struct_2(vec2<i32>(-1i) * -max(var_0.a, abs(vec2<i32>(var_0.a.x, global2.d.a.x))));
    global0 = array<vec4<bool>, 27>();
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -1744f, any(global0[_wgslsmith_index_u32(36274u, 27u)]))), _wgslsmith_f_op_f32(-var_1.x), 400f);
    var var_3 = func_6(func_5(global2.a.x, Struct_3(func_1(var_2, Struct_4(global2.a, -1170f, Struct_3(global2.c.a, Struct_2(global2.c.a.b)), global2.c.b), _wgslsmith_mod_u32(4294967295u, u_input.a), Struct_2(vec2<i32>(1i, var_2.a.x))), Struct_2(var_2.a)), global2.c.b), min(abs(-39621i), 0i), global1[_wgslsmith_index_u32(u_input.a, 32u)], global2.a);
    var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.a.x, 416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(967f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.a)), _wgslsmith_f_op_vec3_f32(ceil(var_3.a)), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(max(global2.b, -237f)), -231f, -959f), _wgslsmith_mod_u32(var_3.c.a.a, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 14515u, 0u), vec3<u32>(global2.c.a.a, 103459u, 9330u)), vec3<u32>(_wgslsmith_mod_u32(u_input.a, 7853u), ~56317u, global2.c.a.a))), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, global2.c.a.a & 23193u, 15441u), firstTrailingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(54928u, u_input.a, global2.c.a.a), vec3<u32>(global2.c.a.a, u_input.a, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -1782f)));
}

