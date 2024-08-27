struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27>;

var<private> global1: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false));

var<private> global2: array<i32, 12>;

var<private> global3: array<f32, 1> = array<f32, 1>(1402f);

var<private> global4: array<Struct_3, 6>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_add_u32(0u, u_input.a.x) ^ 0u, 34400u ^ (u_input.a.x << (firstLeadingBit(u_input.a.x) % 32u))), 27u)], ~_wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 27u)], vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], -18405i, reverseBits(2147483647i), -29671i)));
    global2 = array<i32, 12>();
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2495f))), _wgslsmith_f_op_f32(888f - 2279f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~1u, 1u)] + _wgslsmith_f_op_f32(f32(-1f) * -2527f)))))));
    let var_2 = Struct_2((firstTrailingBit(1i) >> (1u % 32u)) ^ global2[_wgslsmith_index_u32(u_input.a.x, 12u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], -1128f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -549f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(193f)) * 775f))), _wgslsmith_add_vec2_u32(vec2<u32>(countOneBits(77630u), ~max(u_input.a.x, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, _wgslsmith_sub_u32(4294967295u, u_input.a.x)), vec2<u32>(u_input.a.x & 0u, 40874u))));
    let var_3 = _wgslsmith_div_f32(654f, 127f);
    return ~select(vec4<u32>(~32077u, _wgslsmith_div_u32(u_input.a.x, 52639u), min(u_input.a.x, 3640u), ~431u) & ~vec4<u32>(var_2.c.x, 46404u, 120851u, 7052u), ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 1u, 43422u)), vec4<u32>(var_2.c.x, var_2.c.x, u_input.a.x, var_2.c.x)), -abs(global2[_wgslsmith_index_u32(u_input.a.x, 12u)]) < (var_0.x ^ -1i));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    var var_0 = u_input.a.x;
    global1 = array<vec4<bool>, 25>();
    var var_1 = Struct_2(arg_1.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-572f, global3[_wgslsmith_index_u32(19598u, 1u)], -894f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-915f, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], 1001f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2597f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(16156u, 1u)] - 493f), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(52007u, u_input.a.x), 1u)]))), ~u_input.a.xy);
    var var_2 = -abs(firstLeadingBit((global0[_wgslsmith_index_u32(59433u, 27u)] & arg_2.a) | vec4<i32>(19537i, arg_1.x, -68244i, var_1.a)));
    let var_3 = countOneBits((0u & var_1.c.x) & max(_wgslsmith_dot_vec4_u32(func_3(), select(vec4<u32>(1u, u_input.a.x, var_1.c.x, u_input.a.x), vec4<u32>(10059u, 1u, 31200u, 119723u), arg_3.x)), 1u));
    return var_1.c.x;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<i32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = select(arg_3, firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, ~u_input.a), ~(~u_input.a))), vec3<bool>(arg_1, ~(-33497i) <= arg_2.x, arg_1));
    global0 = array<vec4<i32>, 27>();
    global0 = array<vec4<i32>, 27>();
    var var_1 = u_input.a.x;
    global0 = array<vec4<i32>, 27>();
    return Struct_1(_wgslsmith_div_vec4_i32(abs(vec4<i32>(global2[_wgslsmith_index_u32(func_2(true, arg_2, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<bool>(arg_1, arg_1, true)), 12u)], arg_2.x, countOneBits(global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), 1i)), -global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(101385u, arg_3.x), 27u)]));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> f32 {
    global0 = array<vec4<i32>, 27>();
    global4 = array<Struct_3, 6>();
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(arg_2.a, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x | arg_0.c.x, 12u)], _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(1u, 12u)], -7398i), _wgslsmith_mod_i32(-1i, global2[_wgslsmith_index_u32(4294967295u, 12u)]), arg_2.a.x & arg_0.a)), _wgslsmith_mod_i32(func_1(_wgslsmith_f_op_f32(-arg_1), true, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.a.x, 0i), vec2<i32>(arg_0.a, arg_2.a.x)), u_input.a).a.x, _wgslsmith_dot_vec2_i32(func_1(arg_0.b.x, true, vec2<i32>(arg_0.a, arg_0.a), u_input.a).a.zy, ~vec2<i32>(1i, arg_2.a.x)))) | arg_2.a.x;
    var var_1 = -global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(func_3().x, abs(76703u)), ~arg_0.c), 12u)];
    let var_2 = arg_0.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.x))), arg_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 1>();
    var var_0 = _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, 21850u), firstLeadingBit(~_wgslsmith_add_u32(u_input.a.x, 4294967295u))) <= ~(_wgslsmith_mult_u32(firstLeadingBit(53023u), u_input.a.x) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 37602u), vec4<u32>(1u, 1u, u_input.a.x, 1u)));
    let var_1 = vec4<i32>(select(abs(global2[_wgslsmith_index_u32(~(u_input.a.x | u_input.a.x), 12u)]), select(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], -1i, global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec3<i32>(51440i, 35847i, global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec3<i32>(global2[_wgslsmith_index_u32(0u, 12u)], -11495i, global2[_wgslsmith_index_u32(u_input.a.x, 12u)])), _wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(1111u, 12u)], 6807i, global2[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<i32>(global2[_wgslsmith_index_u32(11383u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)]))), 22593i, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(59660u, 1u)]) > global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 45786u, 1u), vec4<u32>(u_input.a.x, 56373u, u_input.a.x, u_input.a.x)), 1u)]), true), 1800i, -global2[_wgslsmith_index_u32((_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) << (u_input.a.x % 32u)) ^ 1u, 12u)], 2147483647i);
    let var_2 = _wgslsmith_f_op_f32(func_4(Struct_2(-(~(-18878i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-666f, -1982f, _wgslsmith_f_op_f32(629f - -441f))), u_input.a.xz), -459f, func_1(-1276f, true, _wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, -35888i), var_1.xy << (u_input.a.xx % vec2<u32>(32u))), (~vec3<u32>(30270u, u_input.a.x, u_input.a.x) ^ ~vec3<u32>(u_input.a.x, 136965u, u_input.a.x)) >> (_wgslsmith_add_vec3_u32(~u_input.a, vec3<u32>(1u, 4294967295u, 33868u)) % vec3<u32>(32u))), -_wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -7229i, ~global2[_wgslsmith_index_u32(52803u, 12u)]), min(_wgslsmith_add_i32(-1i, 36068i), ~var_1.x))));
    global4 = array<Struct_3, 6>();
    let var_3 = vec2<u32>(~u_input.a.x, ~u_input.a.x);
    global0 = array<vec4<i32>, 27>();
    var var_4 = Struct_2(1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, _wgslsmith_f_op_f32(exp2(var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1587f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-552f, -901f, var_2)))))), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xzy, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-364f, -1266f) - _wgslsmith_f_op_f32(-218f - global3[_wgslsmith_index_u32(1u, 1u)])), _wgslsmith_div_f32(730f, _wgslsmith_f_op_f32(round(-1000f)))))), var_2);
}

